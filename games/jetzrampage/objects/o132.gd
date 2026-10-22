extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	if ((((GM.f_random(4.0)) < 1.0))):
		(GM.f_sound_play(51.0))
	else:
		if ((((GM.f_random(3.0)) < 1.0))):
			(GM.f_sound_play(45.0))
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				(GM.f_sound_play(44.0))
			else:
				(GM.f_sound_play(57.0))
	(GM.f_instance_destroy(self))
