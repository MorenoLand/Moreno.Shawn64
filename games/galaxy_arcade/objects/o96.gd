extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	(GM.f_instance_create((x + 15.0), (y + 40.0), 72.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
