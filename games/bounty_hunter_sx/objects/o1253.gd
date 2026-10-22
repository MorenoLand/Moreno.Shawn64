extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 35.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 1254.0))
	(GM.f_instance_destroy(self))
