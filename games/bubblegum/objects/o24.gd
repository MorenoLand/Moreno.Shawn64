extends "res://games/bubblegum/scripts.gd"
var v_image_single = 0.0
var v_mypower = 0.0
var v_nonblink = 0.0
func ev_create():
	for _r22 in range(int((35.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	friction = 0.1
	v_nonblink = 1.0
func ev_alarm_5():
	v_nonblink = 1.0
func ev_step():
	if (((absf((GM.f_keyboard_check(37.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_keyboard_check(39.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_keyboard_check(40.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_keyboard_check(38.0)) - 0.0) < 0.00001))):
					v_image_single = 0.0
				else:
					v_image_single = (-1.0)
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + (-1.0)), 22.0)))) >= 0.5)):
		(GM.f_sound_stop(7.0))
		GM.view_object[int(0.0)] = 0.0
		(GM.f_instance_create((x + 0.0), (y + (-32.0)), 0.0))
		GM.vsetb(0.0, "vspeed", (-7.0))
		for _r23 in range(int((35.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
		(GM.f_instance_destroy(self))
	if (((speed > 6.0))):
		speed = 6.0
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 101.0))
func ev_col_108():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_107():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w24 in GM.with_list((76.0), self):
			if _w24._dead:
				continue
			_w24.other = self
			GM.vset(_w24, "v_mypower", GM.vget(_w24, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w25 in GM.with_list((76.0), self):
				if _w25._dead:
					continue
				_w25.other = self
				GM.vset(_w25, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_102():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w26 in GM.with_list((76.0), self):
			if _w26._dead:
				continue
			_w26.other = self
			GM.vset(_w26, "v_mypower", GM.vget(_w26, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w27 in GM.with_list((76.0), self):
				if _w27._dead:
					continue
				_w27.other = self
				GM.vset(_w27, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_98():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w28 in GM.with_list((76.0), self):
			if _w28._dead:
				continue
			_w28.other = self
			GM.vset(_w28, "v_mypower", GM.vget(_w28, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w29 in GM.with_list((76.0), self):
				if _w29._dead:
					continue
				_w29.other = self
				GM.vset(_w29, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_97():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w30 in GM.with_list((76.0), self):
			if _w30._dead:
				continue
			_w30.other = self
			GM.vset(_w30, "v_mypower", GM.vget(_w30, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w31 in GM.with_list((76.0), self):
				if _w31._dead:
					continue
				_w31.other = self
				GM.vset(_w31, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_81():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w32 in GM.with_list((76.0), self):
			if _w32._dead:
				continue
			_w32.other = self
			GM.vset(_w32, "v_mypower", GM.vget(_w32, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w33 in GM.with_list((76.0), self):
				if _w33._dead:
					continue
				_w33.other = self
				GM.vset(_w33, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_74():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w34 in GM.with_list((76.0), self):
			if _w34._dead:
				continue
			_w34.other = self
			GM.vset(_w34, "v_mypower", GM.vget(_w34, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w35 in GM.with_list((76.0), self):
				if _w35._dead:
					continue
				_w35.other = self
				GM.vset(_w35, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_54():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w36 in GM.with_list((76.0), self):
			if _w36._dead:
				continue
			_w36.other = self
			GM.vset(_w36, "v_mypower", GM.vget(_w36, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w37 in GM.with_list((76.0), self):
				if _w37._dead:
					continue
				_w37.other = self
				GM.vset(_w37, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_29():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w38 in GM.with_list((76.0), self):
			if _w38._dead:
				continue
			_w38.other = self
			GM.vset(_w38, "v_mypower", GM.vget(_w38, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w39 in GM.with_list((76.0), self):
				if _w39._dead:
					continue
				_w39.other = self
				GM.vset(_w39, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_28():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w40 in GM.with_list((76.0), self):
			if _w40._dead:
				continue
			_w40.other = self
			GM.vset(_w40, "v_mypower", GM.vget(_w40, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w41 in GM.with_list((76.0), self):
				if _w41._dead:
					continue
				_w41.other = self
				GM.vset(_w41, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_2():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_key_40():
	(GM.f_motion_add(self, 270.0, 0.3))
func ev_key_39():
	(GM.f_motion_add(self, 0.0, 0.3))
	sprite_index = 24.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_key_38():
	(GM.f_motion_add(self, 90.0, 0.3))
func ev_key_37():
	(GM.f_motion_add(self, 180.0, 0.3))
	sprite_index = 25.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
