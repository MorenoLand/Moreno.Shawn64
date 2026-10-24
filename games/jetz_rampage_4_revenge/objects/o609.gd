extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = 1.0
	direction = (GM.f_random(360.0))
	speed = (GM.f_random(6.0))
	gravity_direction = 270.0
	gravity = 0.4
func ev_col_489():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
