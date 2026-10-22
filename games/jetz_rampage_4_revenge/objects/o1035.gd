extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	if (((GM.f_instance_number(1030.0)) > 0.0)):
		alarm[int(0.0)] = (50.0 + (GM.f_random(30.0)))
	if (((GM.f_instance_number(1031.0)) > 0.0)):
		alarm[int(0.0)] = (30.0 + (GM.f_random(30.0)))
func ev_alarm_0():
	(GM.f_instance_create((GM.f_random(1500.0)), (GM.f_random((GM.room_height - 300.0))), 1036.0))
	if (((GM.f_instance_number(1030.0)) > 0.0)):
		alarm[int(0.0)] = (50.0 + (GM.f_random(30.0)))
	if (((GM.f_instance_number(1031.0)) > 0.0)):
		alarm[int(0.0)] = (30.0 + (GM.f_random(30.0)))
func ev_other_0():
	if ((speed > 12.0)):
		(GM.f_instance_destroy(self))
