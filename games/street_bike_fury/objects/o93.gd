extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 15.0
	direction = (GM.f_random(360.0))
	speed = ((1.0 + (GM.f_random(3.0))))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	image_alpha = image_alpha - 0.05
