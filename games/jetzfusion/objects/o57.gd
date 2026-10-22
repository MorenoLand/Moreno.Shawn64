extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	for _r52 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 1.0)))), (y + (GM.f_random((sprite_height - 1.0)))), 22.0))
	(GM.f_sound_play(21.0))
	direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0))))
	speed = 15.0
	alarm[int(0.0)] = 35.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
