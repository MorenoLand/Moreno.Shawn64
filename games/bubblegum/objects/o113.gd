extends "res://games/bubblegum/scripts.gd"
func ev_col_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 111.0))
	(GM.f_instance_destroy(self))
