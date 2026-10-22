extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 15.0
	direction = (GM.f_random(360.0))
	speed = (1.0 + (GM.f_random(2.0)))
	hspeed = hspeed + GM.vb(0.0, "hspeed")
	vspeed = vspeed + GM.vb(0.0, "vspeed")
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	image_alpha = image_alpha - 0.05
