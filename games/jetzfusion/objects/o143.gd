extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (1.0 + (GM.f_random(100.0)))
func ev_alarm_0():
	if (not (((absf(GM.room - 6.0) < 0.00001)))):
		(GM.f_instance_create((x + 0.0), (y + 20.0), 6.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 66.0))
	(GM.f_instance_destroy(self))
