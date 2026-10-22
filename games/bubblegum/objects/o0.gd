extends "res://games/bubblegum/scripts.gd"
var v_goleft = 0.0
var v_goright = 0.0
var v_gungot = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
var v_nonblink = 0.0
var v_poom = 0.0
var v_shootready = 0.0
func ev_create():
	(GM.f_sound_stop(7.0))
	v_shootready = 1.0
	v_gungot = 0.0
	v_poom = 0.0
	v_mypower = 3.0
	v_nonblink = 1.0
	v_goright = 1.0
	v_goleft = 1.0
	gravity_direction = 270.0
	gravity = 0.5
func ev_destroy():
	(GM.f_sound_stop(8.0))
	(GM.f_sound_stop(0.0))
func ev_alarm_5():
	v_nonblink = 1.0
func ev_alarm_0():
	v_shootready = 1.0
func ev_step():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 1.0))))) >= 0.5:
		if (not ((((GM.f_keyboard_check(39.0)))) >= 0.5)):
			if (not ((((GM.f_keyboard_check(37.0)))) >= 0.5)):
				friction = 1.0
			else:
				friction = 0.0
	if (not ((((GM.f_keyboard_check(37.0)))) >= 0.5)):
		if (not ((((GM.f_keyboard_check(39.0)))) >= 0.5)):
			(GM.f_sound_stop(0.0))
			v_image_single = 1.0
		else:
			v_image_single = (-1.0)
	if (((absf(GM.room - (1.0 - 1.0)) < 0.00001))):
		if (((x > GM.room_width))):
			x = 32.0
			y = 96.0
			(GM.f_room_goto(4.0))
	if (((absf(GM.room - (1.0 - 2.0)) < 0.00001))):
		if (((x > GM.room_width))):
			(GM.f_room_goto(5.0))
func ev_col_113():
	(GM.f_instance_create(0.0, 0.0, 115.0))
	(GM.f_instance_destroy(self))
func ev_col_112():
	hspeed = 0.0
