extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 150.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_distance_to_object(self, 0.0)) < 400.0))):
		if (not ((((GM.f_sound_isplaying(185.0)))) >= 0.5)):
			(GM.f_sound_play(185.0))
