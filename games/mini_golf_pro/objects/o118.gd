extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 1.0
	direction = (70.0 + (GM.f_random(40.0)))
	speed = (2.0 + (GM.f_random(5.0)))
	gravity = 0.5
	gravity_direction = 270.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_wee = v_wee - 0.09
	if ((v_wee < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(77.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, v_wee))
