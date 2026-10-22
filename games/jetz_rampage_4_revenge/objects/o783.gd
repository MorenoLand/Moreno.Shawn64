extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_motion_add(self, (30.0 + (GM.f_random(25.0))), (5.0 + (GM.f_random(5.0)))))
func ev_step():
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, 176.0, 224.0)), 0.2))
func ev_other_0():
	(GM.f_instance_destroy(self))
