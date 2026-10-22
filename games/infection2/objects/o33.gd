extends "res://games/infection2/scripts.gd"
var v_goup = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
func ev_create():
	v_wee = 0.2
	v_goup = 1.0
	vspeed = (-(GM.f_random(5.0)))
	v_wee2 = 1.0
func ev_step():
	if ((absf(v_goup - 1.0) < 0.00001)):
		v_wee = GM.add(v_wee, 0.5)
	if ((v_wee > 2.0)):
		v_goup = 0.0
	if ((absf(v_goup - 0.0) < 0.00001)):
		v_wee = v_wee - 0.1
		if ((v_wee < 0.0)):
			(GM.f_instance_destroy(self))
	v_wee2 = v_wee2 - 0.01
	if ((v_wee2 < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(30.0, 0.0, x, y, v_wee, v_wee, 0.0, 255.0, v_wee2))
	(GM.f_draw_set_blend_mode(0.0))
