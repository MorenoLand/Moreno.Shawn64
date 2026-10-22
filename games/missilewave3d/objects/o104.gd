extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	(GM.f_sound_play(17.0))
	alarm[int(0.0)] = 15.0
func ev_alarm_0():
	(GM.f_sound_play(17.0))
	alarm[int(0.0)] = 15.0
