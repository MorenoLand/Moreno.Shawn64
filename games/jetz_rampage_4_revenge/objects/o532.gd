extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_left = 0.0
var v_right = 0.0
var v_wee = 0.0
func ev_create():
	v_right = 1.0
	v_left = 0.0
func ev_step():
	if ((((GM.f_random(30.0)) < 1.0))):
		if (((absf(v_right - 1.0) < 0.00001))):
			v_wee = (GM.f_instance_create((x + 40.0), (y + 15.0), 539.0))
		if (((absf(v_left - 1.0) < 0.00001))):
			v_wee = (GM.f_instance_create((x - 40.0), (y + 15.0), 539.0))
