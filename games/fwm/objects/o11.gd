extends "res://games/fwm/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, ((-10.0) + (GM.f_random(20.0))), (GM.f_random(15.0))))
	alarm[int(0.0)] = ((GM.f_random(15.0)) + 1.0)
func ev_alarm_0():
	(GM.f_instance_destroy(self))
