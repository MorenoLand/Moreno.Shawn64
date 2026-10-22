extends "res://games/svsj/scripts.gd"
func ev_create():
	(GM.f_sound_play(0.0))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_game_restart())
