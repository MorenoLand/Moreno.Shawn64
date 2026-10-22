extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), ((GM.f_random(5.0)) + 1.0)))
	gravity_direction = 270.0
	gravity = 0.3
func ev_other_0():
	(GM.f_instance_destroy(self))
