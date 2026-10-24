extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = 1.0
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
