extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	direction = (GM.f_random(360.0))
	alarm[int(0.0)] = (GM.f_random(40.0))
	speed = (((1.0 + (GM.f_random(5.0)))) * GM.G["gspeed"])
	gravity = (0.1 * GM.G["gspeed"])
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	image_angle = image_angle + 3.0
