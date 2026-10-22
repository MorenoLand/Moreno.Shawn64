extends "res://games/marblex/scripts.gd"
func ev_col_0():
	(GM.f_sound_play(5.0))
	GM.lives = GM.lives + 1.0
	(GM.f_instance_destroy(self))
