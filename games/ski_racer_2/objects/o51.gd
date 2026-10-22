extends "res://games/ski_racer_2/objects/o18.gd"
func ev_col_0():
	(GM.f_instance_create((x + (GM.f_random((sprite_width - 12.0)))), (y + (GM.f_random((sprite_height - 12.0)))), 54.0))
