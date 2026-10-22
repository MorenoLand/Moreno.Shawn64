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
            shutil.copytree(os.path.join(ROOT, name), target, ignore=shutil.ignore_patterns('.gdignore'))
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


def _pack_presets():
    text = open(os.path.join(ROOT, 'export_presets.cfg'), encoding='utf-8').read()
    return text.replace('exclude_filter="tools/*,source/*,StreetBikeFury/*,export/*"', 'exclude_filter="gm/*,source/*,export/*,dist/*"')


def export_web(out_dir=None, split=True, base_only=False):
    out_dir = os.path.abspath(out_dir or os.path.join(ROOT, 'dist', 'web'))
    work = os.path.join(scratch_dir(), 'web_base')
    if os.path.isdir(work):
        shutil.rmtree(work)
    os.makedirs(os.path.join(work, 'games'))
    for name in ('gm',):
        shutil.copytree(os.path.join(ROOT, name), os.path.join(work, name))
    for name in PROJECT_FILES:
        src = os.path.join(ROOT, name)
        if os.path.exists(src):
            shutil.copyfile(src, os.path.join(work, name))
    games = [g for g in sorted(os.listdir(os.path.join(ROOT, 'games'))) if os.path.isdir(os.path.join(ROOT, 'games', g))]
    shutil.copyfile(os.path.join(ROOT, 'games', 'index.json'), os.path.join(work, 'games', 'index.json'))
    if not split:
        for g in games:
            shutil.copytree(os.path.join(ROOT, 'games', g), os.path.join(work, 'games', g))
    stream([redot(), '--headless', '--path', work, '--import'])
    tmp = os.path.join(work, 'export', 'web')
    os.makedirs(tmp)
    rc = stream([redot(), '--headless', '--path', work, '--export-release', 'Web', os.path.join(tmp, 'index.html')])
    if not os.path.exists(os.path.join(tmp, 'index.html')):
        return rc or 1
    page = os.path.join(tmp, 'index.html')
    html = open(page, encoding='utf-8').read()
    hook = "setStatusMode('progress');\n\t\tengine.startGame({"
    if hook in html:
        pre = ("setStatusMode('progress');\n\t\tconst gameSlug = new URLSearchParams(window.location.search).get('game');\n"
               "\t\tif (gameSlug && /^[a-z0-9_]+$/.test(gameSlug)) {\n\t\t\tengine.preloadFile(gameSlug + '.pck', '/' + gameSlug + '.pck');\n\t\t}\n\t\tengine.startGame({")
        open(page, 'w', encoding='utf-8').write(html.replace(hook, pre))
    if split and not base_only:
        packdir = os.path.join(scratch_dir(), 'web_pack')
        os.makedirs(os.path.join(packdir, 'games'), exist_ok=True)
        shutil.copyfile(os.path.join(ROOT, 'project.godot'), os.path.join(packdir, 'project.godot'))
        os.makedirs(os.path.join(packdir, 'gm'), exist_ok=True)
        for fn in os.listdir(os.path.join(ROOT, 'gm')):
            shutil.copyfile(os.path.join(ROOT, 'gm', fn), os.path.join(packdir, 'gm', fn))
        open(os.path.join(packdir, 'export_presets.cfg'), 'w', encoding='utf-8').write(_pack_presets())
        for g in games:
            target = os.path.join(packdir, 'games', g)
            for old in os.listdir(os.path.join(packdir, 'games')):
                shutil.rmtree(os.path.join(packdir, 'games', old), ignore_errors=True)
            shutil.copytree(os.path.join(ROOT, 'games', g), target)
            if not os.path.isdir(os.path.join(packdir, '.godot')):
                stream([redot(), '--headless', '--path', packdir, '--import'])
            stream([redot(), '--headless', '--path', packdir, '--export-pack', 'Web', os.path.join(tmp, g + '.pck')])
            print('packed', g, flush=True)
    if base_only and os.path.isdir(out_dir):
        for fn in os.listdir(tmp):
            if not fn.endswith('.pck') or fn == 'index.pck':
                shutil.copyfile(os.path.join(tmp, fn), os.path.join(out_dir, fn))
    else:
        if os.path.isdir(out_dir):
            shutil.rmtree(out_dir)
        shutil.copytree(tmp, out_dir)
    print('exported to', out_dir)
    return 0
