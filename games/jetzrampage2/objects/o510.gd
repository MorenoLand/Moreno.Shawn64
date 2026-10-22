extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (70.0 + (GM.f_random(40.0))), (GM.f_random(10.0))))
func ev_other_7():
	(GM.f_instance_destroy(self))
