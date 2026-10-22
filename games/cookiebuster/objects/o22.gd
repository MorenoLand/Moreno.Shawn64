extends "res://games/cookiebuster/scripts.gd"
func ev_step():
	if (not ((((GM.f_sound_isplaying(3.0)))) >= 0.5)):
		(GM.f_room_restart())
