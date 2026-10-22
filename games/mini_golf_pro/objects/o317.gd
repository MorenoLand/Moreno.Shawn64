extends "res://games/mini_golf_pro/scripts.gd"
var v_set = 0.0
func ev_create():
	image_xscale = 4.0
	image_yscale = 4.0
	v_set = 1.0
func ev_step():
	v_set = v_set - 0.05
	if ((v_set < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(32.0, 0.0, x, y, 4.0, 4.0, 0.0, 32768.0, v_set))
	(GM.f_draw_set_blend_mode(0.0))
