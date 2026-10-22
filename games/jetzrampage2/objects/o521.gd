extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(9.0))
func ev_step():
	if ((((GM.f_random(100.0)) < 1.0))):
		(GM.f_instance_create(0.0, 0.0, 522.0))
		(GM.f_sound_play(188.0))
		(GM.f_instance_create(((GM.vb(0.0, "x") - 400.0) + (GM.f_random(800.0))), 0.0, 520.0))
