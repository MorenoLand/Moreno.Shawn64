import math
import struct
import sys
import wave

import numpy as np

DLS_PATH = r'C:\Windows\System32\drivers\gm.dls'
RATE = 44100


def read_chunks(data, start, end):
    pos = start
    while pos + 8 <= end:
        tag = data[pos:pos + 4]
        size = struct.unpack_from('<I', data, pos + 4)[0]
        if tag in (b'LIST', b'RIFF'):
            yield tag, data[pos + 8:pos + 12], pos + 12, pos + 8 + size
        else:
            yield tag, None, pos + 8, pos + 8 + size
        pos += 8 + size + (size & 1)


class Region:
    pass


class Dls:
    def __init__(self, path):
        d = open(path, 'rb').read()
        self.d = d
        self.waves = []
        self.instruments = []
        ptbl = []
        wvpl_start = 0
        for tag, lt, s, e in read_chunks(d, 12, len(d)):
            if tag == b'ptbl':
                cues = struct.unpack_from('<I', d, s + 4)[0]
                ptbl = list(struct.unpack_from('<%dI' % cues, d, s + 8))
            elif tag == b'LIST' and lt == b'wvpl':
                wvpl_start = s
                self.wvpl = (s, e)
            elif tag == b'LIST' and lt == b'lins':
                for t2, l2, s2, e2 in read_chunks(d, s, e):
                    if t2 == b'LIST' and l2 == b'ins ':
                        self.instruments.append(self.parse_ins(s2, e2))
        self.ptbl = ptbl
        self.wvpl_start = wvpl_start
        self.cache = {}

    def parse_art(self, s, e):
        art = {}
        d = self.d
        for tag, lt, s2, e2 in read_chunks(d, s, e):
            if tag in (b'art1', b'art2'):
                cb, n = struct.unpack_from('<II', d, s2)
                p = s2 + cb
                for _ in range(n):
                    src, ctl, dst, tr, scale = struct.unpack_from('<HHHHi', d, p)
                    p += 12
                    if src == 0 and ctl == 0:
                        art[dst] = scale
        return art

    def parse_ins(self, s, e):
        d = self.d
        ins = {'regions': [], 'art': {}, 'bank': 0, 'prog': 0, 'perc': False}
        for tag, lt, s2, e2 in read_chunks(d, s, e):
            if tag == b'insh':
                n, bank, prog = struct.unpack_from('<III', d, s2)
                ins['bank'] = bank & 0x7F7F
                ins['perc'] = bool(bank & 0x80000000)
                ins['prog'] = prog & 0x7F
            elif tag == b'LIST' and lt == b'lrgn':
                for t3, l3, s3, e3 in read_chunks(d, s2, e2):
                    if t3 == b'LIST' and l3 in (b'rgn ', b'rgn2'):
                        ins['regions'].append(self.parse_rgn(s3, e3))
            elif tag == b'LIST' and lt == b'lart':
                ins['art'].update(self.parse_art(s2, e2))
            elif tag == b'LIST' and lt == b'lar2':
                ins['art'].update(self.parse_art(s2, e2))
        return ins

    def parse_rgn(self, s, e):
        d = self.d
        r = Region()
        r.klo, r.khi, r.vlo, r.vhi = 0, 127, 0, 127
        r.unity = None
        r.fine = 0
        r.gain = 0
        r.loop = None
        r.link = 0
        r.art = {}
        for tag, lt, s2, e2 in read_chunks(d, s, e):
            if tag == b'rgnh':
                r.klo, r.khi, r.vlo, r.vhi = struct.unpack_from('<HHHH', d, s2)
            elif tag == b'wsmp':
                cb, unity, fine, gain, opts, nloops = struct.unpack_from('<IHhiII', d, s2)
                r.unity, r.fine, r.gain = unity, fine, gain
                if nloops:
                    _, lt2, ls, ll = struct.unpack_from('<IIII', d, s2 + cb)
                    r.loop = (ls, ll)
            elif tag == b'wlnk':
                _, _, ch, idx = struct.unpack_from('<HHII', d, s2)
                r.link = idx
            elif tag == b'LIST' and lt in (b'lart', b'lar2'):
                r.art.update(self.parse_art(s2, e2))
        return r

    def wave(self, idx):
        if idx in self.cache:
            return self.cache[idx]
        d = self.d
        off = self.wvpl_start + self.ptbl[idx]
        size = struct.unpack_from('<I', d, off + 4)[0]
        fmt = None
        pcm = None
        wunity, wfine, wloop = None, 0, None
        for tag, lt, s, e in read_chunks(d, off + 12, off + 8 + size):
            if tag == b'fmt ':
                fmt = struct.unpack_from('<HHIIHH', d, s)
            elif tag == b'data':
                pcm = d[s:e]
            elif tag == b'wsmp':
                cb, unity, fine, gain, opts, nloops = struct.unpack_from('<IHhiII', d, s)
                wunity, wfine = unity, fine
                if nloops:
                    _, lt2, ls, ll = struct.unpack_from('<IIII', d, s + cb)
                    wloop = (ls, ll)
        bits = fmt[5]
        if bits == 16:
            arr = np.frombuffer(pcm, dtype='<i2').astype(np.float32) / 32768.0
        else:
            arr = (np.frombuffer(pcm, dtype=np.uint8).astype(np.float32) - 128.0) / 128.0
        res = (arr, fmt[2], wunity, wfine, wloop)
        self.cache[idx] = res
        return res

    def find(self, bank, prog, perc):
        best = None
        for ins in self.instruments:
            if ins['perc'] != perc:
                continue
            if ins['prog'] == prog and ins['bank'] == bank:
                return ins
            if ins['prog'] == prog and ins['bank'] == 0:
                best = ins
        if best is None and perc:
            for ins in self.instruments:
                if ins['perc']:
                    return ins
        return best


