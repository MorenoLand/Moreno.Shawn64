extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	(GM.f_instance_create(16.0, 555.0, 54.0))
	(GM.f_instance_create(780.0, 555.0, 55.0))
