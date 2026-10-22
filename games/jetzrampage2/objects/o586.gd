extends "res://games/jetzrampage2/objects/o219.gd"
func ev_create():
	v_mypower = 5.0
	v_alive = 1.0
func ev_col_16():
	(GM.f_sound_play(15.0))
	(GM.f_sound_play(33.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 587.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_sound_play(15.0))
	(GM.f_sound_play(33.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 587.0))
	(GM.f_instance_destroy(self))
