extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	if ((((GM.f_random(6.0)) < 1.0))):
		(GM.f_sound_play(52.0))
	else:
		if ((((GM.f_random(5.0)) < 1.0))):
			(GM.f_sound_play(43.0))
		else:
			if ((((GM.f_random(4.0)) < 1.0))):
				(GM.f_sound_play(47.0))
			else:
				if ((((GM.f_random(3.0)) < 1.0))):
					(GM.f_sound_play(48.0))
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						(GM.f_sound_play(49.0))
					else:
						(GM.f_sound_play(50.0))
	(GM.f_instance_destroy(self))
