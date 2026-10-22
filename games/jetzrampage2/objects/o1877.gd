extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((GM.G["lives"] > 99.0))):
		(GM.f_instance_create(0.0, 538.0, 142.0))
		(GM.f_sound_play(37.0))
		(GM.f_instance_destroy(self))
