extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = (GM.f_random(5.0))
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_604():
	if (((absf(alarm[int(0.0)] - (-1.0)) < 0.00001))):
		alarm[int(0.0)] = (20.0 + (GM.f_random(10.0)))
	vspeed = 0.0
	hspeed = 0.0
func ev_other_0():
	(GM.f_instance_destroy(self))
