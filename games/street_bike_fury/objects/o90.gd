extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (15.0 / GM.G["gspeed"])
	image_speed = 0.0
	image_index = (GM.f_floor((GM.f_random(2.99999))))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
