extends "res://games/marblex/scripts.gd"
func ev_other_7():
	(GM.f_instance_create((x + 40.0), (y + 40.0), 48.0))
	(GM.f_instance_destroy(self))
