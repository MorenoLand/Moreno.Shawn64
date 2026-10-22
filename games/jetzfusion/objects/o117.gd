extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 300.0
	direction = (40.0 + (GM.f_random(100.0)))
	speed = (10.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.4
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((speed > 0.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 28.0))
	image_speed = (speed / 15.0)
func ev_col_17():
	friction = 0.3
	vspeed = 0.0
