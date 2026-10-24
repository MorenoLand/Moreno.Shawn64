extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_instance_create(0.0, 280.0, 19.0))
	alarm[int(0.0)] = 20.0
func ev_alarm_1():
	(GM.f_instance_create(0.0, 280.0, 19.0))
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	(GM.f_instance_create(0.0, 280.0, 19.0))
	alarm[int(1.0)] = 20.0
