extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	if ((((GM.f_registry_exists("secretChar"))))) >= 0.5:
		(GM.f_instance_create((x + 0.0), (y + 0.0), 15.0))
		(GM.f_instance_destroy(self))
