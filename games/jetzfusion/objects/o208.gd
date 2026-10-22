extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	gravity_direction = 90.0
	gravity = 0.1
	alarm[int(0.0)] = (10.0 + (GM.f_random(25.0)))
	v_image_single = (GM.f_random(3.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
