extends "res://games/bubblegum/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_sound_volume(25.0, 0.6))
	(GM.f_room_goto(0.0))
