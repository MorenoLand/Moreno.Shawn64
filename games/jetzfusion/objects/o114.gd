extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if (((absf((GM.f_instance_number(7.0)) - 1.0) < 0.00001))):
		if ((((GM.view_xview[0] - sprite_width) < x))):
			if ((((GM.view_xview[0] + 800.0) > x))):
				(GM.f_sound_play(30.0))
func ev_other_7():
	(GM.f_instance_destroy(self))
