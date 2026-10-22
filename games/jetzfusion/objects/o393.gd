extends "res://games/jetzfusion/scripts.gd"
var v_alive = 0.0
var v_mypower = 0.0
var v_spite_height = 0.0
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(300.0))
	v_alive = 1.0
	image_speed = 0.5
	v_mypower = 3.0
	(GM.f_action_move(self, "000001000", (3.0 + (GM.f_random(3.0))), 0.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 309.0
		(GM.f_action_move(self, "000100000", (3.0 + (GM.f_random(3.0))), 0.0))
func ev_alarm_0():
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 28.0))
	alarm[int(0.0)] = 1.0
func ev_col_310():
	v_mypower = v_mypower - 1.0
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((v_mypower < 1.0))):
			for _r524 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
			(GM.f_sound_play(36.0))
			gravity_direction = 270.0
			gravity = 0.3
			alarm[int(0.0)] = 1.0
			v_alive = 0.0
		else:
			(GM.f_sound_play(34.0))
			for _r525 in range(int((15.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
func ev_col_17():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 392.0))
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 193.0))
	(GM.f_sound_play(23.0))
	for _r526 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 47.0))
	for _r527 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 27.0))
	for _r528 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	(GM.f_instance_destroy(self))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
