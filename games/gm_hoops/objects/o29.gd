extends "res://games/gm_hoops/scripts.gd"
func ev_create():
	GM.score = 0.0
	alarm[int(0.0)] = 1800.0
func ev_alarm_0():
	(GM.f_sound_play(6.0))
	(GM.f_room_restart())
