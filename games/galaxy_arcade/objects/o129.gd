extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000101000", 1.0, 0.0))
func ev_col_127():
	hspeed = (-hspeed)
