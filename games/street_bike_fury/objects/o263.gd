extends "res://games/street_bike_fury/scripts.gd"
var v_scale = 0.0
var v_trans = 0.0
func ev_create():
	v_scale = 0.5
	v_trans = 1.0
func ev_step():
	v_trans = v_trans - 0.03
	if ((v_trans < 0.0)):
		(GM.f_instance_destroy(self))
	if ((v_scale > 0.0)):
		v_scale = v_scale - 0.03
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(80.0, 0.0, x, y, v_scale, v_scale, 0.0, 255.0, v_trans))
	(GM.f_draw_set_blend_mode(0.0))
