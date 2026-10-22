extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	direction = (80.0 + (GM.f_random(20.0)))
	speed = (1.0 + (GM.f_random(6.0)))
func ev_other_7():
	(GM.f_instance_destroy(self))
