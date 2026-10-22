extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if ((((GM.f_random(100.0)) < 1.0))):
		if (((x > GM.view_xview[0]))):
			if (((x < (GM.view_xview[0] + 800.0)))):
				(GM.f_sound_play(163.0))
		(GM.f_instance_create((x + 30.0), (y + 32.0), 603.0))
func ev_col_103():
	(GM.f_sound_play(15.0))
	(GM.f_instance_destroy(self))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
func ev_col_10():
	(GM.f_sound_play(15.0))
	(GM.f_instance_destroy(self))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
