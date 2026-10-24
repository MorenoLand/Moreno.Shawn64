extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = (GM.f_random(2.0))
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
	gravity_direction = 270.0
	gravity = 0.2
func ev_alarm_0():
	(GM.f_instance_destroy(self))
