extends "res://games/bubblegum/scripts.gd"
func ev_create():
	GM.view_xview[int(1.0)] = 10.0
	alarm[int(0.0)] = 2.0
	alarm[int(2.0)] = 20.0
	for _r54 in range(int(((GM.f_random(3.0))))):
		(GM.f_instance_create((32.0 + (GM.f_random(575.0))), (-32.0), 75.0))
func ev_alarm_2():
	GM.view_xview[int(1.0)] = 0.0
	(GM.f_instance_destroy(self))
func ev_alarm_1():
	GM.view_xview[int(1.0)] = 10.0
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	GM.view_xview[int(1.0)] = 0.0
	alarm[int(1.0)] = 2.0
