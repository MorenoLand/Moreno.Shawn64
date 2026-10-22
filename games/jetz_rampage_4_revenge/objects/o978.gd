extends "res://games/jetz_rampage_4_revenge/objects/o653.gd"
func ev_create():
	speed = (1.0 + (GM.f_random(8.0)))
	gravity_direction = 270.0
	gravity = 0.4
func ev_step():
	if (((y > v_yyy))):
		(GM.f_instance_destroy(self))
