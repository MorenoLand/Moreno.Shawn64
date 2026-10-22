#!/usr/bin/env python3
"""gmport: preserve Game Maker games by porting them to Godot / Redot (and the web).

Run `python gmport.py --help` for the list of commands. Each pipeline step can be run on its own:

  info      identify a Game Maker executable
  extract   unpack sprites, sounds, objects, rooms and code from an exe
  dump-code write all GML code of an extracted game to one text file
  build     translate GML to GDScript and write games/<slug>
  audio     convert sounds (8-bit/wma/midi) for the runtime
  assets    publish the staged assets into games/<slug>/assets
  check     list builtin functions the game uses that the runtime lacks
  index     rewrite games/index.json (the launcher menu)
  make      run extract, dump-code, build, audio, assets, check and index
  rebuild   like make, but from an already extracted game
  run       play-test a game headless or off-screen (screenshots, scripted input)
  export    export the whole project as a web build

Settings are read from environment variables: S64_BUILD (scratch folder), FFMPEG, REDOT, PY_NUMPY, DLS_PATH, S64_SCRATCH.
"""
import argparse
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from gmport import config


def slug_of(path):
    base = os.path.splitext(os.path.basename(path))[0].lower()
    return re.sub(r'[^a-z0-9]+', '_', base).strip('_') or 'game'


def cmd_info(a):
    from gmport import extract
    info = extract.detect(a.exe)
    for k, v in info.items():
        print('%-12s %s' % (k + ':', v))


def cmd_extract(a):
    from gmport import extract
    slug = a.slug or slug_of(a.exe)
    out = a.out or os.path.join(config.game_build_dir(slug), 'extracted')
    g = extract.extract(a.exe, out)
    for k in ('sounds', 'sprites', 'backgrounds', 'paths', 'scripts', 'fonts', 'timelines', 'objects', 'rooms'):
        print('%-12s %d' % (k, len([x for x in g[k] if x])))
    print('extracted to', out)


def cmd_dump_code(a):
    from gmport import dumpcode
    d = config.game_build_dir(a.slug)
    out = a.out or os.path.join(d, 'all_code.txt')
    dumpcode.run(os.path.join(d, 'extracted', 'game.json'), out)
    print('wrote', out)


def cmd_build(a):
    from gmport import build
    build.build(a.slug)


def cmd_audio(a):
    from gmport import audio
    audio.run(a.slug)


def cmd_assets(a):
    from gmport import assets
    assets.run(a.slug)


def cmd_check(a):
    from gmport import check
    check.run(a.slug)


def cmd_index(a):
    from gmport import index
    index.run()


def write_config(a, slug):
    cfg = config.load_game_config(slug)
    if getattr(a, 'title', None):
        cfg['title'] = a.title
    if getattr(a, 'credit', None):
        cfg['credit'] = a.credit
    if getattr(a, 'size', None):
        w, h = a.size.lower().split('x')
        cfg['size'] = [int(w), int(h)]
    if getattr(a, 'exclude_sound', None):
        cfg['exclude_sounds'] = sorted(set(cfg.get('exclude_sounds', [])) | set(a.exclude_sound))
    if getattr(a, 'exe', None):
        cfg['exe'] = a.exe.replace('\\', '/')
    config.save_game_config(slug, cfg)


def pipeline(a, slug, extract_first):
    from gmport import extract, dumpcode, build, audio, assets, check, index
    d = config.game_build_dir(slug)
    ex = os.path.join(d, 'extracted')
    write_config(a, slug)
    if extract_first:
        extract.extract(a.exe, ex)
    dumpcode.run(os.path.join(ex, 'game.json'), os.path.join(d, 'all_code.txt'))
    build.build(slug)
    audio.run(slug)
    assets.run(slug)
    check.run(slug)
    index.run()


def cmd_make(a):
    pipeline(a, a.slug or slug_of(a.exe), True)


def cmd_rebuild(a):
    pipeline(a, a.slug, False)


