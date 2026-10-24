extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = (GM.f_random(6.0))
	if not ((((GM.f_place_meeting(self, x, y, 71.0)))) >= 0.5):
		(GM.f_instance_destroy(self))
	direction = (40.0 + (GM.f_random(100.0)))
	speed = (3.0 + (GM.f_random(10.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(50.0)))
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_17():
	gravity_direction = 0.0
	gravity = 0.0
	vspeed = 0.0
	hspeed = 0.0
