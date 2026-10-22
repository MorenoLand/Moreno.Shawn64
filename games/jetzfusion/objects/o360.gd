extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if (((absf((GM.f_instance_number(467.0)) - 1.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	(GM.f_screen_gamma(0.1, 0.1, 0.0))
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	(GM.f_instance_destroy(self))
