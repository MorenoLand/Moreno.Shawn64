extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 1.0
	alarm[int(0.0)] = (1.0 + (GM.f_random(5.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
