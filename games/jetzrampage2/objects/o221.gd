extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (100.0 + (GM.f_random(100.0)))
func ev_alarm_0():
	if (((x > GM.view_xview[0]))):
		if (((x < (GM.view_xview[0] + 800.0)))):
			(GM.f_sound_play(159.0))
	alarm[int(0.0)] = (100.0 + (GM.f_random(100.0)))
