extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.5
	direction = (80.0 + (GM.f_random(20.0)))
	speed = (10.0 + (GM.f_random(15.0)))
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 20.0), ((y + (sprite_height / 2.0)) - 20.0), 58.0))
	alarm[int(0.0)] = 5.0
func ev_other_0():
	(GM.f_instance_destroy(self))
