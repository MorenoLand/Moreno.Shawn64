extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, 0.0, 8.0))
func ev_step():
	x = GM.vb(1231.0, "x")
