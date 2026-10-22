extends "res://games/thrust/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 1.1, 0.0))
	(GM.f_sound_loop(16.0))
func ev_col_19():
	(GM.f_sound_stop(16.0))
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_other_5():
	(GM.f_sound_stop(16.0))
