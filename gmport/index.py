import json
import os

from .config import GAMES_DIR, CONFIG_DIR


def run():
    items = []
    if os.path.isdir(GAMES_DIR):
        for slug in sorted(os.listdir(GAMES_DIR)):
            p = os.path.join(GAMES_DIR, slug, 'data.json')
            if not os.path.exists(p):
                continue
            d = json.load(open(p, encoding='utf-8'))
            items.append({'slug': slug, 'title': d.get('title', slug), 'credit': d.get('credit', 'S64 Games'), 'size': d.get('size', [800, 600])})
    order = []
    op = os.path.join(CONFIG_DIR, 'order.json')
    if os.path.exists(op):
        order = json.load(open(op))
    items.sort(key=lambda g: order.index(g['slug']) if g['slug'] in order else 999)
    text = json.dumps(items, indent=1).encode()
    path = os.path.join(GAMES_DIR, 'index.json')
    if not os.path.exists(path) or open(path, 'rb').read() != text:
        open(path, 'wb').write(text)
    print('index: %d games' % len(items))
