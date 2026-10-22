extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (20.0 + (GM.f_random(20.0)))
func ev_alarm_0():
	alarm[int(0.0)] = (20.0 + (GM.f_random(20.0)))
	(GM.f_instance_create(((GM.view_xview[0] + 100.0) + (GM.f_random(700.0))), (GM.view_yview[0] - 50.0), 289.0))
func ev_step():
	x = GM.vb(0.0, "x")
	y = GM.vb(0.0, "y")
