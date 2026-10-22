extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	direction = (70.0 + (GM.f_random(40.0)))
	speed = speed + (1.0 + (GM.f_random(3.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
