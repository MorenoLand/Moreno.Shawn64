extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	(GM.f_sound_play(9.0))
func ev_alarm_0():
	(GM.f_room_goto_next())
func ev_step():
	if (not ((((GM.f_sound_isplaying(9.0)))) >= 0.5)):
		(GM.f_room_goto_next())
