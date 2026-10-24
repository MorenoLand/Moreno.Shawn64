import json
import os
import struct
import sys
import zlib


class Reader:
    def __init__(self, data, pos=0):
        self.d = data
        self.p = pos

    def u32(self):
        v = struct.unpack_from('<I', self.d, self.p)[0]
        self.p += 4
        return v

    def i32(self):
        v = struct.unpack_from('<i', self.d, self.p)[0]
        self.p += 4
        return v

    def boolean(self):
        return self.i32() > 0

    def f64(self):
        v = struct.unpack_from('<d', self.d, self.p)[0]
        self.p += 8
        return v

    def blob(self):
        n = self.u32()
        v = self.d[self.p:self.p + n]
        if len(v) != n:
            raise ValueError('blob past end')
        self.p += n
        return v

    def string(self):
        return self.blob().decode('cp1252')

    def skip(self, n):
        self.p += n

    def compressed(self):
        return zlib.decompress(self.blob())


def swap_table(a, b):
    t0 = list(range(256))
    for i in range(1, 10001):
        j = 1 + ((i * a + b) & 0xFFFFFFFF) % 254
        t0[j], t0[j + 1] = t0[j + 1], t0[j]
    t1 = [0] * 256
    for i in range(1, 256):
        t1[t0[i]] = i
    return t1


