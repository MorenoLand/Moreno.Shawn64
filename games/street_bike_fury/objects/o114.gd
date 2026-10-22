extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	direction = (GM.f_random(360.0))
	speed = (1.0 + (GM.f_random(5.0)))
	gravity = 0.1
	gravity_direction = 270.0
	hspeed = hspeed + GM.vb(0.0, "hspeed")
	vspeed = vspeed + GM.vb(0.0, "vspeed")
func ev_step():
	image_angle = image_angle + 2.0
func ev_col_1():
	vspeed = 0.0
	hspeed = 0.0
