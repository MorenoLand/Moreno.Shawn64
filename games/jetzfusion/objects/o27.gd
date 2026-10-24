extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = (GM.f_random(2.0))
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
	gravity_direction = 270.0
	gravity = 0.4
	alarm[int(0.0)] = (1.0 + (GM.f_random(25.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_17():
	(GM.f_instance_destroy(self))
