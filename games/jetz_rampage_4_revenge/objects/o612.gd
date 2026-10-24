extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = (GM.f_random(3.0))
	direction = (85.0 + (GM.f_random(10.0)))
	speed = (GM.f_random(20.0))
	gravity = 0.5
	gravity_direction = 270.0
	alarm[int(0.0)] = (1.0 + (GM.f_random(35.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_604():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
