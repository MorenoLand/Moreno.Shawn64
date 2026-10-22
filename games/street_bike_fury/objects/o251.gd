extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 30.0
	direction = (90.0 + (GM.f_random(90.0)))
	speed = (3.0 + (GM.f_random(3.0)))
	hspeed = hspeed + GM.vb(0.0, "hspeed")
	vspeed = vspeed + GM.vb(0.0, "vspeed")
	gravity = 0.4
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	image_angle = image_angle + 1.0
