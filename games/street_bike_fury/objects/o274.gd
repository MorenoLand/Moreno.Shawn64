extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 35.0
	image_speed = 0.0
	image_index = (GM.f_floor((GM.f_random(1.9999999999))))
	gravity = (0.3 * GM.G["gspeed"])
	(GM.f_motion_add(self, (GM.f_random(360.0)), (GM.f_random(6.0))))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_instance_destroy(self))
