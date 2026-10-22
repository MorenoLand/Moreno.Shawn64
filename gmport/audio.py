import hashlib
import json
import os
import shutil
import subprocess
import sys

from .config import build_dir, ffmpeg, python_numpy, dls_path, game_dir, ROOT

RENDERER = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'midi.py')


def cache_dir():
    return os.path.join(build_dir(), 'audio_cache')


def wav_info(path):
    b = open(path, 'rb').read(64)
    if b[:4] != b'RIFF':
        return None
    return b[20] | (b[21] << 8), b[34] | (b[35] << 8)


def encode(src, ext, args):
    os.makedirs(cache_dir(), exist_ok=True)
    key = hashlib.sha1(open(src, 'rb').read() + ext.encode() + ' '.join(args).encode()).hexdigest()
    out = os.path.join(cache_dir(), key + ext)
    if not os.path.exists(out):
        subprocess.run([ffmpeg(), '-y', '-loglevel', 'error', '-i', src] + args + [out], check=True)
        print('encoded', os.path.basename(src))
    return out


def render_midi(src):
    os.makedirs(cache_dir(), exist_ok=True)
    key = hashlib.sha1(open(src, 'rb').read() + open(RENDERER, 'rb').read()).hexdigest()
    ogg = os.path.join(cache_dir(), key + '.ogg')
    if not os.path.exists(ogg):
        wav = os.path.join(cache_dir(), key + '.wav')
        subprocess.run([python_numpy(), RENDERER, src, wav, dls_path()], check=True)
        subprocess.run([ffmpeg(), '-y', '-loglevel', 'error', '-i', wav, '-c:a', 'libvorbis', '-q:a', '4', ogg], check=True)
        os.remove(wav)
        print('rendered midi', os.path.basename(src))
    return ogg


def run(slug):
    gdir = game_dir(slug)
    stage = os.path.join(gdir, '_stage')
    raw = os.path.join(stage, 'data.raw.json')
    d = json.load(open(raw))
    for s in d['sounds']:
        if not s or 'file' not in s:
            continue
        f = os.path.join(stage, s['file'])
        ext = os.path.splitext(f)[1].lower()
        if ext == '.mp3':
            continue
        if ext in ('.mid', '.midi'):
            out = render_midi(f)
            rel = os.path.splitext(s['file'])[0] + '.ogg'
            os.remove(f)
            shutil.copyfile(out, os.path.join(stage, rel))
            s['file'] = rel
            continue
        info = wav_info(f) if ext == '.wav' else None
        if info is not None and info[0] == 1 and info[1] == 16:
            continue
        if info is not None and info[0] == 1:
            out = encode(f, '.wav', ['-c:a', 'pcm_s16le'])
            rel = s['file']
        else:
            out = encode(f, '.ogg', ['-c:a', 'libvorbis', '-q:a', '4'])
            rel = os.path.splitext(s['file'])[0] + '.ogg'
        os.remove(f)
        shutil.copyfile(out, os.path.join(stage, rel))
        s['file'] = rel
    text = json.dumps(d).encode()
    final = os.path.join(gdir, 'data.json')
    if not os.path.exists(final) or open(final, 'rb').read() != text:
        open(final, 'wb').write(text)
    os.remove(raw)


