extends "res://games/infection2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (30.0 + (GM.f_random(10.0)))
func ev_alarm_0():
	alarm[int(0.0)] = (30.0 + (GM.f_random(10.0)))
	(GM.f_instance_create(x, y, 54.0))
