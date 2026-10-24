extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(335.0))
func ev_keyrelease_38():
	(GM.f_sound_stop(335.0))
	(GM.f_instance_destroy(self))
