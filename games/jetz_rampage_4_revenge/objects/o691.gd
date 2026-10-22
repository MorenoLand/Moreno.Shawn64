extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(180.0)), (GM.f_random(2.0))))
	gravity_direction = 90.0
	gravity = 0.1
	image_speed = (0.3 + (GM.f_random(0.7)))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
