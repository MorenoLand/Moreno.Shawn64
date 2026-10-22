extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		direction = direction + ((-10.0) + (GM.f_random(20.0)))
	else:
		direction = direction + (170.0 + (GM.f_random(20.0)))
	speed = speed + (9.0 + (GM.f_random(1.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
