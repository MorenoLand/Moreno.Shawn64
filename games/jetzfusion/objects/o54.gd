extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_instance_create(0.0, 0.0, 360.0))
	for _r50 in range(int((10.0))):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 23.0))
	(GM.f_sound_play(18.0))
	direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0))))
	speed = 20.0
	alarm[int(0.0)] = 30.0
	alarm[int(1.0)] = 2.0
func ev_alarm_1():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 20.0), ((y + (sprite_height / 2.0)) - 20.0), 119.0))
	alarm[int(1.0)] = 2.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_sound_play(23.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_destroy(self))
