extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), 10.0))
	alarm[int(0.0)] = (1.0 + (GM.f_random(20.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
