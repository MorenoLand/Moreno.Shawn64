def q(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n') + '"'


def n(v):
    v = v.strip()
    return v if v else '0'


def make(ctx):
    scripts = ctx['scripts']

    def e(a, i):
        return n(a['args'][i]) if i < len(a['args']) else '0'

    def sd(a, i):
        return a['args'][i] if i < len(a['args']) else ''

    def rel(a):
        return a['relative']

    def setv(a, name, i):
        return '%s %s= %s' % (name, '+' if rel(a) else '', e(a, i)) if rel(a) else '%s = %s' % (name, e(a, i))

    def move_contact(a):
        return 'move_contact_solid(%s, %s)' % (e(a, 0), e(a, 1)) if e(a, 2) == '0' else 'move_contact_all(%s, %s)' % (e(a, 0), e(a, 1))

    def pos(a, i):
        if rel(a):
            return 'x + %s' % e(a, i), 'y + %s' % e(a, i + 1)
        return e(a, i), e(a, i + 1)

    def create(a):
        px, py = pos(a, 1)
        return 'instance_create(%s, %s, %s)' % (px, py, e(a, 0))

    def create_motion(a):
        px, py = pos(a, 1)
        return 'action_create_object_motion(%s, %s, %s, %s, %s)' % (e(a, 0), px, py, e(a, 3), e(a, 4))

    def create_random(a):
        px, py = pos(a, 4)
        return 'action_create_object_random(%s, %s, %s, %s, %s, %s)' % (e(a, 0), e(a, 1), e(a, 2), e(a, 3), px, py)

    def sprite_set(a):
        return 'sprite_index = %s; if (%s >= 0) image_index = %s; image_speed = %s' % (e(a, 0), e(a, 1), e(a, 1), e(a, 2))

    def alarm(a):
        k = e(a, 1)
        return 'alarm[%s] += %s' % (k, e(a, 0)) if rel(a) else 'alarm[%s] = %s' % (k, e(a, 0))

    def ifnum(a):
        op = ['==', '<', '>'][int(e(a, 2))] if e(a, 2) in ('0', '1', '2') else '=='
        return 'instance_number(%s) %s %s' % (e(a, 0), op, e(a, 1))

    def ifvar(a):
        op = ['==', '<', '>'][int(e(a, 2))] if e(a, 2) in ('0', '1', '2') else '=='
        return '%s %s %s' % (sd(a, 0), op, e(a, 1))

    def text(a):
        px, py = pos(a, 1)
        return 'draw_text(%s, %s, %s)' % (px, py, q(sd(a, 0)) if not sd(a, 0).startswith('"') else sd(a, 0))

    def draw_sprite(a):
        px, py = pos(a, 1)
        return 'draw_sprite(%s, %s, %s, %s)' % (e(a, 0), e(a, 3), px, py)

    def draw_bg(a):
        px, py = pos(a, 1)
        return 'draw_background(%s, %s, %s)' % (e(a, 0), px, py)

    def rect(a):
        o = 'not (%s)' % e(a, 4)
        if rel(a):
            return 'draw_rectangle(x + %s, y + %s, x + %s, y + %s, %s)' % (e(a, 0), e(a, 1), e(a, 2), e(a, 3), o)
        return 'draw_rectangle(%s, %s, %s, %s, %s)' % (e(a, 0), e(a, 1), e(a, 2), e(a, 3), o)

    def line(a):
        if rel(a):
            return 'draw_line(x + %s, y + %s, x + %s, y + %s)' % (e(a, 0), e(a, 1), e(a, 2), e(a, 3))
        return 'draw_line(%s, %s, %s, %s)' % (e(a, 0), e(a, 1), e(a, 2), e(a, 3))

    def execscript(a):
        sid = int(e(a, 0)) if e(a, 0).lstrip('-').isdigit() else -1
        nm = scripts.get(sid)
        if not nm:
            return ''
        return '%s(%s)' % (nm, ', '.join(e(a, i) for i in range(1, 6)))

    def setscore(a):
        return 'score += %s' % e(a, 0) if rel(a) else 'score = %s' % e(a, 0)

    def setlives(a):
        return 'lives += %s' % e(a, 0) if rel(a) else 'lives = %s' % e(a, 0)

    def sethealth(a):
        return 'health += %s' % e(a, 0) if rel(a) else 'health = %s' % e(a, 0)

    def setvar(a):
        return '%s += %s' % (sd(a, 0), e(a, 1)) if rel(a) else '%s = %s' % (sd(a, 0), e(a, 1))

    def effect(a):
        px, py = pos(a, 1)
        fn = 'effect_create_above' if e(a, 5) == '0' else 'effect_create_below'
        return '%s(%s, %s, %s, %s, %s)' % (fn, e(a, 0), px, py, e(a, 3), e(a, 4))

    def timeline_set(a):
        return 'timeline_index = %s; timeline_position = %s; timeline_running = true; timeline_speed = 1' % (e(a, 0), e(a, 1))

    def snap(a):
        h = e(a, 0)
        v = e(a, 1)
        return 'if (%s > 0) x = round(x / %s) * %s; if (%s > 0) y = round(y / %s) * %s' % (h, h, h, v, v, v)

    def bounce(a):
        return 'move_bounce_solid(%s)' % ('1' if e(a, 0) != '0' else '0') if e(a, 1) == '0' else 'move_bounce_all(%s)' % ('1' if e(a, 0) != '0' else '0')

    def empty(a):
        px, py = pos(a, 0)
        return 'place_free(%s, %s)' % (px, py) if e(a, 2) == '0' else 'place_empty(%s, %s)' % (px, py)

    def collision(a):
        px, py = pos(a, 0)
        return 'not place_free(%s, %s)' % (px, py) if e(a, 2) == '0' else 'not place_empty(%s, %s)' % (px, py)

    def ifobj(a):
        px, py = pos(a, 1)
        return 'place_meeting(%s, %s, %s)' % (px, py, e(a, 0))

    def ifmouse(a):
        b = e(a, 0)
        return 'mouse_check_button(%s)' % {'1': 'mb_left', '2': 'mb_right', '3': 'mb_middle'}.get(b, 'mb_none') if b != '0' else 'not mouse_check_button(mb_any)'

    table = {
        'action_move': lambda a: 'action_move(%s, %s, %s)' % (q(sd(a, 0)), e(a, 1), '1' if rel(a) else '0'),
        'action_set_motion': lambda a: ('motion_add(%s, %s)' if rel(a) else 'motion_set(%s, %s)') % (e(a, 0), e(a, 1)),
        'action_move_point': lambda a: 'move_towards_point(%s, %s, %s)' % (e(a, 0), e(a, 1), e(a, 2)),
        'action_set_hspeed': lambda a: setv(a, 'hspeed', 0),
        'action_set_vspeed': lambda a: setv(a, 'vspeed', 0),
        'action_set_gravity': lambda a: ('gravity_direction += %s; gravity += %s' if rel(a) else 'gravity_direction = %s; gravity = %s') % (e(a, 0), e(a, 1)),
        'action_set_friction': lambda a: setv(a, 'friction', 0),
        'action_move_to': lambda a: ('x += %s; y += %s' if rel(a) else 'x = %s; y = %s') % (e(a, 0), e(a, 1)),
        'action_move_start': lambda a: 'x = xstart; y = ystart',
        'action_move_random': lambda a: 'move_random(%s, %s)' % (e(a, 0), e(a, 1)),
        'action_snap': snap,
        'action_wrap': lambda a: 'move_wrap(%s, %s, 0)' % ('1' if e(a, 0) in ('0', '2') else '0', '1' if e(a, 0) in ('1', '2') else '0'),
        'action_reverse_xdir': lambda a: 'hspeed = -hspeed',
        'action_reverse_ydir': lambda a: 'vspeed = -vspeed',
        'action_move_contact': move_contact,
        'action_bounce': bounce,
        'action_create_object': create,
        'action_create_object_motion': create_motion,
        'action_create_object_random': create_random,
        'action_change_object': lambda a: 'instance_change(%s, %s)' % (e(a, 0), e(a, 1)),
        'action_kill_object': lambda a: 'instance_destroy()',
        'action_kill_position': lambda a: 'action_kill_position(%s, %s)' % pos(a, 0),
        'action_sprite_set': sprite_set,
        'action_sprite_transform': lambda a: 'image_xscale = %s; image_yscale = %s; image_angle = %s' % (e(a, 0), e(a, 1), e(a, 2)),
        'action_sprite_color': lambda a: 'image_blend = %s; image_alpha = %s' % (e(a, 0), e(a, 1)),
        'action_sound': lambda a: ('sound_loop(%s)' if e(a, 1) != '0' else 'sound_play(%s)') % e(a, 0),
        'action_end_sound': lambda a: 'sound_stop(%s)' % e(a, 0),
        'action_if_sound': lambda a: 'sound_isplaying(%s)' % e(a, 0),
        'action_previous_room': lambda a: 'room_goto_previous()',
        'action_next_room': lambda a: 'room_goto_next()',
        'action_current_room': lambda a: 'room_restart()',
        'action_another_room': lambda a: 'room_goto(%s)' % e(a, 0),
        'action_if_previous_room': lambda a: 'room != room_first',
        'action_if_next_room': lambda a: 'room != room_last',
        'action_set_alarm': alarm,
        'action_sleep': lambda a: '',
        'action_set_timeline': timeline_set,
        'action_timeline_set': timeline_set,
        'action_timeline_start': lambda a: 'timeline_running = true',
        'action_timeline_pause': lambda a: 'timeline_running = false',
        'action_timeline_stop': lambda a: 'timeline_running = false; timeline_position = 0',
        'action_set_timeline_position': lambda a: ('timeline_position += %s' if rel(a) else 'timeline_position = %s') % e(a, 0),
        'action_set_timeline_speed': lambda a: ('timeline_speed += %s' if rel(a) else 'timeline_speed = %s') % e(a, 0),
        'action_set_score': setscore,
        'action_set_life': setlives,
        'action_set_health': sethealth,
        'action_set_variable': setvar,
        'action_if_variable': ifvar,
        'action_if_empty': empty,
        'action_if_collision': collision,
        'action_if_object': ifobj,
        'action_if_number': ifnum,
        'action_if_dice': lambda a: 'random(%s) < 1' % e(a, 0),
        'action_if_question': lambda a: 'show_question(%s)' % q(sd(a, 0)),
        'action_if': lambda a: e(a, 0),
        'action_if_mouse': ifmouse,
        'action_if_aligned': lambda a: '(x mod %s == 0) and (y mod %s == 0)' % (e(a, 0), e(a, 1)),
        'action_draw_sprite': draw_sprite,
        'action_draw_background': draw_bg,
        'action_draw_text': text,
        'action_draw_rectangle': rect,
        'action_draw_line': line,
        'action_color': lambda a: 'draw_set_color(%s)' % e(a, 0),
        'action_font': lambda a: 'draw_set_font(%s); draw_set_halign(%s)' % (e(a, 0), e(a, 1)),
        'action_draw_score': lambda a: 'draw_text(%s, %s, %s + string(score))' % (pos(a, 0)[0], pos(a, 0)[1], q(sd(a, 2))),
        'action_draw_life': lambda a: 'draw_text(%s, %s, %s + string(lives))' % (pos(a, 0)[0], pos(a, 0)[1], q(sd(a, 2))),
        'action_draw_health': lambda a: 'draw_healthbar(%s, %s, %s, %s, health, c_black, c_red, c_lime, 0, 1, 1)' % (e(a, 0), e(a, 1), e(a, 2), e(a, 3)),
        'action_effect': effect,
        'action_webpage': lambda a: 'execute_shell(%s, "")' % q(sd(a, 0)),
        'action_restart_game': lambda a: 'game_restart()',
        'action_end_game': lambda a: 'game_end()',
        'action_message': lambda a: 'show_message(%s)' % q(sd(a, 0)),
        'action_execute_script': execscript,
        'action_inherited': lambda a: 'event_inherited()',
        'action_snapshot': lambda a: '',
        'action_fullscreen': lambda a: '',
        'action_highscore_show': lambda a: '',
        'action_highscore_clear': lambda a: '',
        'action_save_game': lambda a: '',
        'action_load_game': lambda a: '',
        'action_set_caption': lambda a: '',
        'action_cd_play': lambda a: '',
        'action_cd_stop': lambda a: '',
        'action_cd_pause': lambda a: '',
        'action_cd_resume': lambda a: '',
        'action_partsyst_create': lambda a: '',
        'action_comment': lambda a: '',
    }

    def action_text(a):
        lib, aid, nm = a['library'], a['action_id'], a['name']
        if lib == 1 and aid == 603:
            return a['args'][0] if a['args'] else ''
        if nm in table:
            return table[nm](a)
        raise ValueError('unsupported action %r' % ((lib, aid, nm, a['kind']),))

    return action_text


def to_gml(actions, ctx):
    action_text = make(ctx)
    n_ = len(actions)

    def wrap(a, body):
        t = a['target']
        if not a['has_target'] or t == -1 or not body:
            return body
        if t == -2:
            return 'with (other) { %s }' % body
        return 'with (%d) { %s }' % (t, body)

    def item(i):
        a = actions[i]
        k = a['kind']
        if k == 1:
            parts = []
            i += 1
            while i < n_ and actions[i]['kind'] != 2:
                s, i = item(i)
                parts.append(s)
            return '{ %s }' % ' '.join(parts), i + 1
        if k == 2:
            return '', i + 1
        if k == 3:
            return '', i + 1
        if k == 4:
            return 'exit', i + 1
        if k == 5:
            body, j = item(i + 1) if i + 1 < n_ else ('', i + 1)
            return 'repeat (%s) %s' % (n(a['args'][0]) if a['args'] else '1', body), j
        text = action_text(a)
        if a['question']:
            body, j = item(i + 1) if i + 1 < n_ else ('', i + 1)
            neg = 'not ' if a['negate'] else ''
            els = ''
            if j < n_ and actions[j]['kind'] == 3:
                eb, j2 = item(j + 1)
                els = ' else ' + eb
                j = j2
            return 'if (%s(%s)) %s%s' % (neg, text, body, els), j
        return wrap(a, text), i + 1

    out = []
    i = 0
    while i < n_:
        s, i = item(i)
        out.append(s)
    return '\n'.join(out)
