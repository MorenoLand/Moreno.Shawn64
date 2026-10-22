extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	direction = (GM.f_random(180.0))
	speed = (1.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.3
func ev_step():
	if ((vspeed > 4.0)):
		vspeed = 4.0
	image_speed = (speed / 15.0)
func ev_col_17():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
