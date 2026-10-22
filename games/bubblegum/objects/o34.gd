extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", (10.0 + (GM.f_random(10.0))), 0.0))
func ev_col_10():
	(GM.f_instance_destroy(self))
