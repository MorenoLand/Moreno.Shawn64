extends "res://games/bubblegum/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(3.0))
	(GM.f_motion_set(self, (GM.f_random(180.0)), ((GM.f_random(15.0)) + 1.0)))
	gravity_direction = 270.0
	gravity = 0.3
func ev_other_0():
	(GM.f_instance_destroy(self))
