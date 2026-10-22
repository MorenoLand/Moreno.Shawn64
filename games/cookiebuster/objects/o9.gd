extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 40.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
