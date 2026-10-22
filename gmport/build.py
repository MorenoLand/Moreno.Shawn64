import json
import os
import re
import shutil
import sys

from . import gmlparse as gml_parse
from . import dnd
from .gmlcodegen import Game, TypeInfer, Gen, Ctx, q, num, walk, PAUSING
from .gmltables import CONSTANTS, INSTANCE_VARS, GLOBAL_VARS
from .config import ROOT
from .config import load_game_config, game_build_dir, game_dir

def event_method(etype, number):
    if etype == 0:
        return 'ev_create'
    if etype == 1:
        return 'ev_destroy'
    if etype == 2:
        return 'ev_alarm_%d' % number
    if etype == 3:
        return {0: 'ev_step', 1: 'ev_stepbegin', 2: 'ev_stepend'}[number]
    if etype == 4:
        return 'ev_col_%d' % number
    if etype == 5:
        return 'ev_key_%d' % number
    if etype == 6:
        return 'ev_mouse_%d' % number
    if etype == 7:
        return 'ev_other_%d' % number
    if etype == 8:
        return 'ev_draw'
    if etype == 9:
        return 'ev_keypress_%d' % number
    if etype == 10:
        return 'ev_keyrelease_%d' % number
    raise ValueError(etype)


def write_if_changed(path, text):
    data = text.encode('utf-8')
    if os.path.exists(path) and open(path, 'rb').read() == data:
        return
    open(path, 'wb').write(data)


def sync_dir(src, dst):
    os.makedirs(dst, exist_ok=True)
    keep = set()
    for fn in os.listdir(src):
        keep.add(fn)
        sp = os.path.join(src, fn)
        dp = os.path.join(dst, fn)
        if os.path.isdir(sp):
            sync_dir(sp, dp)
        elif not os.path.exists(dp) or open(sp, 'rb').read() != open(dp, 'rb').read():
            shutil.copyfile(sp, dp)




def detect_size(data):
    order = data.get('room_order') or []
    rooms = data['rooms']
    first = rooms[order[0]] if order and rooms[order[0]] else next(r for r in rooms if r)
    if first['enable_views']:
        for v in first['views']:
            if v['visible']:
                return [v['port_w'], v['port_h']]
    return [first['width'], first['height']]


