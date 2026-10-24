"""Reader for Game Maker 4.1 to 4.3 executables.

The data block at the end of the runner is a substitution cipher, except for the
image data, which is stored in the clear. Both copies are read side by side.
"""
import json
import os
import struct

from .extract import Reader, png, safe, swap_table
from .extract53 import colorkey, decode_bmp

VERSIONS = (
    (b'Game_Maker 4.1', 0x10C8E0, 410),
    (b'Game_Maker 4.2', 0x10C8E0, 420),
    (b'Game_Maker 4.3', 0x124F80, 430),
)

# Action numbers used by the version 4 runner: (name, kind, question).
# kind: 0 normal, 1 start block, 2 end block, 3 else, 5 repeat
ACTIONS = {
    1: ('action_move', 0, False),
    2: ('action_reverse_xdir', 0, False),
    3: ('action_reverse_ydir', 0, False),
    4: ('action_move_to', 0, False),
    5: ('action_move_random', 0, False),
    6: ('action_bounce', 0, False),
    7: ('action_set_hspeed', 0, False),
    8: ('action_set_vspeed', 0, False),
    9: ('action_set_gravity', 0, False),
    10: ('action_set_friction', 0, False),
    11: ('action_set_motion', 0, False),
    12: ('action_set_alarm', 0, False),
    13: ('action_create_object', 0, False),
    14: ('action_kill_object', 0, False),
    15: ('action_change_object', 0, False),
    16: ('action_kill_position', 0, False),
    17: ('action_sound', 0, False),
    18: ('action_message', 0, False),
    19: ('action_set_score', 0, False),
    20: ('action_highscore_show', 0, False),
    21: ('action_another_room', 0, False),
    22: ('action_end_game', 0, False),
    23: ('action_sleep', 0, False),
    24: ('exit', 4, False),
    25: ('action_if_empty', 0, True),
    26: ('action_if_number', 0, True),
    27: ('action_if_object', 0, True),
    28: ('action_if_collision', 0, True),
    29: ('action_if_question', 0, True),
    30: ('action_if', 0, True),
    31: ('else', 3, False),
    32: ('start', 1, False),
    33: ('end', 2, False),
    34: ('code', 0, False),
    35: ('action_set_variable', 0, False),
    36: ('action_draw_sprite', 0, False),
    37: ('action_draw_text', 0, False),
    38: ('gm4_font', 0, False),
    39: ('action_end_sound', 0, False),
    40: ('action_snap', 0, False),
    41: ('action_previous_room', 0, False),
    42: ('action_next_room', 0, False),
    43: ('action_execute_script', 0, False),
    46: ('action_draw_line', 0, False),
    48: ('action_color', 0, False),
    49: ('action_move_start', 0, False),
    50: ('action_move_point', 0, False),
    51: ('gm4_sprite', 0, False),
    52: ('action_set_life', 0, False),
    53: ('action_current_room', 0, False),
    55: ('action_if_dice', 0, True),
    56: ('action_if_sound', 0, True),
    59: ('repeat', 5, False),
    57: ('action_save_game', 0, False),
    58: ('action_load_game', 0, False),
    60: ('action_restart_game', 0, False),
    61: ('action_highscore_clear', 0, False),
    63: ('action_if_mouse', 0, True),
    64: ('action_if_aligned', 0, True),
    67: ('action_path', 0, False),
    69: ('draw_variable', 0, False),
}


UNKNOWN = {}
USED = set()


def unique(kind, name):
    base = safe(name)
    k = (kind, base.lower())
    n = 1
    while k in USED:
        n += 1
        k = (kind, '%s_%d' % (base.lower(), n))
    USED.add(k)
    return k[1] if n > 1 else base


def detect(b):
    for tag, key, ver in VERSIONS:
        if tag in b:
            return key, ver
    return None


