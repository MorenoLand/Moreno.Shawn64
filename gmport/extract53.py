"""Reader for Game Maker 5.3 / 5.3A executables."""
import json
import os
import shutil
import struct
import zlib

from .extract import Reader, actions, png, safe, swap_table

MAGIC_OFFSETS = (1250000, 1450000, 1500000)
PROBE = False


def decode_bmp(b):
    """Decode an uncompressed BMP file to (width, height, bgra bytes)."""
    off = struct.unpack_from('<I', b, 10)[0]
    hsize = struct.unpack_from('<I', b, 14)[0]
    w, h = struct.unpack_from('<ii', b, 18)
    planes, bpp = struct.unpack_from('<HH', b, 26)
    comp = struct.unpack_from('<I', b, 30)[0]
    ncol = struct.unpack_from('<I', b, 46)[0]
    top_down = h < 0
    h = abs(h)
    pal = []
    if bpp <= 8:
        n = ncol or (1 << bpp)
        p = 14 + hsize
        for i in range(n):
            pal.append(b[p + i * 4:p + i * 4 + 3])
    stride = ((w * bpp + 31) // 32) * 4
    out = bytearray(w * h * 4)
    for y in range(h):
        sy = y if top_down else h - 1 - y
        row = b[off + sy * stride:off + (sy + 1) * stride]
        o = y * w * 4
        if bpp == 24:
            for x in range(w):
                out[o + x * 4:o + x * 4 + 3] = row[x * 3:x * 3 + 3]
                out[o + x * 4 + 3] = 255
        elif bpp == 32:
            for x in range(w):
                out[o + x * 4:o + x * 4 + 3] = row[x * 4:x * 4 + 3]
                out[o + x * 4 + 3] = 255
        elif bpp == 8:
            for x in range(w):
                c = pal[row[x]] if row[x] < len(pal) else b'\0\0\0'
                out[o + x * 4:o + x * 4 + 3] = c
                out[o + x * 4 + 3] = 255
        elif bpp == 4:
            for x in range(w):
                v = row[x // 2]
                v = (v >> 4) if x % 2 == 0 else (v & 15)
                c = pal[v] if v < len(pal) else b'\0\0\0'
                out[o + x * 4:o + x * 4 + 3] = c
                out[o + x * 4 + 3] = 255
        elif bpp == 1:
            for x in range(w):
                v = (row[x // 8] >> (7 - x % 8)) & 1
                c = pal[v] if v < len(pal) else b'\0\0\0'
                out[o + x * 4:o + x * 4 + 3] = c
                out[o + x * 4 + 3] = 255
        else:
            raise ValueError('unsupported bmp depth %d' % bpp)
    return w, h, out


def colorkey(w, h, bgra):
    """Make pixels equal to the bottom-left pixel transparent."""
    p = (h - 1) * w * 4
    key = bytes(bgra[p:p + 3])
    for i in range(0, len(bgra), 4):
        if bgra[i:i + 3] == key:
            bgra[i + 3] = 0
            bgra[i] = bgra[i + 1] = bgra[i + 2] = 0


def decrypt_exe(exe):
    b = open(exe, 'rb').read()
    for off in MAGIC_OFFSETS:
        if off + 8 <= len(b) and struct.unpack_from('<I', b, off)[0] == 1230500:
            seed = struct.unpack_from('<I', b, off + 4)[0]
            table = swap_table(seed, 0)
            data = bytes(b[off + 8:].translate(bytes(table)))
            return data
    raise ValueError('not a Game Maker 5.3 exe')


def settings(r):
    r.u32()
    s = {}
    s['fullscreen'] = r.boolean()
    s['hide_border'] = r.boolean()
    s['show_cursor'] = r.boolean()
    s['scaling'] = r.i32()
    r.skip(8)
    s['set_resolution'] = r.boolean()
    r.skip(8)
    s['resolution'] = r.u32()
    s['frequency'] = r.u32()
    r.skip(8)
    s['hide_buttons'] = r.boolean()
    s['default_f4'] = r.boolean()
    s['default_f1'] = r.boolean()
    s['default_esc'] = r.boolean()
    s['default_f5'] = r.boolean()
    r.skip(8)
    s['priority'] = r.u32()
    s['freeze'] = r.boolean()
    s['loading_bar'] = r.u32()
    if s['loading_bar'] == 2:
        if r.i32() != -1:
            r.compressed()
        if r.i32() != -1:
            r.compressed()
    s['load_custom'] = r.boolean()
    if s['load_custom']:
        if r.i32() != -1:
            r.compressed()
    s['load_transparent'] = r.boolean()
    s['load_alpha'] = r.u32()
    s['load_scale'] = r.boolean()
    r.blob()
    s['error_display'] = r.boolean()
    s['error_log'] = r.boolean()
    s['error_abort'] = r.boolean()
    r.u32()
    s['author'] = r.string()
    s['version'] = r.u32()
    r.f64()
    s['information'] = r.string()
    consts = []
    for _ in range(r.u32()):
        consts.append([r.string(), r.string()])
    return s, consts


def read_sounds(r, out):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        s = {'id': i, 'name': r.string()}
        if r.u32() != 440:
            raise ValueError('sound version')
        kind = r.i32()
        s['kind'] = 0
        s['filetype'] = r.string()
        s['filename'] = ''
        data = None
        if kind != -1:
            data = r.blob() if PROBE else r.compressed()
        r.skip(8)
        s['preload'] = not r.boolean()
        s['effects'] = 0
        s['volume'] = 1.0
        s['pan'] = 0.0
        if data and not PROBE:
            ext = s['filetype'] or '.wav'
            fn = 'sounds/%s%s' % (safe(s['name']), ext)
            os.makedirs(os.path.join(out, 'sounds'), exist_ok=True)
            open(os.path.join(out, fn), 'wb').write(data)
            s['file'] = fn
        res.append(s)
    return res


def read_sprites(r, out):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        s = {'id': i, 'name': r.string()}
        ver = r.u32()
        if ver not in (400, 542):
            raise ValueError('sprite version %d' % ver)
        s['width'] = r.u32()
        s['height'] = r.u32()
        s['bbox'] = {'left': r.i32(), 'right': r.i32(), 'bottom': r.i32(), 'top': r.i32()}
        s['transparent'] = r.boolean()
        if ver > 400:
            s['smooth'] = r.boolean()
            s['preload'] = r.boolean()
        s['bbox_type'] = r.u32()
        s['precise'] = r.boolean()
        if ver == 400:
            r.skip(4)
            s['preload'] = not r.boolean()
        s['origin'] = [r.i32(), r.i32()]
        s['frames'] = []
        os.makedirs(os.path.join(out, 'sprites'), exist_ok=True)
        for k in range(r.u32()):
            if r.i32() == -1:
                continue
            if PROBE:
                r.blob()
                continue
            w, h, bgra = decode_bmp(r.compressed())
            if s['transparent']:
                colorkey(w, h, bgra)
            fn = 'sprites/%s_%d.png' % (safe(s['name']), k)
            png(os.path.join(out, fn), w, h, bytes(bgra))
            s['frames'].append({'file': fn, 'w': w, 'h': h})
        if s['frames']:
            s['width'] = s['frames'][0]['w']
            s['height'] = s['frames'][0]['h']
        res.append(s)
    return res


def read_backgrounds(r, out):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        b = {'id': i, 'name': r.string()}
        ver = r.u32()
        if ver not in (400, 543):
            raise ValueError('background version %d' % ver)
        b['width'] = r.u32()
        b['height'] = r.u32()
        b['transparent'] = r.boolean()
        if ver > 400:
            b['smooth'] = r.boolean()
            b['preload'] = r.boolean()
            r.boolean()
            r.skip(24)
        else:
            r.skip(4)
            b['preload'] = not r.boolean()
        if r.boolean():
            if r.i32() != -1:
                raw = r.blob()
                if PROBE:
                    res.append(b)
                    continue
                w, h, bgra = decode_bmp(zlib.decompress(raw))
                if b['transparent']:
                    colorkey(w, h, bgra)
                os.makedirs(os.path.join(out, 'backgrounds'), exist_ok=True)
                fn = 'backgrounds/%s.png' % safe(b['name'])
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
        pver = r.u32()
        if pver not in (420, 500, 530):
            raise ValueError('path version')
        p['connection'] = r.u32()
        p['closed'] = r.u32() != 0
        p['precision'] = r.u32()
        if pver == 530:
            r.skip(12)
        p['points'] = [[r.f64(), r.f64(), r.f64()] for _ in range(r.u32())]
        res.append(p)
    return res


def read_scripts(r):
    r.u32()
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


def read_datafiles(r, out):
    r.u32()
    res = []
    for _ in range(r.u32()):
        if not r.boolean():
            continue
        r.blob()
        if r.u32() != 440:
            raise ValueError('datafile version')
        name = r.string()
        data = r.compressed() if r.boolean() else None
        r.u32()
        r.boolean()
        r.boolean()
        r.boolean()
        if data is not None:
            fn = 'includes/' + safe(os.path.basename(name.replace('\\', '/')))
            os.makedirs(os.path.join(out, 'includes'), exist_ok=True)
            open(os.path.join(out, fn), 'wb').write(data)
            res.append({'name': os.path.basename(name.replace('\\', '/')), 'file': fn})
    return res


def read_timelines(r):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        t = {'id': i, 'name': r.string()}
        if r.u32() != 500:
            raise ValueError('timeline version')
        t['moments'] = []
        for _ in range(r.u32()):
            t['moments'].append({'position': r.u32(), 'actions': actions(r)})
        res.append(t)
    return res


def read_objects(r):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        o = {'id': i, 'name': r.string()}
        if r.u32() != 430:
            raise ValueError('object version')
        o['sprite'] = r.i32()
        o['solid'] = r.boolean()
        o['visible'] = r.boolean()
        o['depth'] = r.i32()
        o['persistent'] = r.boolean()
        o['parent'] = r.i32()
        o['mask'] = r.i32()
        o['events'] = []
        for etype in range(r.u32() + 1):
            while True:
                num = r.i32()
                if num == -1:
                    break
                o['events'].append({'type': etype, 'number': num, 'actions': actions(r)})
        res.append(o)
    return res


class Rules:
    def __init__(self, iso, stretch, inst_lock, tile_lock, tail, port):
        self.iso = iso
        self.stretch = stretch
        self.inst_lock = inst_lock
        self.tile_lock = tile_lock
        self.tail = tail
        self.port = port

    def __repr__(self):
        return 'Rules(iso=%s stretch=%s inst_lock=%s tile_lock=%s tail=%d port=%s)' % (
            self.iso, self.stretch, self.inst_lock, self.tile_lock, self.tail, self.port)


def rules_for(ver):
    new = Rules(True, True, True, True, 80, False)
    old = Rules(False, False, True, True, 80, False)
    return {500: old, 510: old, 520: new, 530: new}.get(ver)


def candidate_rules():
    out = []
    for iso in (False, True):
        for stretch in (True, False):
            for il in (True, False):
                for tl in (True, False):
                    for tail in range(0, 100, 4):
                        out.append(Rules(iso, stretch, il, tl, tail, False))
    return out


def read_rooms(r, rules):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        m = {'id': i, 'name': r.string()}
        r.u32()
        m['caption'] = r.string()
        m['width'] = r.u32()
        m['height'] = r.u32()
        r.u32()
        r.u32()
        if rules.iso:
            r.boolean()
        m['speed'] = r.u32()
        m['persistent'] = r.boolean()
        m['clear_color'] = r.u32()
        m['clear'] = (r.u32() & 1) != 0
        m['creation_code'] = r.string()
        m['backgrounds'] = []
        for _ in range(r.u32()):
            bgd = {'visible': r.boolean(), 'foreground': r.boolean(), 'background': r.i32(),
                   'x': r.i32(), 'y': r.i32(), 'tile_h': r.boolean(), 'tile_v': r.boolean(),
                   'h_speed': r.i32(), 'v_speed': r.i32(), 'stretch': False}
            if rules.stretch:
                bgd['stretch'] = r.boolean()
            m['backgrounds'].append(bgd)
        m['enable_views'] = r.boolean()
        m['views'] = []
        for _ in range(r.u32()):
            v = {'visible': r.boolean(), 'view_x': r.u32(), 'view_y': r.u32(), 'view_w': r.u32(), 'view_h': r.u32(),
                 'port_x': r.u32(), 'port_y': r.u32()}
            if rules.port:
                v['port_w'] = r.u32()
                v['port_h'] = r.u32()
            else:
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
            m['instances'].append({'x': r.i32(), 'y': r.i32(), 'object': r.i32(), 'id': r.i32(), 'creation_code': r.string()})
            if rules.inst_lock:
                r.boolean()
        m['tiles'] = []
        for _ in range(r.u32()):
            m['tiles'].append({'x': r.i32(), 'y': r.i32(), 'background': r.i32(), 'tile_x': r.i32(), 'tile_y': r.i32(),
                               'w': r.u32(), 'h': r.u32(), 'depth': r.i32(), 'id': r.i32()})
            if rules.tile_lock:
                r.boolean()
        r.skip(rules.tail)
        res.append(m)
    return res


def find_sections(d, start, scratch):
    """Find where the resource sections begin by trying the chain of readers."""
    cands = [q for q in range(start + 4, min(len(d) - 8, start + 400000))
             if struct.unpack_from('<I', d, q)[0] == 400 and 0 <= struct.unpack_from('<I', d, q + 4)[0] < 3000]
    for q in cands:
        r = Reader(d, q)
        try:
            read_sounds(r, scratch)
            read_sprites(r, scratch)
            read_backgrounds(r, scratch)
            read_paths(r)
            read_scripts(r)
            read_datafiles(r, scratch)
            read_timelines(r)
            read_objects(r)
            return q
        except Exception:
            continue
    raise ValueError('could not locate the resource sections')


def parse_constants(d, q):
    """The settings block ends with the user constants, directly before the sounds."""
    for back in range(8, 6000):
        s = q - back
        try:
            r = Reader(d, s)
            n = r.u32()
            if n > 400:
                continue
            out = []
            for _ in range(n):
                out.append([r.string(), r.string()])
            if r.p == q and all(c[0].replace('_', 'a').isalnum() for c in out):
                return out
        except Exception:
            continue
    return []


def parse_tail(q, game):
    """After the rooms: last ids, game information, library creation code, room order."""
    game['last_instance_id'] = q.u32()
    game['last_tile_id'] = q.u32()
    info_ver = q.u32()
    q.i32()
    q.boolean()
    if info_ver > 430:
        q.string()
        q.skip(16)
        q.skip(16)
    q.string()
    if q.u32() != 500:
        raise ValueError('library')
    game['library_init'] = [q.string() for _ in range(q.u32())]
    ov = q.u32()
    if ov not in (500, 540, 700):
        raise ValueError('room order version')
    n = q.u32()
    if n > 2000:
        raise ValueError('room order count')
    game['room_order'] = [q.u32() for _ in range(n)]
    game['trailing_bytes'] = len(q.d) - q.p


def parse(data, out):
    i = data.find(struct.pack('<I', 1234321))
    q = Reader(data, i)
    q.u32()
    ver = q.u32()
    q.skip(4)
    game_id = q.u32()
    q.skip(16)
    os.makedirs(out, exist_ok=True)
    scratch = os.path.join(out, '_probe')
    global PROBE
    PROBE = True
    try:
        sec = find_sections(data, q.p, scratch)
    finally:
        PROBE = False
    shutil.rmtree(scratch, ignore_errors=True)
    game = {'game_id': game_id, 'pro': True, 'includes': [], 'gm_version': ver}
    game['constants'] = parse_constants(data, sec)
    game['settings'] = {}
    q.p = sec
    game['sounds'] = read_sounds(q, out)
    game['sprites'] = read_sprites(q, out)
    game['backgrounds'] = read_backgrounds(q, out)
    game['paths'] = read_paths(q)
    game['scripts'] = read_scripts(q)
    game['data_files'] = read_datafiles(q, out)
    game['fonts'] = []
    game['timelines'] = read_timelines(q)
    game['objects'] = read_objects(q)
    after_objects = q.p
    first = rules_for(ver)
    cands = ([first] if first else []) + candidate_rules()
    last_err = None
    for rules in cands:
        q.p = after_objects
        try:
            rooms = read_rooms(q, rules)
            parse_tail(q, game)
            order = game['room_order']
            ok = all(0 <= o < len(rooms) and rooms[o] is not None for o in order)
            if not ok or game['trailing_bytes'] > 200000:
                raise ValueError('room order does not match rooms')
            game['rooms'] = rooms
            game['room_rules'] = repr(rules)
            return game
        except Exception as ex:
            last_err = ex
    raise ValueError('no room layout fit: %r' % last_err)


def extract(exe, out):
    data = decrypt_exe(exe)
    game = parse(data, out)
    json.dump(game, open(os.path.join(out, 'game.json'), 'w'), indent=1)
    return game
