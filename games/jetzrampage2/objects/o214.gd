extends "res://games/jetzrampage2/objects/o17.gd"
func ev_destroy():
	if (((absf((GM.f_instance_number(215.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(792.0, 880.0, 215.0))
