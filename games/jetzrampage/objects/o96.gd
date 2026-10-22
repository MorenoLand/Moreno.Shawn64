extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (80.0 + (GM.f_random(20.0))), ((GM.f_random(10.0)) + 1.0)))
	gravity_direction = 270.0
	gravity = 0.3
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
