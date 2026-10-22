extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	(GM.f_sound_play(337.0))
	alarm[int(0.0)] = 40.0
func ev_alarm_0():
	(GM.f_room_goto(81.0))
