extends "res://games/infection2/scripts.gd"
func ev_step():
	(GM.f_instance_create((x + (GM.f_random(120.0))), (y - 10.0), 18.0))
