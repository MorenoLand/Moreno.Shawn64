extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_move_towards_point(self, GM.vb(506.0, "x"), GM.vb(506.0, "y"), 8.0))
