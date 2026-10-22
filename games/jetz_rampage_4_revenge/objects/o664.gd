extends "res://games/jetz_rampage_4_revenge/objects/o653.gd"
func ev_create():
	v_image_single = (GM.f_random(3.0))
	speed = (7.0 + (GM.f_random(3.0)))
	gravity_direction = 270.0
	gravity = 0.4
