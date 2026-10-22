extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_motion_add(self, (85.0 + (GM.f_random(10.0))), (2.0 + (GM.f_random(3.0)))))
	alarm[int(0.0)] = (5.0 + (GM.f_random(5.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
