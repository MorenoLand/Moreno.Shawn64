extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), ((GM.f_random(5.0)) + 1.0)))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
