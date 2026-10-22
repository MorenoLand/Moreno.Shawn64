extends "res://games/marblex/scripts.gd"
func ev_other_7():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 74.0))
	(GM.f_instance_destroy(self))
