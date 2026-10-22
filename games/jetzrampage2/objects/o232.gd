extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	if (((x > GM.view_xview[0]))):
		if (((x < (GM.view_xview[0] + 800.0)))):
			(GM.f_sound_play(80.0))
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
