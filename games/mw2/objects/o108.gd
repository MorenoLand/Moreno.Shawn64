extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_sound_play(35.0))
func ev_step():
	if (not ((((GM.f_sound_isplaying(35.0)))) >= 0.5)):
		(GM.f_instance_destroy(self))
