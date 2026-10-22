extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	speed = speed + (2.0 + (GM.f_random(6.0)))
	gravity_direction = 270.0
	gravity = 0.3
	direction = (GM.f_random(360.0))
	alarm[int(0.0)] = (60.0 + (GM.f_random(10.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((speed > 1.0)):
		image_speed = (speed / 20.0)
	else:
		image_speed = 0.0
func ev_col_603():
	hspeed = 0.0
	vspeed = 0.0
	if (((absf(alarm[int(0.0)] - (-1.0)) < 0.00001))):
		alarm[int(0.0)] = (20.0 + (GM.f_random(10.0)))
func ev_other_0():
	(GM.f_instance_destroy(self))
