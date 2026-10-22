extends "res://games/ski_racer_2/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(4.0))
	direction = (GM.f_random(360.0))
	speed = (5.0 + (GM.f_random(5.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(5.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
