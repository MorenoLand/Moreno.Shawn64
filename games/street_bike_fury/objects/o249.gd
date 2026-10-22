extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
	image_alpha = 1.0
	(GM.f_motion_add(self, (GM.f_random(360.0)), (GM.f_random(20.0))))
	gravity = 0.3
func ev_alarm_0():
	(GM.f_instance_destroy(self))
