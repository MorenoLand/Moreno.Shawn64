extends "res://games/jetzfusion/scripts.gd"
var v_alive = 0.0
var v_image_single = 0.0
func ev_create():
	alarm[int(0.0)] = (1.0 + (GM.f_random(10.0)))
	v_image_single = (GM.f_random(2.0))
	direction = ((GM.vb(265.0, "direction") + 170.0) + (GM.f_random(20.0)))
	speed = (1.0 + (GM.f_random(10.0)))
	v_alive = 1.0
	(GM.f_motion_add(self, GM.vb(265.0, "direction"), GM.vb(265.0, "speed")))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_17():
	(GM.f_instance_destroy(self))
