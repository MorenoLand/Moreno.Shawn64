extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	alarm[int(0.0)] = GM.G["howmany"]
	alarm[int(1.0)] = 15.0
func ev_alarm_1():
	(GM.f_instance_change(self, 28.0, 0.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
