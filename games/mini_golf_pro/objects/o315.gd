extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 2.0
	image_xscale = 3.0
	image_yscale = 3.0
	(GM.f_instance_create(x, y, 317.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(32.0, 0.0, x, y, 3.0, 3.0, 0.0, 32768.0, 0.9))
	(GM.f_draw_set_blend_mode(0.0))
