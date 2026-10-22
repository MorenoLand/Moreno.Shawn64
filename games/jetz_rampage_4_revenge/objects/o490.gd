extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_motion_add(self, (70.0 + (GM.f_random(40.0))), (1.0 + (GM.f_random(3.0)))))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
