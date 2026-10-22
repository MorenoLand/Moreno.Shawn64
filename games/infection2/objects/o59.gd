extends "res://games/infection2/scripts.gd"
var v_go = 0.0
func ev_create():
	v_go = 0.0
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	alarm[int(0.0)] = 10.0
	(GM.f_instance_create((x + 20.0), (y - 20.0), 56.0))
func ev_step():
	if (((GM.vb(0.0, "x") > (x - 150.0)) and (absf(v_go - 0.0) < 0.00001))):
		for _r15 in range(int((70.0))):
			(GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 37.0))
		for _r16 in range(int((20.0))):
			(GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 33.0))
		for _r17 in range(int((10.0))):
			(GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 36.0))
		for _r18 in range(int((1.0))):
			(GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 38.0))
		v_go = 1.0
		alarm[int(0.0)] = 10.0
		alarm[int(1.0)] = 90.0