class R4(Reader):
    def __init__(self, dec, raw):
        super().__init__(dec, 0)
        self.raw = raw

    def string(self):
        return self.blob().decode('latin-1')

    def image(self):
        raw = self.raw
        p = self.p
        typ = struct.unpack_from('<I', raw, p)[0]
        q = p + 4
        if typ == 0xFFFFFFFF:
            self.p = q
            return None
        if typ == 0:
            n = struct.unpack_from('<I', raw, q + 2)[0]
            data = raw[q:q + n]
            self.p = q + n
            return decode_bmp(data)
        if typ == 1:
            w, h = struct.unpack_from('<II', raw, q)
            q += 8
            out = bytearray(w * h * 4)
            for y in range(h):
                n = struct.unpack_from('<I', raw, q)[0]
                q += 4
                counts = raw[q:q + n]
                cols = raw[q + n:q + n * 4]
                q += n * 4
                x = 0
                for i in range(n):
                    c = (cols[i * 3:i * 3 + 3] + bytes(3))[:3]
                    for _ in range(counts[i]):
                        if x < w:
                            o = (y * w + x) * 4
                            out[o:o + 3] = c
                            out[o + 3] = 255
                            x += 1
            self.p = q
            return w, h, out
        if typ == 2:
            n = struct.unpack_from('<I', raw, q)[0]
            q += 4
            pal = raw[q:q + n * 3]
            q += n * 3
            w, h = struct.unpack_from('<II', raw, q)
            q += 8
            out = bytearray(w * h * 4)
            for y in range(h):
                m = struct.unpack_from('<I', raw, q)[0]
                q += 4
                x = 0
                for i in range(m):
                    cnt = raw[q + i]
                    idx = raw[q + m + i]
                    c = (pal[idx * 3:idx * 3 + 3] + bytes(3))[:3]
                    for _ in range(cnt):
                        if x < w:
                            o = (y * w + x) * 4
                            out[o:o + 3] = c
                            out[o + 3] = 255
                            x += 1
                q += m * 2
            self.p = q
            return w, h, out
        raise ValueError('image type %d' % typ)


def read_sounds(r, out):
    if r.u32() != 400:
        raise ValueError('sound list version')
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        s = {'id': i, 'name': r.string()}
        if r.u32() != 400:
            raise ValueError('sound version')
        kind = r.i32()
        s['kind'] = 0
        s['filetype'] = r.string()
        s['filename'] = ''
        data = r.blob() if kind != -1 else None
        r.skip(12)
        s['preload'] = True
        s['effects'] = 0
        s['volume'] = 1.0
        s['pan'] = 0.0
        if data:
            ext = s['filetype'] or '.wav'
            fn = 'sounds/%s%s' % (unique('snd', s['name']), ext)
            os.makedirs(os.path.join(out, 'sounds'), exist_ok=True)
            open(os.path.join(out, fn), 'wb').write(data)
            s['file'] = fn
        res.append(s)
    return res


def read_sprites(r, out):
    if r.u32() != 400:
        raise ValueError('sprite list version')
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        s = {'id': i, 'name': r.string()}
        if r.u32() != 400:
            raise ValueError('sprite version')
        s['width'] = r.u32()
        s['height'] = r.u32()
        s['bbox'] = {'left': r.i32(), 'right': r.i32(), 'bottom': r.i32(), 'top': r.i32()}
        s['transparent'] = r.boolean()
        s['bbox_type'] = r.u32()
        s['precise'] = r.boolean()
        r.skip(4)
        s['preload'] = not r.boolean()
        s['origin'] = [r.i32(), r.i32()]
        s['frames'] = []
        stem = unique('spr', s['name'])
        os.makedirs(os.path.join(out, 'sprites'), exist_ok=True)
        for k in range(r.u32()):
            img = r.image()
            if img is None:
                continue
            w, h, bgra = img
            if s['transparent']:
                colorkey(w, h, bgra)
            fn = 'sprites/%s_%d.png' % (stem, k)
            png(os.path.join(out, fn), w, h, bytes(bgra))
            s['frames'].append({'file': fn, 'w': w, 'h': h})
        if s['frames']:
            s['width'] = s['frames'][0]['w']
            s['height'] = s['frames'][0]['h']
        res.append(s)
    return res


