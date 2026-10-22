extends "res://games/thrust/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 40.0
func ev_alarm_0():
	(GM.f_room_restart())
