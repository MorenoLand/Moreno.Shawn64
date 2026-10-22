extends "res://games/jetz_rampage_4_revenge/objects/o502.gd"
func ev_create():
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
