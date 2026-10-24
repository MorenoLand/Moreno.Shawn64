extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, 270.0, 4.0))
func ev_col_40():
	GM.score = GM.score + (-100.0)
