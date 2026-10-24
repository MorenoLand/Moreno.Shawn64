extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = 1.0
	gravity = 0.5
	speed = speed + (5.0 + (GM.f_random(10.0)))
func ev_col_489():
	(GM.f_sound_play(130.0))
	for _r261 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((20.0 - 2.5)))), 599.0))
	for _r262 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(20.0))), 608.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
