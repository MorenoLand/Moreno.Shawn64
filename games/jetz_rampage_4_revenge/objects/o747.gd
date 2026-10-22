extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 30.0
func ev_alarm_0():
	GM.vsetb(746.0, "x", x)
	GM.vsetb(746.0, "y", y)
	GM.vsetb(746.0, "visible", 1.0)
	(GM.f_instance_destroy(self))
