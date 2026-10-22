import os
import shutil
import subprocess
import time

from .config import ROOT, redot, scratch_dir, game_dir

PROJECT_FILES = ['project.godot', 'export_presets.cfg']
PROJECT_DIRS = ['gm', 'games']


def sync_scratch(only=None):
    dst = scratch_dir()
    os.makedirs(dst, exist_ok=True)
    for name in PROJECT_DIRS:
        target = os.path.join(dst, name)
        if os.path.isdir(target):
            shutil.rmtree(target)
        if name == 'games' and only:
            os.makedirs(target)
            shutil.copyfile(os.path.join(ROOT, name, 'index.json'), os.path.join(target, 'index.json'))
            shutil.copytree(os.path.join(ROOT, name, only), os.path.join(target, only))
        else:
            shutil.copytree(os.path.join(ROOT, name), target)
    for name in PROJECT_FILES:
        src = os.path.join(ROOT, name)
        if os.path.exists(src):
            shutil.copyfile(src, os.path.join(dst, name))
    if not os.path.isdir(os.path.join(dst, '.godot')):
        subprocess.call([redot(), '--headless', '--path', dst, '--import'], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    return dst


def run_game(slug, steps=0, shots=(), clicks=(), holds=(), hold_from=0, spawns=(), prof=False, overlay=False,
             touch=False, fast=True, report=0, visible_offscreen=None, extra=()):
    dst = sync_scratch(slug)
    needs_gpu = bool(shots) if visible_offscreen is None else visible_offscreen
    cmd = [redot(), '--path', dst]
    if needs_gpu:
        w, h = 800, 600
        cmd += ['--rendering-driver', 'opengl3', '--audio-driver', 'Dummy', '--minimized', '--position', '-9000,-9000', '--resolution', '%dx%d' % (w, h)]
    else:
        cmd += ['--headless']
    cmd += ['--'] + (['--game=' + slug] if slug else [])
    if steps:
        cmd.append('--steps=%d' % steps)
    if fast:
        cmd.append('--fast')
    if prof:
        cmd.append('--prof')
    if overlay:
        cmd.append('--overlay')
    if touch:
        cmd.append('--touch')
    if report:
        cmd.append('--report=%d' % report)
    for s in shots:
        step, path = s.split(':', 1)
        cmd.append('--shot=%s@%s' % (step, os.path.abspath(path)))
    for c in clicks:
        step, xy = c.split(':', 1)
        cmd.append('--click=%s@%s' % (step, xy))
    if holds:
        cmd.append('--hold=' + ','.join(str(h) for h in holds))
        cmd.append('--holdfrom=%d' % hold_from)
    for sp in spawns:
        step, obj, n = sp.split(':')
        cmd.append('--spawn=%s@%s@%s' % (step, obj, n))
    cmd += list(extra)
    return stream(cmd)


def stream(cmd, limit=900):
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, errors='replace')
    start = time.time()
    for line in proc.stdout:
        line = line.rstrip()
        if line and not line.startswith('[ ') and not line.startswith(''):
            print(line, flush=True)
        if 'Parse Error' in line or 'Failed to load script' in line or time.time() - start > limit:
            print('stopping: the game could not start (see above)', flush=True)
            proc.kill()
            return 1
    return proc.wait()


def export_web(out_dir=None):
    dst = sync_scratch()
    out_dir = os.path.abspath(out_dir or os.path.join(ROOT, 'dist', 'web'))
    tmp = os.path.join(dst, 'export', 'web')
    if os.path.isdir(tmp):
        shutil.rmtree(tmp)
    os.makedirs(tmp)
    rc = stream([redot(), '--headless', '--path', dst, '--export-release', 'Web', os.path.join(tmp, 'index.html')])
    if os.path.exists(os.path.join(tmp, 'index.html')):
        if os.path.isdir(out_dir):
            shutil.rmtree(out_dir)
        shutil.copytree(tmp, out_dir)
        print('exported to', out_dir)
    return rc
