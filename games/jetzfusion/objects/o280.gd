extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_sound_play(46.0))
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((absf((GM.f_instance_number(15.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 28.0))
