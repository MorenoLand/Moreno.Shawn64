extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 15.0
	gravity = 0.1
	gravity_direction = 270.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	image_alpha = image_alpha - 0.05
