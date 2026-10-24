extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 40.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
