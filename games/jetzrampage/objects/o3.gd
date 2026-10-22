extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (260.0 + (GM.f_random(20.0))), ((GM.f_random(15.0)) + 1.0)))
func ev_col_16():
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
