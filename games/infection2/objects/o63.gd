extends "res://games/infection2/scripts.gd"
func ev_create():
	direction = (GM.f_random(360.0))
	speed = (GM.f_random(10.0))
	image_speed = 0.0
	image_index = 2.0
	gravity = 0.4
	gravity_direction = 270.0
func ev_col_1():
	(GM.f_instance_destroy(self))
