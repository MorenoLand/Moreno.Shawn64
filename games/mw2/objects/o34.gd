extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 70.0, 0.0))
func ev_col_30():
	(GM.f_instance_destroy(self))
func ev_col_22():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
