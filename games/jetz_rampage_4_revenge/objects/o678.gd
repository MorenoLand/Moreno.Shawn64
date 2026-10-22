extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_screen_gamma(0.2, 0.0, 0.0))
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	(GM.f_instance_destroy(self))
