extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.vb(1.0, "direction") - 180.0), (1.0 + (GM.f_random(2.0)))))
func ev_other_7():
	(GM.f_instance_destroy(self))