def build(slug, extracted=None):
    extracted = extracted or os.path.join(game_build_dir(slug), 'extracted')
    outdir = game_dir(slug)
    assets_src = extracted
    cfg = load_game_config(slug)
    os.makedirs(outdir, exist_ok=True)
    data = json.load(open(os.path.join(extracted, 'game.json')))
    game = Game(data)
    infer = TypeInfer(game)

    objects = [o for o in data['objects'] if o]
    obj_by_id = {o['id']: o for o in objects}
    timelines = {t['id']: t for t in data['timelines'] if t}
    rooms = [r for r in data['rooms'] if r]

    sources = []
    dnd_ctx = {'scripts': {x['id']: x['name'] for x in data['scripts'] if x}}

    def add(label, src, kind, ref):
        for secret in cfg.get('redact', []):
            src = src.replace(secret, '')
        try:
            ast = gml_parse.parse(src)
        except Exception as ex:
            print('warning: code in %s does not parse (%s); replaced with an empty block' % (label, str(ex)[:60]))
            ast = gml_parse.parse('')
        infer.collect(ast, ref if kind == 'script' else None)
        sources.append((label, kind, ref, ast))
        return ast

    ev_ast = {}
    for o in objects:
        for e in o['events']:
            code = dnd.to_gml(e['actions'], dnd_ctx)
            ev_ast[(o['id'], e['type'], e['number'])] = add('%s:%d:%d' % (o['name'], e['type'], e['number']), code, 'event', None)
    tl_ast = {}
    for t in timelines.values():
        for m in t['moments']:
            tl_ast[(t['id'], m['position'])] = add('tl:%s:%d' % (t['name'], m['position']), dnd.to_gml(m['actions'], dnd_ctx), 'event', None)
    script_ast = {}
    for s in data['scripts']:
        if s:
            script_ast[s['name']] = add('script:' + s['name'], s['code'], 'script', s['name'])
    room_code_ast = {}
    inst_code_ast = {}
    for r in rooms:
        if r['creation_code'].strip():
            room_code_ast[r['id']] = add('room:' + r['name'], r['creation_code'], 'event', None)
        for k, ins in enumerate(r['instances']):
            if ins['creation_code'].strip():
                inst_code_ast[(r['id'], k)] = add('inst:%s:%d' % (r['name'], k), ins['creation_code'], 'event', None)

    infer.solve()
    changed = True
    while changed:
        changed = False
        for name, ast in script_ast.items():
            if name in game.pausing_scripts:
                continue
            found = []

            def v(n, found=found):
                if n[0] == 'call' and (n[1] in PAUSING or n[1] in game.pausing_scripts):
                    found.append(1)
            walk(ast, v)
            if found:
                game.pausing_scripts.add(name)
                changed = True
    gen = Gen(game, infer)

    def gen_body(ast, ctx, ind=1):
        gen.ctx = ctx
        out = []
        gen.stmt(ast, ind, out)
        return out

    objdir = os.path.join(outdir, 'objects')
    os.makedirs(objdir, exist_ok=True)

    chains = {}

    def chain(o):
        if o['id'] in chains:
            return chains[o['id']]
        p = o['parent']
        c = [o['id']]
        if p in obj_by_id and p != o['id']:
            c = c + chain(obj_by_id[p])
        chains[o['id']] = c
        return c

    for o in objects:
        chain(o)
    order = sorted(objects, key=lambda o: len(chains[o['id']]))
    declared_by = {}
    own_events = {}
    for o in order:
        gen.used_vars = set()
        evs = {}
        for e in o['events']:
            ctx = Ctx('event', 'self', declared=set(), method=event_method(e['type'], e['number']))
            body = gen_body(ev_ast[(o['id'], e['type'], e['number'])], ctx)
            evs[event_method(e['type'], e['number'])] = body
        anc = set()
        for pid in chains[o['id']][1:]:
            anc |= declared_by[pid]
        mine = gen.used_vars - anc
        declared_by[o['id']] = anc | mine
        parent = o['parent'] if o['parent'] in obj_by_id and o['parent'] != o['id'] else None
        lines = ['extends "res://games/%s/%s"' % (slug, 'objects/o%d.gd' % parent if parent is not None else 'scripts.gd')]
        for v in sorted(mine):
            if v in infer.vartype and (v in game.inst_arrays or v + '[]' in infer.vartype):
                init = '{}'
            elif infer.vartype.get(v) == 'S':
                init = '""'
            else:
                init = '0.0'
            lines.append('var v_%s = %s' % (v, init))
        for m, body in evs.items():
            lines.append('func %s():' % m)
            lines.extend(body if body else ['\tpass'])
        write_if_changed(os.path.join(objdir, 'o%d.gd' % o['id']), '\n'.join(lines) + '\n')
        own_events[o['id']] = o['events']

    sl = ['extends "res://gm/gm_inst.gd"']
    for name, s in game.scripts.items():
        params = ', '.join('argument%d = 0.0' % k for k in range(16))
        sl.append('func script_%s(%s):' % (name, params))
        ctx = Ctx('script', 'self', declared=None)
        gen.used_vars = set()
        body = gen_body(script_ast[name], ctx)
        sl.extend(body)
        sl.append('\treturn 0.0')
    for (tid, pos), ast in tl_ast.items():
        sl.append('func tl_%d_%d():' % (tid, pos))
        ctx = Ctx('event', 'self', declared=None)
        body = gen_body(ast, ctx)
        sl.extend(body if body else ['\tpass'])
    for rid, ast in room_code_ast.items():
        sl.append('func rc_%d():' % rid)
        ctx = Ctx('event', 'self', declared=None)
        sl.extend(gen_body(ast, ctx) or ['\tpass'])
    for (rid, k), ast in inst_code_ast.items():
        sl.append('func ic_%d_%d():' % (rid, k))
        ctx = Ctx('event', 'self', declared=None)
        sl.extend(gen_body(ast, ctx) or ['\tpass'])
    write_if_changed(os.path.join(outdir, 'scripts.gd'), '\n'.join(sl) + '\n')

    table = []
    for o in range(max(x['id'] for x in objects) + 1):
        if o not in obj_by_id:
            table.append('null')
            continue
        ob = obj_by_id[o]
        effective = {}
        for cid in reversed(chains[o]):
            for e in obj_by_id[cid]['events']:
                if e['type'] == 4:
                    key = 'col_%d' % e['number']
                else:
                    key = event_method(e['type'], e['number'])
                effective[key] = (cid, event_method(e['type'], e['number']), e['type'], e['number'])
        evlist = json.dumps(sorted([[k] + list(v[1:]) for k, v in effective.items()]))
        table.append(json.dumps({
            'name': ob['name'], 'sprite': ob['sprite'], 'solid': ob['solid'], 'visible': ob['visible'],
            'depth': ob['depth'], 'persistent': ob['persistent'], 'parent': ob['parent'] if ob['parent'] in obj_by_id else -1,
            'mask': ob['mask'], 'events': [[k] + list(v[1:]) for k, v in sorted(effective.items())],
            'chain': chains[o]}))
    meta = {
        'objects': [json.loads(t) if t != 'null' else None for t in table],
        'globals': sorted(game.global_names),
        'global_arrays': sorted(game.global_arrays),
        'unknown_calls': game.unknown_calls,
    }
    gd = ['extends RefCounted']
    gd.append('const OBJECT_COUNT = %d' % len(table))
    objs = ['preload("res://games/%s/objects/o%d.gd")' % (slug, o) if o in obj_by_id else 'null' for o in range(len(table))]
    gd.append('const SCRIPTS = [\n\t' + ',\n\t'.join(objs) + '\n]')
    write_if_changed(os.path.join(outdir, 'object_scripts.gd'), '\n'.join(gd) + '\n')

    rooms_out = []
    for r in data['rooms']:
        rooms_out.append(r)
    out = dict(data)
    out['rooms'] = rooms_out
    out['objects'] = meta['objects']
    out['globals'] = meta['globals']
    out['global_arrays'] = meta['global_arrays']
    out['room_code'] = sorted(room_code_ast)
    out['inst_code'] = sorted('%d_%d' % k for k in inst_code_ast)
    out['timeline_moments'] = {str(tid): sorted(m['position'] for m in t['moments']) for tid, t in timelines.items()}
    out['scripts'] = [s['name'] if s else None for s in data['scripts']]
    out['auto_answers'] = cfg.get('auto_answers', {})
    out['touch'] = cfg.get('touch', [])
    out['title'] = cfg.get('title', slug)
    out['size'] = cfg.get('size') or detect_size(data)
    out['credit'] = cfg.get('credit', 'S64 Games')
    consts = dict((k, float(v)) for k, v in CONSTANTS.items())
    for rname, (rkind, rid) in game.res.items():
        consts[rname] = float(rid)
    globals_map = {}
    for gname, (code, gtype) in GLOBAL_VARS.items():
        m = re.match(r'^GM\.(\w+)\[(\d+)\]$', code)
        m2 = re.match(r'^GM\.(\w+)\(\)$', code)
        m3 = re.match(r'^GM\.(\w+)$', code)
        if m:
            globals_map[gname] = [m.group(1), int(m.group(2))]
        elif m2:
            globals_map[gname] = [m2.group(1), 'call']
        elif m3:
            globals_map[gname] = [m3.group(1), None]
        else:
            lit = code.strip()
            consts[gname] = lit.strip('"') if lit.startswith('"') else float(lit)
    out['gml_constants'] = consts
    out['gml_globals'] = globals_map
    out['gml_instance_vars'] = sorted(INSTANCE_VARS)
    file_index = []
    exe_rel = cfg.get('exe')
    if exe_rel and cfg.get('files'):
        base = os.path.dirname(os.path.join(ROOT, exe_rel))
        file_root = os.path.join(outdir, '_files_stage')
        for item in cfg['files']:
            src = os.path.join(base, item)
            if os.path.isfile(src):
                pairs = [(src, item)]
            else:
                pairs = []
                for dp, dn, fn in os.walk(src):
                    for f in fn:
                        full = os.path.join(dp, f)
                        pairs.append((full, os.path.relpath(full, base)))
            for full, rel in pairs:
                rel = rel.replace('\\', '/')
                dst = os.path.join(file_root, rel + '.gmfile')
                os.makedirs(os.path.dirname(dst), exist_ok=True)
                shutil.copyfile(full, dst)
                file_index.append(rel)
    out['files'] = file_index
    os.makedirs(outdir, exist_ok=True)
    raw_json = json.dumps(out)
    stage = os.path.join(outdir, '_stage')
    if os.path.isdir(stage):
        shutil.rmtree(stage)
    for sub in ('sprites', 'sounds', 'backgrounds', 'fonts'):
        if os.path.isdir(os.path.join(assets_src, sub)):
            shutil.copytree(os.path.join(assets_src, sub), os.path.join(stage, sub))
    for snd in out['sounds']:
        if snd and snd['name'] in cfg['exclude_sounds'] and 'file' in snd:
            path = os.path.join(stage, snd['file'])
            if os.path.exists(path):
                os.remove(path)
            del snd['file']
            snd['excluded'] = True
    raw_json = json.dumps(out)
    os.makedirs(stage, exist_ok=True)
    files_stage = os.path.join(outdir, '_files_stage')
    if os.path.isdir(files_stage):
        shutil.copytree(files_stage, os.path.join(stage, 'files'))
        shutil.rmtree(files_stage)
    open(os.path.join(stage, 'data.raw.json'), 'w').write(raw_json)
    print('unknown calls:', game.unknown_calls)
    called = set()
    for p in os.listdir(objdir):
        txt = open(os.path.join(objdir, p), encoding='utf-8').read()
        called |= set(re.findall(r'GM\.(f_\w+)', txt))
    txt = open(os.path.join(outdir, 'scripts.gd'), encoding='utf-8').read()
    called |= set(re.findall(r'GM\.(f_\w+)', txt))
    write_if_changed(os.path.join(outdir, 'called_builtins.json'), json.dumps(sorted(called)))
    print(len(called), 'builtins used')


