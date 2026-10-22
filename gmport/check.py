import json
import os
import re

from .config import ROOT, game_dir


def signatures():
    text = open(os.path.join(ROOT, 'gm', 'gm.gd'), encoding='utf-8').read() + open(os.path.join(ROOT, 'gm', 'gm_lib.gd'), encoding='utf-8').read()
    sigs = {}
    for m in re.finditer(r'^func (f_\w+)\((.*?)\):', text, re.M):
        params = [p.strip() for p in m.group(2).split(',') if p.strip()]
        required = len([p for p in params if '=' not in p])
        sigs[m.group(1)] = (required, len(params))
    return sigs


def split_args(text, start):
    """Return the number of top-level arguments of the call whose '(' is at start."""
    depth = 0
    quote = None
    count = 0
    seen = False
    i = start
    while i < len(text):
        c = text[i]
        if quote:
            if c == '\\':
                i += 1
            elif c == quote:
                quote = None
        elif c in '"\'':
            quote = c
            seen = True
        elif c in '([{':
            depth += 1
            if depth > 1:
                seen = True
        elif c in ')]}':
            depth -= 1
            if depth == 0:
                return (count + 1) if seen else 0
        elif c == ',' and depth == 1:
            count += 1
            seen = True
        elif not c.isspace() and depth >= 1:
            seen = True
        i += 1
    return count


def run(slug):
    gdir = game_dir(slug)
    sigs = signatures()
    called = json.load(open(os.path.join(gdir, 'called_builtins.json')))
    missing = [c for c in called if c not in sigs]
    bad = {}
    files = [os.path.join(gdir, 'scripts.gd')]
    objdir = os.path.join(gdir, 'objects')
    files += [os.path.join(objdir, f) for f in os.listdir(objdir) if f.endswith('.gd')]
    for path in files:
        text = open(path, encoding='utf-8').read()
        for m in re.finditer(r'GM\.(f_\w+)\(', text):
            name = m.group(1)
            if name not in sigs:
                continue
            n = split_args(text, m.end() - 1)
            lo, hi = sigs[name]
            if n < lo or n > hi:
                bad.setdefault((name, n, lo, hi), 0)
                bad[(name, n, lo, hi)] += 1
    print('builtins used: %d, missing in runtime: %s' % (len(called), missing))
    for (name, n, lo, hi), c in sorted(bad.items()):
        print('  wrong argument count: %s called with %d (takes %d..%d) x%d' % (name, n, lo, hi, c))
    return missing, bad