def read_backgrounds(r, out):
    if r.u32() != 400:
        raise ValueError('background list version')
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        b = {'id': i, 'name': r.string()}
        if r.u32() != 400:
            raise ValueError('background version')
        b['width'] = r.u32()
        b['height'] = r.u32()
        b['transparent'] = r.boolean()
        r.skip(4)
        b['preload'] = not r.boolean()
        if r.boolean():
            img = r.image()
            if img is not None:
                w, h, bgra = img
                if b['transparent']:
                    colorkey(w, h, bgra)
                os.makedirs(os.path.join(out, 'backgrounds'), exist_ok=True)
                fn = 'backgrounds/%s.png' % unique('bg', b['name'])
                png(os.path.join(out, fn), w, h, bytes(bgra))
                b['file'] = fn
                b['width'] = w
                b['height'] = h
        res.append(b)
    return res


def read_paths(r):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        p = {'id': i, 'name': r.string()}
        r.u32()
        p['connection'] = r.u32()
        p['closed'] = r.u32() != 0
        p['precision'] = r.u32()
        p['points'] = [[r.f64(), r.f64(), r.f64()] for _ in range(r.u32())]
        res.append(p)
    return res


def read_scripts(r):
    if r.u32() != 400:
        raise ValueError('script list version')
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        s = {'id': i, 'name': r.string()}
        if r.u32() != 400:
            raise ValueError('script version')
        s['code'] = r.string()
        res.append(s)
    return res


def read_actions(r):
    out = []
    if r.u32() != 400:
        raise ValueError('action list version')
    for _ in range(r.u32()):
        r.u32()
        aid = r.u32()
        target = r.i32()
        relative = r.boolean()
        args = [r.string() for _ in range(r.u32())]
        if aid not in ACTIONS:
            UNKNOWN.setdefault(aid, []).append(args)
        name, kind, question = ACTIONS.get(aid, ('unknown_%d' % aid, 0, False))
        a = {'library': 0, 'action_id': aid, 'kind': kind, 'relative_flag': True, 'question': question,
             'has_target': target != -1, 'type': 0, 'name': name, 'code': '', 'params_used': len(args),
             'param_types': [], 'target': target, 'relative': relative, 'args': args,
             'negate': question and len(args) > 7 and args[7].strip() not in ('', '0')}
        if name == 'code':
            a['library'] = 1
            a['action_id'] = 603
        elif name == 'draw_variable':
            a['library'] = 1
            a['action_id'] = 613
        out.append(a)
    return out


def read_objects(r, old=0):
    if r.u32() != 400:
        raise ValueError('object list version')
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        o = {'id': i, 'name': r.string()}
        ov = r.u32()
        if ov != (400 if old else 430):
            raise ValueError('object version %d at %d' % (ov, r.p))
        o['sprite'] = r.i32()
        o['solid'] = r.boolean()
        o['visible'] = r.boolean()
        o['depth'] = r.i32()
        o['persistent'] = r.boolean()
        o['parent'] = r.i32()
        if o['parent'] < 0:
            o['parent'] = -1
        o['mask'] = r.i32()
        o['events'] = []
        for etype in range(old if old else r.u32() + 1):
            while True:
                num = r.i32()
                if num == -1:
                    break
                o['events'].append({'type': etype, 'number': num, 'actions': read_actions(r)})
        res.append(o)
    return res


