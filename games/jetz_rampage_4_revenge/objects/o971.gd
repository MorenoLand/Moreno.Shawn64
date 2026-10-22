extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 30.0
func ev_destroy():
	GM.view_hborder[0] = (400.0 - 33.0)
	GM.view_vborder[0] = (300.0 - 33.0)
	GM.view_object[int(0.0)] = 7.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	GM.view_object[int(0.0)] = 971.0
