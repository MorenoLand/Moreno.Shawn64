extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_instance_create(0.0, 280.0, 29.0))
	alarm[int(0.0)] = 20.0
func ev_alarm_4():
	(GM.f_instance_create(0.0, 280.0, 29.0))
	(GM.f_instance_destroy(self))
func ev_alarm_3():
	(GM.f_instance_create(0.0, 280.0, 29.0))
	alarm[int(4.0)] = 20.0
func ev_alarm_2():
	(GM.f_instance_create(0.0, 280.0, 29.0))
	alarm[int(3.0)] = 20.0
func ev_alarm_1():
	(GM.f_instance_create(0.0, 280.0, 29.0))
	alarm[int(2.0)] = 20.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 280.0, 29.0))
	alarm[int(1.0)] = 20.0
