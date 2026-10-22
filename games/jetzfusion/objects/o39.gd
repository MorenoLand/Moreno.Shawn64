extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(3.0))
	speed = ((GM.f_random(15.0)) + 5.0)
	direction = (GM.f_random(360.0))
	gravity_direction = 270.0
	gravity = 0.3
func ev_other_1():
	(GM.f_instance_destroy(self))
