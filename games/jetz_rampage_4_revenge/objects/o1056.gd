extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	if not (((absf(GM.view_object[int(0.0)] - 1052.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	v_wee = 1.0
	alarm[int(0.0)] = 1.0
	alarm[int(1.0)] = 12.0
func ev_alarm_1():
	GM.view_object[int(0.0)] = 1052.0
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	if (GM.eq(v_wee, 1.0)):
		GM.view_object[int(0.0)] = 499.0
		GM.view_yview[0] = GM.view_yview[0] + 5.0
		v_wee = 0.0
	else:
		if (GM.eq(v_wee, 0.0)):
			GM.view_object[int(0.0)] = 1052.0
			v_wee = 1.0
	alarm[int(0.0)] = 1.0
