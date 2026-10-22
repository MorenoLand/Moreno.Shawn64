extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	if ((((GM.f_random(4.0)) < 1.0))):
		(GM.f_sound_play(41.0))
	else:
		if ((((GM.f_random(3.0)) < 1.0))):
			(GM.f_sound_play(42.0))
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				(GM.f_sound_play(55.0))
			else:
				(GM.f_sound_play(60.0))
	alarm[int(0.0)] = 1000.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
