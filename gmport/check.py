import json
import os
import re

from .config import ROOT, game_dir


def run(slug):
    gm = open(os.path.join(ROOT, 'gm', 'gm.gd'), encoding='utf-8').read()
    lib = open(os.path.join(ROOT, 'gm', 'gm_lib.gd'), encoding='utf-8').read()
    defined = set(re.findall(r'^func (f_\w+)', gm + lib, re.M))
    called = json.load(open(os.path.join(game_dir(slug), 'called_builtins.json')))
    missing = [c for c in called if c not in defined]
    print('builtins used: %d, missing in runtime: %s' % (len(called), missing))
    return missing
