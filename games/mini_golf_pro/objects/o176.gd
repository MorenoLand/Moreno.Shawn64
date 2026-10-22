extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	speed = 15.0
	alarm[int(0.0)] = (5.0 + (GM.f_random(25.0)))
	v_wee = (GM.f_floor((GM.f_random(1.9999))))
	if (GM.eq(v_wee, 0.0)):
		sprite_index = 130.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_0():
	(GM.f_instance_destroy(self))
