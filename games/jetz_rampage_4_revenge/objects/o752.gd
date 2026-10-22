extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	friction = 0.1
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
