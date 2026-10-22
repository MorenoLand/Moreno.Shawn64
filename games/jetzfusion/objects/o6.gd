extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if ((((GM.view_xview[0] - sprite_width) < x))):
		if ((((GM.view_xview[0] + 800.0) > x))):
			(GM.f_sound_play(31.0))
	alarm[int(0.0)] = 3.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
