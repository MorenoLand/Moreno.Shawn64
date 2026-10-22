extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	for _r45 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	alarm[int(0.0)] = 300.0
	direction = (GM.f_random(180.0))
	speed = (1.0 + (GM.f_random(14.0)))
	gravity_direction = 270.0
	gravity = 0.4
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((speed > 0.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	image_speed = (speed / 15.0)
func ev_col_17():
	friction = 0.3
	vspeed = 0.0
