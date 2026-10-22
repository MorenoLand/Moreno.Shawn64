extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_sound_play(17.0))
	(GM.f_action_move(self, "000100000", 15.0, 0.0))
func ev_col_41():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