def cmd_run(a):
    from gmport import devtools
    return devtools.run_game(None if a.slug == 'launcher' else a.slug, steps=a.steps, shots=a.shot, clicks=a.click, holds=a.hold, hold_from=a.hold_from,
                             spawns=a.spawn, prof=a.prof, overlay=a.overlay, touch=a.touch, fast=not a.realtime, report=a.report)


def cmd_export(a):
    from gmport import devtools
    return devtools.export_web(a.out)


def main():
    p = argparse.ArgumentParser(prog='gmport', description='Port Game Maker games to Godot/Redot.', formatter_class=argparse.RawDescriptionHelpFormatter, epilog=__doc__)
    sub = p.add_subparsers(dest='cmd', required=True)

    s = sub.add_parser('info', help='identify a Game Maker executable')
    s.add_argument('exe')
    s.set_defaults(fn=cmd_info)

    s = sub.add_parser('extract', help='unpack an exe into JSON and asset files')
    s.add_argument('exe')
    s.add_argument('--slug')
    s.add_argument('-o', '--out')
    s.set_defaults(fn=cmd_extract)

    s = sub.add_parser('dump-code', help='write all GML code to one text file')
    s.add_argument('slug')
    s.add_argument('-o', '--out')
    s.set_defaults(fn=cmd_dump_code)

    for name, fn, h in (('build', cmd_build, 'translate GML to GDScript'), ('audio', cmd_audio, 'convert sounds and render MIDI'),
                        ('assets', cmd_assets, 'publish staged assets'), ('check', cmd_check, 'report missing runtime functions')):
        s = sub.add_parser(name, help=h)
        s.add_argument('slug')
        s.set_defaults(fn=fn)

    s = sub.add_parser('index', help='rewrite the launcher index')
    s.set_defaults(fn=cmd_index)

    def game_opts(s):
        s.add_argument('--title')
        s.add_argument('--credit')
        s.add_argument('--size', help='window size, e.g. 800x600 (default: from the first room)')
        s.add_argument('--exclude-sound', action='append', help='leave a sound out of the published assets (repeatable)')

    s = sub.add_parser('make', help='run the whole pipeline for an exe')
    s.add_argument('exe')
    s.add_argument('--slug')
    game_opts(s)
    s.set_defaults(fn=cmd_make)

    s = sub.add_parser('rebuild', help='re-run the pipeline from an already extracted game')
    s.add_argument('slug')
    game_opts(s)
    s.set_defaults(fn=cmd_rebuild)

    s = sub.add_parser('run', help='play-test a game headless or off-screen')
    s.add_argument('slug')
    s.add_argument('--steps', type=int, default=300, help='stop after this many game steps')
    s.add_argument('--shot', action='append', default=[], metavar='STEP:PATH', help='save a screenshot at a step (renders off-screen, minimized)')
    s.add_argument('--click', action='append', default=[], metavar='STEP:X,Y', help='click at a screen position at a step')
    s.add_argument('--hold', type=lambda v: [int(x) for x in v.split(',')], default=[], metavar='VK[,VK]', help='hold these key codes')
    s.add_argument('--hold-from', type=int, default=0, metavar='STEP')
    s.add_argument('--spawn', action='append', default=[], metavar='STEP:OBJECT:COUNT', help='create instances of an object near the player')
    s.add_argument('--prof', action='store_true', help='print a timing summary at the end')
    s.add_argument('--overlay', action='store_true', help='start with the F1 debug overlay')
    s.add_argument('--touch', action='store_true', help='show the touch controls')
    s.add_argument('--realtime', action='store_true', help='run at the game speed instead of as fast as possible')
    s.add_argument('--report', type=int, default=0, metavar='N', help='print game state every N steps')
    s.set_defaults(fn=cmd_run)

    s = sub.add_parser('export', help='export the project as a web build')
    s.add_argument('-o', '--out', help='output folder (default: dist/web)')
    s.set_defaults(fn=cmd_export)

    a = p.parse_args()
    if getattr(a, 'hold', None) is not None and isinstance(a.hold, list) and a.hold and isinstance(a.hold[0], list):
        a.hold = a.hold[0]
    rc = a.fn(a)
    sys.exit(rc if isinstance(rc, int) else 0)


if __name__ == '__main__':
    main()
