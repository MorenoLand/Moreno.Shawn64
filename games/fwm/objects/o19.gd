extends "res://games/fwm/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.3
	(GM.f_motion_set(self, ((GM.vb(13.0, "direction") + 170.0) + (GM.f_random(20.0))), ((GM.f_random(10.0)) + 10.0)))
func ev_other_0():
	(GM.f_instance_destroy(self))
