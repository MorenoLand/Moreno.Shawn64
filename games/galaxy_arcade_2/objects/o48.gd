extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "101000101", 12.0, 0.0))
func ev_col_60():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_58():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_57():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_47():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_46():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_42():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_41():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_39():
	(GM.f_move_bounce_solid(self, 0.0))
	(GM.f_instance_change(self, 40.0, 0.0))
