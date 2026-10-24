extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_step():
	if ((((GM.f_random(50.0)) < 1.0))):
		(GM.f_instance_create((GM.f_random(800.0)), (GM.f_random(600.0)), 1065.0))
