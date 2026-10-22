extends "res://games/bubblegum/scripts.gd"
func ev_other_7():
	if ((((GM.f_random(25.0)) < 1.0))):
		(GM.f_sound_play(22.0))
		(GM.f_instance_create((x + 13.0), (y + 6.0), 92.0))
