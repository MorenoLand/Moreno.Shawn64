import os
import shutil

from .config import game_dir

RENAME = {'.png': '.gmpng', '.wav': '.gmwav', '.ogg': '.gmogg', '.mp3': '.gmmp3'}


def sync(src, dst):
    os.makedirs(dst, exist_ok=True)
    want = set()
    for fn in os.listdir(src):
        sp = os.path.join(src, fn)
        b, e = os.path.splitext(fn)
        name = b + RENAME.get(e, e)
        want.add(name)
        dp = os.path.join(dst, name)
        if os.path.isdir(sp):
            sync(sp, dp)
        elif not os.path.exists(dp) or open(sp, 'rb').read() != open(dp, 'rb').read():
            shutil.copyfile(sp, dp)
    for fn in os.listdir(dst):
        if fn not in want:
            p = os.path.join(dst, fn)
            if os.path.isdir(p):
                shutil.rmtree(p)
            else:
                os.remove(p)


def run(slug):
    gdir = game_dir(slug)
    sync(os.path.join(gdir, '_stage'), os.path.join(gdir, 'assets'))
    shutil.rmtree(os.path.join(gdir, '_stage'))
