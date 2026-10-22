extends "res://games/jetzfusion/scripts.gd"
var v_alive = 0.0
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(3.0))
	alarm[int(0.0)] = (1.0 + (GM.f_random(20.0)))
	v_alive = 1.0
	depth = (-1.0)
	alarm[int(1.0)] = 5.0
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_1():
	depth = 5.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_17():
	y = (GM.vb(17.0, "y") + 1.0)
	hspeed = 0.0
	vspeed = 0.0
