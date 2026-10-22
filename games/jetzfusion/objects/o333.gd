extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 100.0
	alarm[int(1.0)] = 95.0
func ev_alarm_1():
	(GM.f_sound_play(56.0))
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 339.0))
	(GM.f_instance_destroy(self))
