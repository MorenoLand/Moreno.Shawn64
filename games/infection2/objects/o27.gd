extends "res://games/infection2/scripts.gd"
var v_scale = 0.0
var v_trans = 0.0
func ev_create():
	v_trans = 0.2
	v_scale = 0.2
	vspeed = (-(GM.f_random(3.0)))
func ev_step():
	v_trans = v_trans - 0.002
	if ((v_trans < 0.0)):
		(GM.f_instance_destroy(self))
	v_scale = v_scale + 0.02
	if ((hspeed < 0.0)):
		hspeed = hspeed + 0.01
	if ((hspeed > 0.0)):
		hspeed = hspeed - 0.01
	vspeed = vspeed - 0.05
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(30.0, 0.0, x, y, v_scale, v_scale, 0.0, 8421504.0, v_trans))
	(GM.f_draw_set_blend_mode(0.0))