def gmkrypt_swap_table(seed):
    return swap_table(6 + seed % 250, seed // 250)


def decrypt_gm600(r):
    data = r.compressed()
    q = Reader(data)
    head = data[:4]
    q.skip(4)
    s1 = q.u32()
    s2 = q.u32()
    q.skip(4 * s1)
    seed = q.u32()
    q.skip(4 * s2)
    mid = data[q.p:q.p + 1]
    q.skip(1)
    table = gmkrypt_swap_table(seed)
    rest = bytes(table[x] for x in data[q.p:])
    return head + mid + rest


def actions(r):
    out = []
    if r.u32() != 400:
        raise ValueError('action list version')
    for _ in range(r.u32()):
        if r.u32() != 440:
            raise ValueError('action version')
        a = {}
        a['library'] = r.u32()
        a['action_id'] = r.u32()
        a['kind'] = r.u32()
        a['relative_flag'] = r.boolean()
        a['question'] = r.boolean()
        a['has_target'] = r.boolean()
        a['type'] = r.u32()
        a['name'] = r.string()
        a['code'] = r.string()
        a['params_used'] = r.u32()
        a['param_types'] = [r.u32() for _ in range(r.u32())]
        a['target'] = r.i32()
        a['relative'] = r.boolean()
        a['args'] = [r.string() for _ in range(r.u32())]
        a['negate'] = r.boolean()
        out.append(a)
    return out


def settings(r):
    s = {}
    r.u32()
    s['fullscreen'] = r.boolean()
    s['interpolation'] = r.boolean()
    s['hide_border'] = r.boolean()
    s['show_cursor'] = r.boolean()
    s['scaling'] = r.i32()
    s['resizable'] = r.boolean()
    s['always_on_top'] = r.boolean()
    s['background_color'] = r.u32()
    s['set_resolution'] = r.boolean()
    s['color_depth'] = r.u32()
    s['resolution'] = r.u32()
    s['frequency'] = r.u32()
    s['hide_buttons'] = r.boolean()
    s['vsync'] = r.boolean()
    s['default_f4'] = r.boolean()
    s['default_f1'] = r.boolean()
    s['default_esc'] = r.boolean()
    s['default_f5'] = r.boolean()
    s['priority'] = r.u32()
    s['freeze'] = r.boolean()
    s['loading_bar'] = r.u32()
    if s['loading_bar'] > 0:
        if r.boolean():
            r.compressed()
        if r.boolean():
            r.compressed()
    if r.boolean():
        r.compressed()
    s['load_transparent'] = r.boolean()
    s['load_alpha'] = r.u32()
    s['load_scale'] = r.boolean()
    s['error_display'] = r.boolean()
    s['error_log'] = r.boolean()
    s['error_abort'] = r.boolean()
    s['uninitialized_zero'] = r.boolean()
    consts = []
    for _ in range(r.u32()):
        consts.append([r.string(), r.string()])
    return s, consts


def png(path, w, h, bgra):
    raw = bytearray()
    stride = w * 4
    for y in range(h):
        raw.append(0)
        row = bgra[y * stride:(y + 1) * stride]
        out = bytearray(row)
        out[0::4] = row[2::4]
        out[2::4] = row[0::4]
        raw += out

    def chunk(tag, body):
        c = struct.pack('>I', len(body)) + tag + body
        return c + struct.pack('>I', zlib.crc32(tag + body) & 0xFFFFFFFF)

    with open(path, 'wb') as f:
        f.write(b'\x89PNG\r\n\x1a\n')
        f.write(chunk(b'IHDR', struct.pack('>IIBBBBB', w, h, 8, 6, 0, 0, 0)))
        f.write(chunk(b'IDAT', zlib.compress(bytes(raw), 6)))
        f.write(chunk(b'IEND', b''))


def safe(name):
    return ''.join(c if c.isalnum() or c in '-_' else '_' for c in name)


def read_sounds(r, out):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        s = {'id': i, 'name': r.string()}
        if r.u32() != 600:
            raise ValueError('sound version')
        s['kind'] = r.u32()
        s['filetype'] = r.string()
        s['filename'] = r.string()
        data = None
        if r.boolean():
            data = r.blob()
        s['effects'] = r.u32()
        s['volume'] = r.f64()
        s['pan'] = r.f64()
        s['preload'] = r.boolean()
        if data is not None:
            try:
                data = zlib.decompress(data)
            except zlib.error:
                pass
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
        if r.u32() != 542:
            raise ValueError('sprite version')
        s['width'] = r.u32()
        s['height'] = r.u32()
        s['bbox'] = {'left': r.i32(), 'right': r.i32(), 'bottom': r.i32(), 'top': r.i32()}
        s['transparent'] = r.boolean()
        s['smooth'] = r.boolean()
        s['preload'] = r.boolean()
        s['bbox_type'] = r.u32()
        s['precise'] = r.boolean()
        s['origin'] = [r.i32(), r.i32()]
        s['frames'] = []
        os.makedirs(os.path.join(out, 'sprites'), exist_ok=True)
        for k in range(r.u32()):
            r.u32()
            r.u32()
            w = r.u32()
            h = r.u32()
            data = r.compressed()
            fn = 'sprites/%s_%d.png' % (safe(s['name']), k)
            png(os.path.join(out, fn), w, h, data)
            s['frames'].append({'file': fn, 'w': w, 'h': h})
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
        if r.u32() != 543:
            raise ValueError('background version')
        b['width'] = r.u32()
        b['height'] = r.u32()
        b['transparent'] = r.boolean()
        b['smooth'] = r.boolean()
        b['preload'] = r.boolean()
        if r.boolean():
            r.u32()
            r.u32()
            w = r.u32()
            h = r.u32()
            data = r.compressed()
            os.makedirs(os.path.join(out, 'backgrounds'), exist_ok=True)
            fn = 'backgrounds/%s.png' % safe(b['name'])
            png(os.path.join(out, fn), w, h, data)
            b['file'] = fn
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
        if r.u32() != 530:
            raise ValueError('path version')
        p['connection'] = r.u32()
        p['closed'] = r.boolean()
        p['precision'] = r.u32()
        p['points'] = [[r.f64(), r.f64(), r.f64()] for _ in range(r.u32())]
        res.append(p)
    return res


def read_scripts(r):
    r.u32()
    res = []
    table = gmkrypt_swap_table(12345)
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        s = {'id': i, 'name': r.string()}
        if r.u32() != 400:
            raise ValueError('script version')
        raw = bytes(table[x] for x in r.compressed())
        s['code'] = Reader(raw).string()
        res.append(s)
    return res


def read_fonts(r, out):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        f = {'id': i, 'name': r.string()}
        v = r.u32()
        if v < 540:
            raise ValueError('font version')
        f['font_name'] = r.string()
        f['size'] = r.u32()
        f['bold'] = r.boolean()
        f['italic'] = r.boolean()
        f['range_start'] = r.u32()
        f['range_end'] = r.u32()
        glyphs = []
        for _ in range(256):
            glyphs.append([r.u32(), r.u32(), r.u32(), r.u32(), r.i32(), r.i32()])
        aw = r.u32()
        ah = r.u32()
        pix = r.compressed() if v == 540 else r.blob()
        n = aw * ah
        bgra = bytearray(n * 4)
        bgra[0::4] = bytes([255]) * n
        bgra[1::4] = bytes([255]) * n
        bgra[2::4] = bytes([255]) * n
        bgra[3::4] = pix[:n]
        os.makedirs(os.path.join(out, 'fonts'), exist_ok=True)
        fn = 'fonts/%s.png' % safe(f['name'])
        png(os.path.join(out, fn), aw, ah, bytes(bgra))
        f['file'] = fn
        f['atlas'] = [aw, ah]
        f['glyphs'] = glyphs
        res.append(f)
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


def read_rooms(r):
    r.u32()
    res = []
    for i in range(r.u32()):
        if not r.boolean():
            res.append(None)
            continue
        m = {'id': i, 'name': r.string()}
        if r.u32() != 541:
            raise ValueError('room version')
        m['caption'] = r.string()
        m['width'] = r.u32()
        m['height'] = r.u32()
        m['speed'] = r.u32()
        m['persistent'] = r.boolean()
        m['clear_color'] = r.u32()
        m['clear'] = r.boolean()
        m['creation_code'] = r.string()
        m['backgrounds'] = []
        for _ in range(r.u32()):
            m['backgrounds'].append({
                'visible': r.boolean(), 'foreground': r.boolean(), 'background': r.i32(),
                'x': r.i32(), 'y': r.i32(), 'tile_h': r.boolean(), 'tile_v': r.boolean(),
                'h_speed': r.i32(), 'v_speed': r.i32(), 'stretch': r.boolean()})
        m['enable_views'] = r.boolean()
        m['views'] = []
        for _ in range(r.u32()):
            m['views'].append({
                'visible': r.boolean(), 'view_x': r.u32(), 'view_y': r.u32(),
                'view_w': r.u32(), 'view_h': r.u32(), 'port_x': r.u32(), 'port_y': r.u32(),
                'port_w': r.u32(), 'port_h': r.u32(), 'h_border': r.u32(), 'v_border': r.u32(),
                'h_speed': r.i32(), 'v_speed': r.i32(), 'target': r.i32()})
        m['instances'] = []
        for _ in range(r.u32()):
            m['instances'].append({'x': r.i32(), 'y': r.i32(), 'object': r.i32(),
                                   'id': r.i32(), 'creation_code': r.string()})
        m['tiles'] = []
        for _ in range(r.u32()):
            m['tiles'].append({'x': r.i32(), 'y': r.i32(), 'background': r.i32(),
                               'tile_x': r.i32(), 'tile_y': r.i32(), 'w': r.u32(),
                               'h': r.u32(), 'depth': r.i32(), 'id': r.i32()})
        res.append(m)
    return res


def detect(exe):
    b = open(exe, 'rb').read()
    info = {'file': os.path.basename(exe), 'size': len(b), 'format': 'unknown', 'supported': False}
    for off in (700000, 800000, 1420000, 1600000):
        if off + 8 <= len(b) and struct.unpack_from('<II', b, off) == (1234321, 600):
            info.update(format='Game Maker 6.x', data_offset=off, supported=True)
            return info
    for off in (1250000, 1450000, 1500000):
        if off + 4 <= len(b) and struct.unpack_from('<I', b, off)[0] == 1230500:
            info.update(format='Game Maker 5.x', data_offset=off, supported=True)
            return info
    from . import extract4
    found = extract4.detect(b)
    if found:
        info.update(format='Game Maker 4.x', data_offset=found[0], supported=True)
        return info
    if b'Game Maker' in b or b'Mark Overmars' in b:
        info.update(format='older Game Maker (5.0 to 5.2?)', note='not supported yet')
    return info


def extract(exe, out):
    fmt = detect(exe).get('format')
    if fmt == 'Game Maker 5.x':
        from . import extract53
        return extract53.extract(exe, out)
    if fmt == 'Game Maker 4.x':
        from . import extract4
        return extract4.extract(exe, out)
    b = open(exe, 'rb').read()
    start = None
    for off in (700000, 800000, 1420000, 1600000):
        if struct.unpack_from('<II', b, off) == (1234321, 600):
            start = off
            break
    if start is None:
        raise SystemExit('not a Game Maker 6 exe')
    r = Reader(b, start + 8)
    r.u32()
    r.boolean()
    r.boolean()
    includes = []
    while True:
        name = r.string()
        if name == 'READY':
            break
        if name == 'D3DX8.dll':
            r.blob()
        else:
            includes.append(name)
            r.blob()
    q = Reader(decrypt_gm600(r))
    assert q.u32() == 1230600
    q.u32()
    q.u32()
    pro = q.boolean()
    q.u32()
    assert q.u32() == 1234321
    assert q.u32() == 600
    q.boolean()
    game_id = q.u32()
    q.skip(16)
    os.makedirs(out, exist_ok=True)
    game = {'game_id': game_id, 'pro': pro, 'includes': includes}
    game['settings'], game['constants'] = settings(q)
    game['sounds'] = read_sounds(q, out)
    game['sprites'] = read_sprites(q, out)
    game['backgrounds'] = read_backgrounds(q, out)
    game['paths'] = read_paths(q)
    game['scripts'] = read_scripts(q)
    game['fonts'] = read_fonts(q, out)
    game['timelines'] = read_timelines(q)
    game['objects'] = read_objects(q)
    game['rooms'] = read_rooms(q)
    game['last_instance_id'] = q.u32()
    game['last_tile_id'] = q.u32()
    q.u32()
    q.u32()
    q.boolean()
    game['help_caption'] = q.string()
    q.skip(16)
    q.skip(12)
    q.boolean()
    q.compressed()
    q.u32()
    game['library_init'] = [q.string() for _ in range(q.u32())]
    q.u32()
    game['room_order'] = [q.u32() for _ in range(q.u32())]
    game['trailing_bytes'] = len(q.d) - q.p
    json.dump(game, open(os.path.join(out, 'game.json'), 'w'), indent=1)
    return game
