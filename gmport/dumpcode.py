import json


def run(game_json, out):
    g = json.load(open(game_json))
    codes = []

    def acts(label, al):
        for a in al:
            if a['library'] == 1 and a['action_id'] == 603:
                codes.append((label, a['args'][0]))

    for o in g['objects']:
        if not o:
            continue
        for e in o['events']:
            acts('%s:%d:%d' % (o['name'], e['type'], e['number']), e['actions'])
    for t in g['timelines']:
        if t:
            for m in t['moments']:
                acts('tl:%s:%d' % (t['name'], m['position']), m['actions'])
    for s in g['scripts']:
        if s:
            codes.append(('script:' + s['name'], s['code']))
    for r in g['rooms']:
        if r:
            if r['creation_code']:
                codes.append(('room:' + r['name'], r['creation_code']))
            for i in r['instances']:
                if i['creation_code']:
                    codes.append(('inst:' + r['name'], i['creation_code']))
    open(out, 'w', encoding='utf-8').write('\n'.join('//// %s\n%s' % (l, c) for l, c in codes))

