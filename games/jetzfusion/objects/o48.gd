extends "res://games/jetzfusion/scripts.gd"
var v_alive = 0.0
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(2.0))
	alarm[int(50.0)] = (1.0 + (GM.f_random(100.0)))
	direction = (160.0 + (GM.f_random(40.0)))
	speed = (5.0 + (GM.f_random(5.0)))
	v_alive = 1.0
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_17():
	y = GM.vb(self.other, "y")
	hspeed = 0.0
	vspeed = 0.0
	gravity_direction = 0.0
	gravity = 0.0
