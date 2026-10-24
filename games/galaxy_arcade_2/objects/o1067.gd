extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_step():
	if ((((GM.f_random(50.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 1068.0))
