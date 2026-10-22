extends "res://games/bubblegum/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 10.0
	alarm[int(0.0)] = 100.0
func ev_alarm_1():
	sprite_index = 49.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_alarm_0():
	(GM.f_motion_add(self, 270.0, 20.0))
	alarm[int(0.0)] = 200.0
func ev_step():
	(GM.f_motion_add(self, (GM.f_random(360.0)), 0.3))
func ev_col_52():
	(GM.f_sound_play(22.0))
	v_mypower = v_mypower + (-1.0)
	sprite_index = 52.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
	alarm[int(1.0)] = 4.0
func ev_col_10():
	vspeed = 0.0
func ev_col_7():
	(GM.f_instance_create(0.0, 0.0, 71.0))
	(GM.f_sound_play(4.0))
	vspeed = 0.0
func ev_col_2():
	hspeed = 0.0
