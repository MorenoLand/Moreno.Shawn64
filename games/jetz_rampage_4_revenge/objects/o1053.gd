extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, (GM.vb(1052.0, "x") + (GM.f_random(60.0))), (GM.vb(1052.0, "y") + (GM.f_random(60.0))))), (5.0 + (GM.f_random(5.0)))))
	alarm[int(0.0)] = 25.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1052():
	(GM.f_instance_destroy(self))