func ev_col_102():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w1 in GM.with_list((76.0), self):
			if _w1._dead:
				continue
			_w1.other = self
			GM.vset(_w1, "v_mypower", GM.vget(_w1, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w2 in GM.with_list((76.0), self):
				if _w2._dead:
					continue
				_w2.other = self
				GM.vset(_w2, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_92():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w3 in GM.with_list((76.0), self):
			if _w3._dead:
				continue
			_w3.other = self
			GM.vset(_w3, "v_mypower", GM.vget(_w3, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w4 in GM.with_list((76.0), self):
				if _w4._dead:
					continue
				_w4.other = self
				GM.vset(_w4, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_89():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w5 in GM.with_list((76.0), self):
			if _w5._dead:
				continue
			_w5.other = self
			GM.vset(_w5, "v_mypower", GM.vget(_w5, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w6 in GM.with_list((76.0), self):
				if _w6._dead:
					continue
				_w6.other = self
				GM.vset(_w6, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_87():
	GM.view_object[int(0.0)] = 67.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
	for _w7 in GM.with_list((76.0), self):
		if _w7._dead:
			continue
		_w7.other = self
		GM.vset(_w7, "v_mypower", 3.0)
	(GM.f_instance_destroy(self))
func ev_col_83():
	GM.view_object[int(0.0)] = 85.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 85.0))
	(GM.f_instance_destroy(self))
func ev_col_82():
	GM.view_object[int(0.0)] = 84.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 84.0))
	(GM.f_instance_destroy(self))
func ev_col_81():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w8 in GM.with_list((76.0), self):
			if _w8._dead:
				continue
			_w8.other = self
			GM.vset(_w8, "v_mypower", GM.vget(_w8, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w9 in GM.with_list((76.0), self):
				if _w9._dead:
					continue
				_w9.other = self
				GM.vset(_w9, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_75():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w10 in GM.with_list((76.0), self):
			if _w10._dead:
				continue
			_w10.other = self
			GM.vset(_w10, "v_mypower", GM.vget(_w10, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			(GM.f_sound_stop(8.0))
			(GM.f_room_restart())
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_74():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w11 in GM.with_list((76.0), self):
			if _w11._dead:
				continue
			_w11.other = self
			GM.vset(_w11, "v_mypower", GM.vget(_w11, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			(GM.f_sound_stop(8.0))
			(GM.f_room_restart())
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_70():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w12 in GM.with_list((76.0), self):
			if _w12._dead:
				continue
			_w12.other = self
			GM.vset(_w12, "v_mypower", GM.vget(_w12, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			(GM.f_sound_stop(8.0))
			(GM.f_room_restart())
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_69():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w13 in GM.with_list((76.0), self):
			if _w13._dead:
				continue
			_w13.other = self
			GM.vset(_w13, "v_mypower", GM.vget(_w13, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			(GM.f_sound_stop(8.0))
			(GM.f_room_restart())
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_68():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w14 in GM.with_list((76.0), self):
			if _w14._dead:
				continue
			_w14.other = self
			GM.vset(_w14, "v_mypower", GM.vget(_w14, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			(GM.f_sound_stop(8.0))
			(GM.f_room_restart())
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_64():
	GM.view_object[int(0.0)] = 63.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 63.0))
	GM.vsetb(63.0, "vspeed", vspeed)
	GM.vsetb(63.0, "hspeed", hspeed)
	(GM.f_instance_destroy(self))
func ev_col_61():
	hspeed = 0.0
func ev_col_59():
	hspeed = 0.0
func ev_col_58():
	hspeed = 0.0
func ev_col_53():
	hspeed = 0.0
func ev_col_51():
	GM.view_object[int(0.0)] = 50.0
	(GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 50.0))
	(GM.f_instance_destroy(self))
func ev_col_32():
	gravity_direction = 270.0
	gravity = 0.5
func ev_col_31():
	gravity_direction = 90.0
	gravity = 0.3
func ev_col_27():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w15 in GM.with_list((76.0), self):
			if _w15._dead:
				continue
			_w15.other = self
			GM.vset(_w15, "v_mypower", GM.vget(_w15, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w16 in GM.with_list((76.0), self):
				if _w16._dead:
					continue
				_w16.other = self
				GM.vset(_w16, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_23():
	v_poom = vspeed
	(GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 24.0))
	GM.vsetb(24.0, "vspeed", (vspeed / 2.0))
	GM.vsetb(24.0, "hspeed", (hspeed / 2.0))
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	(GM.f_sound_loop(7.0))
	GM.view_object[int(0.0)] = 24.0
	(GM.f_instance_destroy(self))
func ev_col_18():
	GM.view_object[int(0.0)] = 20.0
	(GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 20.0))
	(GM.f_instance_destroy(self))
func ev_col_13():
	(GM.f_sound_play(6.0))
	x = GM.vb(self.other, "x")
	y = (GM.vb(self.other, "y") - 32.0)
	(GM.f_action_move(self, "000000010", 17.0, 0.0))
func ev_col_6():
	if (((absf(v_nonblink - 1.0) < 0.00001))):
		(GM.f_sound_play(18.0))
		for _w17 in GM.with_list((76.0), self):
			if _w17._dead:
				continue
			_w17.other = self
			GM.vset(_w17, "v_mypower", GM.vget(_w17, "v_mypower") + (-1.0))
		if (((v_mypower < 1.0))):
			GM.score = GM.score + (-2000.0)
			GM.view_object[int(0.0)] = 67.0
			(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
			for _w18 in GM.with_list((76.0), self):
				if _w18._dead:
					continue
				_w18.other = self
				GM.vset(_w18, "v_mypower", 3.0)
			(GM.f_instance_destroy(self))
		v_nonblink = 0.0
		alarm[int(5.0)] = 20.0
func ev_col_2():
	hspeed = 0.0
func ev_col_1():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 32.0), 1.0))))) >= 0.5:
		vspeed = 0.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + (-32.0)), 1.0))))) >= 0.5:
		vspeed = 0.0
	if ((((GM.f_place_meeting(self, (x + 32.0), (y + 0.0), 1.0))))) >= 0.5:
		hspeed = 0.0
	if ((((GM.f_place_meeting(self, (x + (-32.0)), (y + 0.0), 1.0))))) >= 0.5:
		hspeed = 0.0
func ev_key_39():
	if (((hspeed < 7.0))):
		(GM.f_motion_add(self, 0.0, 0.5))
	sprite_index = 0.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_key_37():
	if (((hspeed > (-7.0)))):
		(GM.f_motion_add(self, 180.0, 0.5))
	sprite_index = 1.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_key_17():
	if (((absf(v_shootready - 1.0) < 0.00001))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 52.0))
		v_shootready = 0.0
		alarm[int(0.0)] = 5.0
func ev_other_0():
	(GM.f_room_goto_next())
func ev_keypress_117():
	(GM.f_room_goto_next())
func ev_keypress_76():
	if ((((GM.f_file_exists("gum.sav"))))) >= 0.5:
		pass
func ev_keypress_39():
	(GM.f_sound_loop(0.0))
func ev_keypress_38():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 1.0))))) >= 0.5:
		(GM.f_sound_play(1.0))
		(GM.f_motion_add(self, 90.0, 12.0))
func ev_keypress_37():
	(GM.f_sound_loop(0.0))
func ev_keypress_13():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 19.0))))) >= 0.5:
		(GM.f_sound_play(2.0))
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
		GM.view_object[int(0.0)] = 12.0
		(GM.f_instance_create(32.0, 2937.0, 12.0))
		(GM.f_instance_destroy(self))
func ev_keyrelease_38():
	if (((vspeed < 0.0))):
		(GM.f_motion_add(self, 270.0, ((-vspeed) / 2.0)))
