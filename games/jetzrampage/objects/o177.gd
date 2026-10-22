extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_sound_play(65.0))
	else:
		(GM.f_sound_play(66.0))
	(GM.f_instance_destroy(self))
