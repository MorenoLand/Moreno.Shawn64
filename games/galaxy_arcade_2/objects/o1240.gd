extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, ((GM.vb(1198.0, "direction") + 160.0) + (GM.f_random(40.0))), (GM.f_random(15.0))))
func ev_other_7():
	(GM.f_instance_destroy(self))
