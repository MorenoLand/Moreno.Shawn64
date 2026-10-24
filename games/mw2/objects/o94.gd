extends "res://games/mw2/scripts.gd"
func ev_create():
	x = (GM.mouse_x - 8.0)
	y = (GM.mouse_y - 8.0)
func ev_other_7():
	(GM.f_instance_destroy(self))
