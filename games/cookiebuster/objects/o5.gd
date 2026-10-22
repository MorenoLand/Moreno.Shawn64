extends "res://games/cookiebuster/scripts.gd"
var v_image_single = 0.0
func ev_create():
	gravity_direction = 270.0
	gravity = 0.3
	v_image_single = (GM.f_random(2.0))
	direction = (GM.f_random(360.0))
	speed = (GM.f_random(10.0))
	alarm[int(0.0)] = (1.0 + (GM.f_random(20.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
