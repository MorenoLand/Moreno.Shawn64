extends "res://games/jetzrampage2/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(4.0))
	alarm[int(0.0)] = 150.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