def read_rooms(r):
    if r.u32() != 420:
        raise ValueError('room list version')
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        m = {'id': i, 'name': r.string()}
        if r.u32() != 420:
            raise ValueError('room version')
        m['caption'] = r.string()
        m['width'] = r.u32()
        m['height'] = r.u32()
        r.u32()
        r.u32()
        m['speed'] = r.u32()
        m['persistent'] = r.boolean()
        m['clear_color'] = r.u32()
        m['clear'] = r.u32() != 0
        m['creation_code'] = r.string()
        m['backgrounds'] = []
        for _ in range(r.u32()):
            m['backgrounds'].append({'visible': r.boolean(), 'foreground': r.boolean(), 'background': r.i32(),
                                     'x': r.i32(), 'y': r.i32(), 'tile_h': r.boolean(), 'tile_v': r.boolean(),
                                     'h_speed': r.i32(), 'v_speed': r.i32(), 'stretch': False})
        m['enable_views'] = r.boolean()
        m['views'] = []
        for _ in range(r.u32()):
            v = {'visible': r.boolean(), 'view_x': r.u32(), 'view_y': r.u32(), 'view_w': r.u32(), 'view_h': r.u32(),
                 'port_x': r.u32(), 'port_y': r.u32()}
            v['port_w'] = v['view_w']
            v['port_h'] = v['view_h']
            v['h_border'] = r.u32()
            v['v_border'] = r.u32()
            v['h_speed'] = r.i32()
            v['v_speed'] = r.i32()
            v['target'] = r.i32()
            m['views'].append(v)
        m['instances'] = []
        for _ in range(r.u32()):
            m['instances'].append({'x': r.i32(), 'y': r.i32(), 'object': r.i32(), 'id': r.i32(), 'creation_code': ''})
        m['tiles'] = []
        for _ in range(r.u32()):
            m['tiles'].append({'x': r.i32(), 'y': r.i32(), 'background': r.i32(), 'tile_x': r.i32(), 'tile_y': r.i32(),
                               'w': r.u32(), 'h': r.u32(), 'depth': r.i32(), 'id': r.i32()})
        res.append(m)
    return res


def parse(b, out):
    found = detect(b)
    if not found:
        raise ValueError('not a Game Maker 4 exe')
    USED.clear()
    key, ver = found
    seed = struct.unpack_from('<I', b, key)[0]
    table = bytes(swap_table(seed, 0))
    raw = b[key + 4:]
    r = R4(raw.translate(table), raw)
    os.makedirs(out, exist_ok=True)
    r.p = 0x20
    r.skip(0x3C)
    if ver >= 420:
        r.skip(0x10)
    if r.u32() > 0:
        r.image()
    r.skip(0x0C)
    r.blob()
    r.skip(0x14)
    if r.u32() == 2:
        r.image()
        r.image()
    if r.u32() > 0:
        r.image()
    r.blob()
    if ver >= 420:
        r.skip(0x10)
    game = {'gm_version': ver, 'pro': True, 'includes': [], 'settings': {}, 'constants': [], 'data_files': [],
            'fonts': [], 'timelines': []}
    game['sounds'] = read_sounds(r, out)
    game['sprites'] = read_sprites(r, out)
    game['backgrounds'] = read_backgrounds(r, out)
    if struct.unpack_from('<I', r.d, r.p)[0] == 420:
        game['paths'] = read_paths(r)
    else:
        game['paths'] = []
    game['scripts'] = read_scripts(r)
    if ver >= 430:
        game['objects'] = read_objects(r)
        game['rooms'] = read_rooms(r)
    else:
        mark = r.p
        err = None
        for old in (10, 9, 11, 8, 12):
            r.p = mark
            try:
                game['objects'] = read_objects(r, old)
                game['rooms'] = read_rooms(r)
                break
            except Exception as ex:
                err = ex
        else:
            raise err
    game['room_order'] = [m['id'] for m in game['rooms'] if m]
    game['last_instance_id'] = max([i['id'] for m in game['rooms'] if m for i in m['instances']] + [100000])
    game['last_tile_id'] = max([t['id'] for m in game['rooms'] if m for t in m['tiles']] + [10000000])
    game['trailing_bytes'] = len(r.d) - r.p
    return game


def extract(exe, out):
    game = parse(open(exe, 'rb').read(), out)
    json.dump(game, open(os.path.join(out, 'game.json'), 'w'), indent=1)
    return game
