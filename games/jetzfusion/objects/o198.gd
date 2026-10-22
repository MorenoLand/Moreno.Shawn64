extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (260.0 + (GM.f_random(20.0))), (5.0 + (GM.f_random(5.0)))))
	alarm[int(0.0)] = (1.0 + (GM.f_random(6.0)))
	(GM.f_motion_add(self, GM.vb(196.0, "direction"), GM.vb(196.0, "speed")))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
