extends "res://games/infection2/scripts.gd"
func ev_create():
	vspeed = (5.0 + (GM.f_random(5.0)))
func ev_step():
	if ((y > 300.0)):
		(GM.f_instance_destroy(self))
