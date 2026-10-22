extends "res://games/missilewave3d/scripts.gd"
func ev_step():
	x = x + 0.0
	y = y + (-200.0)
	if (((x < (-1000.0)))):
		(GM.f_instance_destroy(self))
