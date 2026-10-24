extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_sound_play(33.0))
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
