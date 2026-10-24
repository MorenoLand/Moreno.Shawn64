extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = (GM.f_random(3.0))
	alarm[int(0.0)] = (1.0 + (GM.f_random(34.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
