extends "res://games/infection2/scripts.gd"
var v_roundme = 0.0
var v_wee = 0.0
func ev_create():
	vspeed = vspeed + ((-2.0) - (GM.f_random(3.0)))
	v_wee = 1.0
	v_roundme = (GM.f_floor((GM.f_random(5.999999))))
	if ((absf(v_roundme - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 50.0))
func ev_step():
	v_wee = v_wee - 0.1
	if ((v_wee < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(27.0, 0.0, x, y, 0.2, 0.2, 0.0, 255.0, v_wee))
	(GM.f_draw_set_blend_mode(0.0))
