extends "res://games/thrust/scripts.gd"
var v_shake = 0.0
func ev_create():
	alarm[int(0.0)] = 2.0
	alarm[int(1.0)] = 25.0
	v_shake = 35.0
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		if ((absf(GM.view_object[int(0.0)] - 0.0) < 0.00001)):
			GM.view_object[int(0.0)] = 13.0
			GM.view_yview[0] = GM.view_yview[0] + 25.0
		else:
			GM.view_object[int(0.0)] = 0.0
		alarm[int(0.0)] = 2.0
	else:
		(GM.f_instance_destroy(self))
