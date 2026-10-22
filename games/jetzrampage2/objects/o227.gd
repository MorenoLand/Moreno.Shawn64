extends "res://games/jetzrampage2/objects/o108.gd"
func ev_create():
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
