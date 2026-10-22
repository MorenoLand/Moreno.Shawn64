extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (20.0 / GM.G["gspeed"])
func ev_alarm_0():
	GM.view_angle[int(0.0)] = 0.0
	(GM.f_instance_destroy(self))
func ev_step():
	GM.view_angle[int(0.0)] = ((-1.0) + (GM.f_random(2.0)))
