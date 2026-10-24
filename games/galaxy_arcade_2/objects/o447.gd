extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.5
	(GM.f_motion_set(self, (GM.f_random(180.0)), (GM.f_random(15.0))))
func ev_other_0():
	(GM.f_instance_destroy(self))