def tc2sec(v):
    return 2.0 ** ((v / 65536.0) / 1200.0)


def parse_midi(path):
    d = open(path, 'rb').read()
    if d[:4] != b'MThd':
        raise ValueError('not midi')
    fmt, ntr, div = struct.unpack('>HHH', d[8:14])
    pos = 14
    events = []
    for t in range(ntr):
        assert d[pos:pos + 4] == b'MTrk'
        size = struct.unpack('>I', d[pos + 4:pos + 8])[0]
        p = pos + 8
        end = p + size
        tick = 0
        run = 0
        while p < end:
            v = 0
            while True:
                b = d[p]
                p += 1
                v = (v << 7) | (b & 0x7F)
                if not b & 0x80:
                    break
            tick += v
            st = d[p]
            if st == 0xFF:
                typ = d[p + 1]
                p += 2
                ln = 0
                while True:
                    b = d[p]
                    p += 1
                    ln = (ln << 7) | (b & 0x7F)
                    if not b & 0x80:
                        break
                data = d[p:p + ln]
                p += ln
                if typ == 0x51:
                    events.append((tick, 'tempo', int.from_bytes(data, 'big')))
                continue
            if st in (0xF0, 0xF7):
                p += 1
                ln = 0
                while True:
                    b = d[p]
                    p += 1
                    ln = (ln << 7) | (b & 0x7F)
                    if not b & 0x80:
                        break
                p += ln
                continue
            if st & 0x80:
                run = st
                p += 1
            else:
                st = run
            kind = st & 0xF0
            ch = st & 0x0F
            if kind in (0xC0, 0xD0):
                a = d[p]
                p += 1
                events.append((tick, 'prog' if kind == 0xC0 else 'press', ch, a))
            else:
                a, b2 = d[p], d[p + 1]
                p += 2
                if kind == 0x90:
                    events.append((tick, 'on' if b2 > 0 else 'off', ch, a, b2))
                elif kind == 0x80:
                    events.append((tick, 'off', ch, a, b2))
                elif kind == 0xB0:
                    events.append((tick, 'cc', ch, a, b2))
                elif kind == 0xE0:
                    events.append((tick, 'bend', ch, ((b2 << 7) | a) - 8192))
        pos = end
    order = {'tempo': 0, 'prog': 1, 'cc': 1, 'bend': 1, 'off': 2, 'on': 3, 'press': 4}
    events.sort(key=lambda e: (e[0], order[e[1]]))
    out = []
    tempo = 500000
    last_tick = 0
    t = 0.0
    for e in events:
        t += (e[0] - last_tick) * tempo / 1e6 / div
        last_tick = e[0]
        if e[1] == 'tempo':
            tempo = e[2]
            continue
        out.append((t,) + e[1:])
    return out


