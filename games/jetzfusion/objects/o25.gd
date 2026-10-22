extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(5.0)))))
	gravity_direction = 270.0
	gravity = 0.3
	alarm[int(0.0)] = (1.0 + (GM.f_random(10.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
