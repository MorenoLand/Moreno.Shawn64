extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = 2.0
	gravity = 0.4
	speed = speed + (5.0 + (GM.f_random(5.0)))
func ev_col_489():
	for _r263 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r264 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
