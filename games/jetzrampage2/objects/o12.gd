extends "res://games/jetzrampage2/scripts.gd"
var v_countdown = 0.0
func ev_create():
	alarm[int(0.0)] = 25.0
	v_countdown = 4.0
func ev_alarm_3():
	(GM.f_sound_play(89.0))
	for _w26 in GM.with_list((0.0), self):
		if _w26._dead:
			continue
		_w26.other = self
		GM.vset(_w26, "v_start", 1.0)
	(GM.f_instance_destroy(self))
func ev_alarm_2():
	(GM.f_sound_play(89.0))
	v_countdown = 1.0
	alarm[int(3.0)] = 25.0
func ev_alarm_1():
	(GM.f_sound_play(89.0))
	v_countdown = 2.0
	alarm[int(2.0)] = 25.0
func ev_alarm_0():
	(GM.f_sound_play(68.0))
	(GM.f_sound_play(89.0))
	v_countdown = 3.0
	alarm[int(1.0)] = 25.0
func ev_draw():
	if (((absf(v_countdown - 3.0) < 0.00001))):
		(GM.f_draw_sprite(17.0, (-1.0), (GM.view_xview[int(0.0)] + 360.0), (GM.view_yview[int(0.0)] + 100.0)))
	if (((absf(v_countdown - 2.0) < 0.00001))):
		(GM.f_draw_sprite(18.0, (-1.0), (GM.view_xview[int(0.0)] + 360.0), (GM.view_yview[int(0.0)] + 100.0)))
	if (((absf(v_countdown - 1.0) < 0.00001))):
		(GM.f_draw_sprite(19.0, (-1.0), (GM.view_xview[int(0.0)] + 360.0), (GM.view_yview[int(0.0)] + 100.0)))
