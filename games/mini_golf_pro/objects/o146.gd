extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 0.0
func ev_step():
	if ((absf((GM.f_instance_number(149.0)) - 0.0) < 0.00001)):
		v_wee = v_wee - 4.0
		image_angle = v_wee
func ev_draw():
	(GM.f_draw_sprite_ext(99.0, 0.0, x, y, 1.0, 1.0, v_wee, 16777215.0, 0.6))
