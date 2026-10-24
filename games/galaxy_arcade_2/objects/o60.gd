extends "res://games/galaxy_arcade_2/objects/o46.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 4.0, 0.0))
func ev_col_58():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_57():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_52():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_47():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_46():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
