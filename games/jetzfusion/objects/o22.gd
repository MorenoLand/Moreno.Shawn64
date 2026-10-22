extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	direction = (GM.f_random(360.0))
	speed = (2.0 + (GM.f_random(4.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(5.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
