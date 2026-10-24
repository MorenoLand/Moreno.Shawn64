extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(358.0))
func ev_destroy():
	(GM.f_sound_stop(358.0))
