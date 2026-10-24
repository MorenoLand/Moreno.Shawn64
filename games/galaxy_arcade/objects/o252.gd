extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	if ((((GM.f_random(GM.G["missilspeed"])) < 1.0))):
		(GM.f_instance_create((x + (-32.0)), (y + 0.0), 251.0))
