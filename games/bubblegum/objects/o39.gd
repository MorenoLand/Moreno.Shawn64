extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", ((GM.f_random(10.0)) + 10.0), 0.0))
func ev_col_35():
	(GM.f_instance_destroy(self))
