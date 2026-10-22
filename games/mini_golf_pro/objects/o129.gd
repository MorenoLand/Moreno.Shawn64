extends "res://games/mini_golf_pro/scripts.gd"
var v_shadowon = 0.0
func ev_create():
	v_shadowon = 0.0
func ev_alarm_0():
	v_shadowon = 0.0
	for _w14 in GM.with_list((137.0), self):
		if _w14._dead:
			continue
		_w14.other = self
		(GM.f_instance_destroy(_w14))
	(GM.f_sound_stop(7.0))
func ev_col_0():
	v_shadowon = 1.0
	alarm[int(0.0)] = 2.0
	if ((speed > 0.0)):
		if not ((((GM.f_sound_isplaying(7.0)))) >= 0.5):
			if not (((absf(GM.vb(0.0, "depth") - (-1.0)) < 0.00001))):
				(GM.f_sound_loop(7.0))
	alarm[int(0.0)] = 2.0
func ev_draw():
	(GM.f_draw_sprite_ext(90.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.7))
