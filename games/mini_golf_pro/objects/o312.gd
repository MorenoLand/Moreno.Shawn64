extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 1.0
	direction = (GM.f_random(360.0))
	speed = (3.0 + (GM.f_random(3.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_wee = v_wee - 0.01
	if ((v_wee < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(146.0, 0.0, x, y, 1.0, 1.0, 0.0, 16711680.0, v_wee))
	(GM.f_draw_set_blend_mode(0.0))
