extends "res://games/jetzrampage2/scripts.gd"
var v_fall = 0.0
var v_hitme = 0.0
var v_mypower = 0.0
func ev_create():
	depth = x
	v_fall = 0.0
	v_mypower = 3.0
	v_hitme = 1.0
	v_mypower = 4.0
func ev_alarm_1():
	if not ((((GM.f_place_meeting(self, x, y, 229.0)))) >= 0.5):
		(GM.f_instance_create((x + 40.0), (y + 40.0), 229.0))
func ev_alarm_0():
	v_hitme = 1.0
func ev_col_108():
	gravity_direction = 270.0
	gravity = 0.3
func ev_col_103():
	for _r27 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
	if (((absf(v_hitme - 1.0) < 0.00001))):
		v_mypower = (-1.0)
		v_hitme = 0.0
		if ((absf(sprite_index - 229.0) < 0.00001)):
			sprite_index = 233.0
		if ((absf(sprite_index - 190.0) < 0.00001)):
			(GM.f_sound_play(162.0))
			sprite_index = 229.0
			if ((absf((GM.f_round((GM.f_random(5.0)))) - 5.0) < 0.00001)):
				alarm[int(1.0)] = ((GM.f_random(100.0)) + 1.0)
		if ((absf(sprite_index - 226.0) < 0.00001)):
			sprite_index = 232.0
		if ((absf(sprite_index - 22.0) < 0.00001)):
			sprite_index = 226.0
		if ((absf(sprite_index - 497.0) < 0.00001)):
			sprite_index = 498.0
		if ((absf(sprite_index - 489.0) < 0.00001)):
			sprite_index = 497.0
		if ((absf(sprite_index - 499.0) < 0.00001)):
			sprite_index = 500.0
		if ((absf(sprite_index - 490.0) < 0.00001)):
			sprite_index = 499.0
			if ((absf((GM.f_round((GM.f_random(5.0)))) - 5.0) < 0.00001)):
				alarm[int(1.0)] = ((GM.f_random(100.0)) + 1.0)
		if ((absf(sprite_index - 1754.0) < 0.00001)):
			sprite_index = 1755.0
		if ((absf(sprite_index - 510.0) < 0.00001)):
			sprite_index = 1754.0
		if ((absf(sprite_index - 1756.0) < 0.00001)):
			sprite_index = 1757.0
		if ((absf(sprite_index - 512.0) < 0.00001)):
			sprite_index = 1756.0
			if ((absf((GM.f_round((GM.f_random(5.0)))) - 5.0) < 0.00001)):
				alarm[int(1.0)] = ((GM.f_random(100.0)) + 1.0)
		if (((v_mypower < 1.0))):
			if ((((GM.f_random(5.0)) < 1.0))):
				if (not ((((GM.f_place_meeting(self, (x + 40.0), (y + 0.0), 226.0)))) >= 0.5)):
					(GM.f_instance_create((x + 40.0), (y + 0.0), 226.0))
		alarm[int(0.0)] = 4.0
func ev_col_101():
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_sound_play(15.0))
	for _r28 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_col_17():
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_instance_create((x + 20.0), (y + 20.0), 233.0))
	(GM.f_sound_play(15.0))
	for _r29 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_16():
	(GM.f_instance_create((x + 20.0), (y + 20.0), 233.0))
	(GM.f_sound_play(15.0))
	(GM.f_instance_create(0.0, 0.0, 132.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
	for _r30 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
