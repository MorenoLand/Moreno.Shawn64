extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 45.0
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 95.0), 155.0))
