extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	image_speed = (0.7 + (GM.f_random(0.3)))
func ev_other_7():
	(GM.f_instance_destroy(self))
