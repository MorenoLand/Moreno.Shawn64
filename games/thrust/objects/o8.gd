extends "res://games/thrust/scripts.gd"
var v_image_single = 0.0
func ev_create():
	direction = (GM.f_random(360.0))
	speed = (1.0 + (GM.f_random(10.0)))
	gravity = 0.3
	gravity_direction = 270.0
	v_image_single = (GM.f_random(3.0))
func ev_col_4():
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_instance_destroy(self))
