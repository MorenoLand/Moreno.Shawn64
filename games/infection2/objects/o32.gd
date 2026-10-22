extends "res://games/infection2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (200.0 + (GM.f_random(20.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
