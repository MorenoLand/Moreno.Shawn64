extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 35.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
