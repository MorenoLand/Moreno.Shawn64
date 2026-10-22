extends "res://games/mini_golf_pro/scripts.gd"
var v_xxx = 0.0
var v_yyy = 0.0
func ev_create():
	vspeed = (GM.f_random(1.0))
	gravity = 0.05
	hspeed = ((-1.0) + (GM.f_random(2.0)))
	v_xxx = x
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((y > (v_yyy - 30.0)) and (absf(alarm[int(0.0)] - (-1.0)) < 0.00001))):
		vspeed = 0.0
		hspeed = 0.0
		gravity = 0.0
		alarm[int(0.0)] = 40.0
	if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
		if ((v_xxx < x)):
			hspeed = hspeed - 0.1
		if ((v_xxx > x)):
			hspeed = hspeed + 0.1
	image_angle = (hspeed * 15.0)
