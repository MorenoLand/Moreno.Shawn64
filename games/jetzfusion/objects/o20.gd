extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if ((GM.vb(7.0, "hspeed") > 0.0)):
		direction = ((-5.0) + (GM.f_random(10.0)))
	else:
		direction = (175.0 + (GM.f_random(10.0)))
	speed = (2.0 + (GM.f_random(4.0)))
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
	alarm[int(0.0)] = (1.0 + (GM.f_random(5.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
