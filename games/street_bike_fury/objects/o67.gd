extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (1.0 + (GM.f_random(30.0)))
	gravity = (0.3 * GM.G["gspeed"])
func ev_alarm_0():
	(GM.f_instance_destroy(self))
