extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "101000101", 2.0, 0.0))
func ev_col_128():
	(GM.f_move_bounce_all(self, 0.0))
func ev_col_127():
	(GM.f_move_bounce_all(self, 0.0))
func ev_col_56():
	(GM.f_move_bounce_solid(self, 0.0))
