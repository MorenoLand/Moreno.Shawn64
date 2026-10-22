import json
import os
import shutil
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CONFIG_DIR = os.path.join(ROOT, 'configs')
GAMES_DIR = os.path.join(ROOT, 'games')
DEFAULT_DLS = r'C:\Windows\System32\drivers\gm.dls'


def build_dir():
    return os.path.abspath(os.environ.get('S64_BUILD') or os.path.join(ROOT, '..', 's64-games-build'))


def game_build_dir(slug):
    d = os.path.join(build_dir(), slug)
    os.makedirs(d, exist_ok=True)
    return d


def game_dir(slug):
    return os.path.join(GAMES_DIR, slug)


def ffmpeg():
    return os.environ.get('FFMPEG') or shutil.which('ffmpeg') or 'ffmpeg'


def redot():
    return os.environ.get('REDOT') or shutil.which('redot') or shutil.which('godot') or 'godot'


def python_numpy():
    return os.environ.get('PY_NUMPY') or sys.executable


def dls_path():
    return os.environ.get('DLS_PATH') or DEFAULT_DLS


def scratch_dir():
    return os.path.abspath(os.environ.get('S64_SCRATCH') or os.path.join(build_dir(), 'scratch'))


def load_game_config(slug):
    p = os.path.join(CONFIG_DIR, slug + '.json')
    cfg = {}
    if os.path.exists(p):
        cfg = json.load(open(p, encoding='utf-8'))
    cfg.setdefault('title', slug)
    cfg.setdefault('credit', 'S64 Games')
    cfg.setdefault('touch', [])
    cfg.setdefault('auto_answers', {})
    cfg.setdefault('exclude_sounds', [])
    return cfg


def save_game_config(slug, cfg):
    os.makedirs(CONFIG_DIR, exist_ok=True)
    p = os.path.join(CONFIG_DIR, slug + '.json')
    text = json.dumps(cfg, indent=1)
    if not os.path.exists(p) or open(p, encoding='utf-8').read() != text:
        open(p, 'w', encoding='utf-8').write(text)
