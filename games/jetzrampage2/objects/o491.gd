extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	x = 0.0
	y = (GM.f_random(230.0))
	alarm[int(0.0)] = (1.0 + (GM.f_random(500.0)))
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 120.0))
