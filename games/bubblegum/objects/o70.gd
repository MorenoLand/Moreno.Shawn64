extends "res://games/bubblegum/objects/o69.gd"
func ev_create():
	v_mypower = 10.0
	alarm[int(0.0)] = 200.0
func ev_alarm_1():
	sprite_index = 50.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_alarm_0():
	(GM.f_motion_add(self, 270.0, 20.0))
	alarm[int(0.0)] = 200.0
func ev_step():
	v_poo = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(51.0, "x"), (GM.vb(51.0, "y") + 107.0)))
	(GM.f_motion_add(self, v_poo, 0.3))
	if (((v_mypower < 1.0))):
		(GM.f_sound_play(2.0))
		for _r78 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
		(GM.f_instance_destroy(self))
func ev_col_52():
	(GM.f_sound_play(22.0))
	v_mypower = v_mypower + (-1.0)
	sprite_index = 53.0
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
