extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(1.0)] = 90.0
func ev_alarm_1():
	(GM.f_sound_stop(35.0))
	(GM.f_room_goto(57.0))