def render(midi_path, out_path, dls=None, gain_db=0.0):
    dls = dls or Dls(DLS_PATH)
    ev = parse_midi(midi_path)
    total = ev[-1][0] + 3.0 if ev else 1.0
    n = int(total * RATE) + RATE
    mix = np.zeros((n, 2), dtype=np.float32)
    prog = [0] * 16
    bank = [0] * 16
    vol = [100] * 16
    expr = [127] * 16
    pan = [64] * 16
    bend = [0] * 16
    sustain = [False] * 16
    active = {}
    notes = []
    for e in ev:
        t, kind = e[0], e[1]
        if kind == 'prog':
            prog[e[2]] = e[3]
        elif kind == 'cc':
            ch, c, v = e[2], e[3], e[4]
            if c == 7:
                vol[ch] = v
            elif c == 11:
                expr[ch] = v
            elif c == 10:
                pan[ch] = v
            elif c == 0:
                bank[ch] = v
            elif c == 64:
                sustain[ch] = v >= 64
                if v < 64:
                    for key, nn in list(active.items()):
                        if key[0] == ch and nn.get('held'):
                            nn['off'] = t
                            nn['held'] = False
                            del active[key]
            elif c in (120, 123):
                for key, nn in list(active.items()):
                    if key[0] == ch:
                        nn['off'] = t
                        del active[key]
        elif kind == 'bend':
            bend[e[2]] = e[3]
        elif kind == 'on':
            ch, key, vel = e[2], e[3], e[4]
            nn = {'t': t, 'ch': ch, 'key': key, 'vel': vel, 'prog': prog[ch], 'bank': bank[ch], 'vol': vol[ch], 'expr': expr[ch], 'pan': pan[ch], 'bend': bend[ch], 'off': None}
            notes.append(nn)
            if (ch, key) in active:
                old = active[(ch, key)]
                if old['off'] is None:
                    old['off'] = t
            active[(ch, key)] = nn
        elif kind == 'off':
            ch, key = e[2], e[3]
            nn = active.get((ch, key))
            if nn is not None:
                if sustain[ch]:
                    nn['held'] = True
                else:
                    nn['off'] = t
                    del active[(ch, key)]
    for nn in active.values():
        if nn['off'] is None:
            nn['off'] = total - 2.0
    for nn in notes:
        if nn['off'] is None:
            nn['off'] = nn['t'] + 0.5
        perc = nn['ch'] == 9
        ins = dls.find(nn['bank'], nn['prog'] if not perc else 0, perc)
        if ins is None:
            continue
        for r in ins['regions']:
            if not (r.klo <= nn['key'] <= r.khi and r.vlo <= nn['vel'] <= r.vhi):
                continue
            art = dict(ins['art'])
            art.update(r.art)
            w = dls.wave(r.link)
            arr, wrate, wunity, wfine, wloop = w
            unity = r.unity if r.unity is not None else (wunity if wunity is not None else 60)
            fine = r.fine if r.unity is not None else wfine
            loop = r.loop if r.loop is not None else wloop
            semis = (nn['key'] - unity) + fine / 100.0 + nn['bend'] / 8192.0 * 2.0
            ratio = (wrate / RATE) * (2.0 ** (semis / 12.0))
            attack = tc2sec(art.get(0x206, -(2 ** 31))) if 0x206 in art else 0.0
            attack = min(max(attack, 0.002), 8.0) if 0x206 in art else 0.002
            decay = min(tc2sec(art[0x207]), 20.0) if 0x207 in art else 0.0
            sus = (art.get(0x20A, 1000 << 16) / 65536.0) / 1000.0
            sus = min(max(sus, 1.6e-5), 1.0)
            rel = min(tc2sec(art[0x209]), 8.0) if 0x209 in art else 0.2
            rel = max(rel, 0.02)
            dur = max(nn['off'] - nn['t'], 0.02)
            if perc and loop is None:
                dur = max(dur, len(arr) / wrate / ratio * 0.0 + 0.02)
            total_len = dur + rel
            if loop is None:
                natural = len(arr) / ratio / RATE
                total_len = min(total_len, natural + 0.01) if not perc else min(total_len + natural, natural + 0.01)
                if perc:
                    dur = natural
            ns = int(total_len * RATE)
            if ns <= 0:
                continue
            idx = np.arange(ns, dtype=np.float64) * ratio
            if loop is not None:
                ls, ll = loop
                if ll > 0:
                    over = idx >= ls + ll
                    idx = np.where(over, ls + np.mod(idx - ls, ll), idx)
            valid = idx < len(arr) - 1
            i0 = np.minimum(idx.astype(np.int64), len(arr) - 2)
            fr = (idx - i0).astype(np.float32)
            seg = arr[i0] * (1 - fr) + arr[i0 + 1] * fr
            seg = seg * valid
            tt = np.arange(ns, dtype=np.float64) / RATE
            env = np.minimum(tt / attack, 1.0)
            if decay > 0.0 and sus < 1.0:
                dd = np.clip((tt - attack) / decay, 0.0, 1.0)
                env = env * (sus ** dd)
            elif sus < 1.0:
                env = env * sus
            rt = np.clip((tt - dur) / rel, 0.0, 1.0)
            lvl_at_off = float(env[min(int(dur * RATE), ns - 1)])
            env = np.where(tt > dur, lvl_at_off * (1.0 - rt) ** 2, env)
            g = (nn['vel'] / 127.0) ** 1.6 * (nn['vol'] / 127.0) ** 1.4 * (nn['expr'] / 127.0) ** 1.4
            g *= 10.0 ** ((r.gain / 65536.0) / -20.0 if r.gain else 0.0) if False else 1.0
            seg = seg * env.astype(np.float32) * g * 0.5
            p = (nn['pan'] - 64) / 64.0
            lg = math.cos((p + 1.0) * math.pi / 4.0)
            rg = math.sin((p + 1.0) * math.pi / 4.0)
            s0 = int(nn['t'] * RATE)
            e0 = min(s0 + ns, n)
            if e0 <= s0:
                continue
            mix[s0:e0, 0] += seg[:e0 - s0] * lg
            mix[s0:e0, 1] += seg[:e0 - s0] * rg
    peak = float(np.max(np.abs(mix))) or 1.0
    mix = mix * (0.89 / peak) * (10.0 ** (gain_db / 20.0))
    last = np.nonzero(np.max(np.abs(mix), axis=1) > 0.002)[0]
    if len(last):
        mix = mix[:last[-1] + 1]
    pcm = (np.clip(mix, -1, 1) * 32767.0).astype('<i2')
    with wave.open(out_path, 'wb') as w:
        w.setnchannels(2)
        w.setsampwidth(2)
        w.setframerate(RATE)
        w.writeframes(pcm.tobytes())


if __name__ == '__main__':
    render(sys.argv[1], sys.argv[2], Dls(sys.argv[3] if len(sys.argv) > 3 else DLS_PATH))
