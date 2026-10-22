extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (160.0 + (GM.f_random(40.0))), ((GM.f_random(6.0)) + 1.0)))
	alarm[int(0.0)] = ((GM.f_random(5.0)) + 1.0)
func ev_alarm_0():
	(GM.f_instance_destroy(self))
