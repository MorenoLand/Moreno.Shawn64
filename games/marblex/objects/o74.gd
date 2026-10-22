extends "res://games/marblex/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 75.0))
	(GM.f_instance_destroy(self))
