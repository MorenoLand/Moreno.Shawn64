extends "res://games/thrust/scripts.gd"
func ev_step():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 50.0))
