extends "res://games/infection2/scripts.gd"
func ev_create():
	image_speed = 0.0
	image_index = (GM.f_floor((GM.f_random(3.99999))))
	gravity = 0.4
	gravity_direction = 270.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1():
	speed = 0.0
	if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
		alarm[int(0.0)] = 5.0
