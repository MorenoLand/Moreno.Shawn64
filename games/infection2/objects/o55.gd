extends "res://games/infection2/scripts.gd"
func ev_step():
	if ((GM.vb(0.0, "x") > x)):
		(GM.f_sound_play(16.0))
		(GM.f_instance_destroy(self))
