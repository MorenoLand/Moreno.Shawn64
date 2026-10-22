extends "res://games/jetzrampage/objects/o196.gd"
func ev_create():
	(GM.f_motion_set(self, (170.0 + (GM.f_random(20.0))), ((GM.f_random(20.0)) + 1.0)))
	gravity_direction = 270.0
	gravity = 0.3
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
