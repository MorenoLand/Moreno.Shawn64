extends "res://games/infection2/scripts.gd"
func ev_create():
	direction = (45.0 + (GM.f_random(90.0)))
	speed = (GM.f_random(4.0))
	gravity = 0.4
	gravity_direction = 270.0
	alarm[int(0.0)] = (GM.f_random(10.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
