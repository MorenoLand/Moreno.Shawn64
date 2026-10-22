extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((x > GM.view_xview[0]))):
		if (((x < (GM.view_xview[0] + 800.0)))):
			if ((((GM.f_random(70.0)) < 1.0))):
				(GM.f_sound_play(560.0))
