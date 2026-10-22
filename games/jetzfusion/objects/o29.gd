extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	direction = (120.0 + (GM.f_random(30.0)))
	speed = (2.0 + (GM.f_random(3.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(10.0)))
	gravity_direction = 270.0
	gravity = 0.3
func ev_alarm_0():
	(GM.f_instance_destroy(self))
