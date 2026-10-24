extends "res://games/jetzfusion/scripts.gd"
var v_chargeup = 0.0
var v_evil = 0.0
var v_fade = 0.0
var v_guyleft = 0.0
var v_guyleft2 = 0.0
var v_guyright = 0.0
var v_guyright2 = 0.0
var v_malfo = 0.0
var v_mode = 0.0
var v_nohelmet = 0.0
var v_start = 0.0
var v_weapon = 0.0
var v_weaponready = 0.0
func ev_create():
	(GM.f_sound_play(20.0))
	(GM.f_sound_loop(25.0))
	(GM.f_action_move(self, "000000001", 0.01, 0.0))
	v_start = 1.0
	v_guyright2 = 1.0
	v_guyleft2 = 1.0
	v_weapon = 1.0
	v_weaponready = 1.0
	GM.view_object[0] = 7.0
	GM.view_hborder[0] = (400.0 - (sprite_width / 2.0))
	GM.view_vborder[0] = (300.0 - (sprite_height / 2.0))
	v_chargeup = 0.0
	GM.G["grenades"] = 30.0
	v_evil = 0.0
	if ((absf(GM.room - 6.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, 0.1))
	else:
		(GM.f_motion_add(self, 90.0, 5.0))
	v_nohelmet = 0.0
	v_mode = 0.0
	v_malfo = 0.0
	friction = 0.1
func ev_destroy():
	GM.background_hspeed[int(1.0)] = 0.0
	GM.background_hspeed[int(0.0)] = 0.0
func ev_alarm_1():
	v_mode = 3.0
func ev_alarm_0():
	v_mode = 2.0
	visible = 0.0
	GM.vsetb(10.0, "visible", 0.0)
	v_fade = 1.0
	(GM.f_screen_gamma(v_fade, 0.0, 0.0))
	alarm[int(1.0)] = (GM.room_speed * 1.5)
	(GM.f_instance_create((GM.view_xview[int(0.0)] + (GM.view_wview[int(0.0)] / 2.0)), (GM.view_yview[int(0.0)] + (GM.view_hview[int(0.0)] / 2.0)), 40.0))
	GM.view_object[int(0.0)] = 40.0
func ev_step():
	if (((absf(v_start - 1.0) < 0.00001))):
		if (absf(v_mode - 1.0) < 0.00001):
			for _r1 in range(int(10.0)):
				(GM.f_instance_create((GM.view_xview[int(0.0)] + (GM.f_random(GM.view_wview[int(0.0)]))), (GM.view_yview[int(0.0)] + (GM.f_random(GM.view_hview[int(0.0)]))), 38.0))
			speed = speed - 0.5
		if (absf(v_mode - 2.0) < 0.00001):
			if (v_fade > 0.0):
				v_fade = v_fade - 0.02
				(GM.f_screen_gamma(v_fade, 0.0, 0.0))
			else:
				(GM.f_screen_gamma(0.0, 0.0, 0.0))
			for _r2 in range(int(20.0)):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 39.0))
			if (absf((GM.f_floor((GM.f_random(20.0)))) - 0.0) < 0.00001):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
		if (((absf(v_malfo - 0.0) < 0.00001))):
			if ((speed < 0.5)):
				speed = 0.5
			if ((hspeed > 0.0)):
				v_guyright = 1.0
				v_guyleft = 0.0
			if ((hspeed < 0.0)):
				v_guyright = 0.0
				v_guyleft = 1.0
			if ((speed > 16.0)):
				speed = 16.0
			if ((absf(v_mode - 0.0) < 0.00001)):
				for _r3 in range(int((5.0))):
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
			if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
				GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
				GM.background_hspeed[int(0.0)] = (hspeed / 10.0)
			else:
				GM.background_hspeed[int(1.0)] = 0.0
				GM.background_hspeed[int(0.0)] = 0.0
			if (((absf(v_evil - 1.0) < 0.00001))):
				if ((((GM.f_random(25.0)) < 1.0))):
					(GM.f_instance_create(((x + (-10.0)) + (GM.f_random(50.0))), ((y + (-10.0)) + (GM.f_random(50.0))), 8.0))
		else:
			if ((((GM.f_random(20.0)) < 1.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
			if (((hspeed < 0.0))):
				(GM.f_action_move(self, "000001000", 0.1, 0.0))
			v_guyright = 1.0
			v_guyleft = 0.0
			friction = 0.0
			for _r4 in range(int((3.0))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 28.0))
			if (((absf((GM.f_instance_number(203.0)) - 1.0) < 0.00001))):
				if ((hspeed < 20.0)):
					(GM.f_motion_add(self, 0.0, 0.3))
				if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
					GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
					GM.background_hspeed[int(0.0)] = (hspeed / 5.0)
				else:
					GM.background_hspeed[int(1.0)] = 0.0
					GM.background_hspeed[int(0.0)] = 0.0
			if (((absf((GM.f_instance_number(205.0)) - 1.0) < 0.00001))):
				if ((hspeed < 30.0)):
					(GM.f_motion_add(self, 0.0, 0.3))
				if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
					GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
					GM.background_hspeed[int(0.0)] = (hspeed / 5.0)
				else:
					GM.background_hspeed[int(1.0)] = 0.0
					GM.background_hspeed[int(0.0)] = 0.0
			for _r5 in range(int((10.0))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
func ev_col_464():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		if (((GM.G["jhealth"] < 100.0))):
			(GM.f_sound_play(36.0))
			for _r6 in range(int((5.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			GM.G["jhealth"] = GM.G["jhealth"] + 1.0
			self.ev_user(0.0)
func ev_col_436():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		GM.G["jhealth"] = GM.G["jhealth"] + 10.0
	for _w7 in GM.with_list((170.0), self):
		if _w7._dead:
			continue
		_w7.other = self
		(GM.f_instance_destroy(_w7))
	(GM.f_sound_stop(38.0))
	(GM.f_sound_play(44.0))
	for _w8 in GM.with_list((435.0), self):
		if _w8._dead:
			continue
		_w8.other = self
		(GM.f_instance_destroy(_w8))
	for _w9 in GM.with_list((438.0), self):
		if _w9._dead:
			continue
		_w9.other = self
		(GM.f_instance_destroy(_w9))
func ev_col_395():
	if (((absf((GM.f_instance_number(384.0)) - 0.0) < 0.00001))):
		(GM.f_sound_play(68.0))
		for _r10 in range(int((3.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		(GM.f_motion_add(self, (-(GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(394.0, "x") + (GM.vb(394.0, "sprite_width") / 2.0)), (GM.vb(394.0, "y") + (GM.vb(394.0, "sprite_width") / 2.0))))), 3.0))
		if (not ((((GM.G["jhealth"] + 2.0) > 100.0)))):
			GM.G["jhealth"] = GM.G["jhealth"] + 2.0
		self.ev_user(0.0)
	if ((((GM.f_random(10.0)) < 1.0))):
		GM.G["jhealth"] = GM.G["jhealth"] + 1.0
func ev_col_345():
	(GM.f_sound_stop(25.0))
	(GM.f_sound_stop(26.0))
	for _w11 in GM.with_list((113.0), self):
		if _w11._dead:
			continue
		_w11.other = self
		(GM.f_instance_create(_w11.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w11))
	for _w12 in GM.with_list((118.0), self):
		if _w12._dead:
			continue
		_w12.other = self
		(GM.f_instance_create(_w12.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w12))
	for _w13 in GM.with_list((129.0), self):
		if _w13._dead:
			continue
		_w13.other = self
		(GM.f_instance_create(_w13.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w13))
	for _w14 in GM.with_list((120.0), self):
		if _w14._dead:
			continue
		_w14.other = self
		(GM.f_instance_create(_w14.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w14))
	for _w15 in GM.with_list((127.0), self):
		if _w15._dead:
			continue
		_w15.other = self
		(GM.f_instance_create(_w15.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w15))
	(GM.f_sound_play(30.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 346.0))
	for _w16 in GM.with_list((49.0), self):
		if _w16._dead:
			continue
		_w16.other = self
		(GM.f_instance_destroy(_w16))
	(GM.f_instance_destroy(self))
func ev_col_342():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		if (not ((((GM.G["jhealth"] + 1.0) > 100.0)))):
			GM.G["jhealth"] = GM.G["jhealth"] + 1.0
		self.ev_user(0.0)
func ev_col_338():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		if (((GM.G["jhealth"] < 100.0))):
			(GM.f_sound_play(36.0))
			for _r17 in range(int((5.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			GM.G["jhealth"] = GM.G["jhealth"] + 1.0
			self.ev_user(0.0)
func ev_col_300():
	vspeed = 0.0
func ev_col_256():
	(GM.f_sound_stop(25.0))
	(GM.f_sound_stop(26.0))
	for _w18 in GM.with_list((113.0), self):
		if _w18._dead:
			continue
		_w18.other = self
		(GM.f_instance_create(_w18.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w18))
	for _w19 in GM.with_list((118.0), self):
		if _w19._dead:
			continue
		_w19.other = self
		(GM.f_instance_create(_w19.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w19))
	for _w20 in GM.with_list((129.0), self):
		if _w20._dead:
			continue
		_w20.other = self
		(GM.f_instance_create(_w20.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w20))
	for _w21 in GM.with_list((120.0), self):
		if _w21._dead:
			continue
		_w21.other = self
		(GM.f_instance_create(_w21.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w21))
	for _w22 in GM.with_list((127.0), self):
		if _w22._dead:
			continue
		_w22.other = self
		(GM.f_instance_create(_w22.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w22))
	for _r23 in range(int((10.0))):
		(GM.f_instance_create(((x + (-8.0)) + (GM.f_random(sprite_width))), ((y + (-8.0)) + (GM.f_random(sprite_height))), 23.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 257.0))
	for _w24 in GM.with_list((49.0), self):
		if _w24._dead:
			continue
		_w24.other = self
		(GM.f_instance_destroy(_w24))
	(GM.f_instance_destroy(self))
func ev_col_253():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		if (((GM.G["jhealth"] < 100.0))):
			(GM.f_sound_play(36.0))
			for _r25 in range(int((5.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			GM.G["jhealth"] = GM.G["jhealth"] + 1.0
			self.ev_user(0.0)
func ev_col_176():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		GM.G["jhealth"] = GM.G["jhealth"] + 25.0
func ev_col_120():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		if (((GM.G["jhealth"] < 100.0))):
			(GM.f_sound_play(36.0))
			for _r26 in range(int((5.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			GM.G["jhealth"] = GM.G["jhealth"] + 1.0
			self.ev_user(0.0)
func ev_col_62():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		if (((GM.G["jhealth"] < 100.0))):
			(GM.f_sound_play(36.0))
			for _r27 in range(int((5.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			GM.G["jhealth"] = GM.G["jhealth"] + 1.0
			self.ev_user(0.0)
func ev_col_57():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		if (not ((((GM.G["jhealth"] + 1.0) > 100.0)))):
			if (((absf((GM.f_instance_number(429.0)) - 1.0) < 0.00001))):
				GM.G["jhealth"] = GM.G["jhealth"] + 0.5
			else:
				GM.G["jhealth"] = GM.G["jhealth"] + 1.0
		self.ev_user(0.0)
		for _w28 in GM.with_list((self.other), self):
			if _w28._dead:
				continue
			_w28.other = self
			(GM.f_instance_destroy(_w28))
func ev_col_54():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		(GM.f_sound_play(34.0))
		for _r29 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		if (not ((((GM.G["jhealth"] + 2.0) > 100.0)))):
			GM.G["jhealth"] = GM.G["jhealth"] + 2.0
		self.ev_user(0.0)
func ev_col_17():
	vspeed = 0.0
func ev_col_14():
	if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
		direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_width") / 2.0)))) - 180.0)
		speed = 10.0
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		if (not ((((GM.G["jhealth"] + 1.0) > 100.0)))):
			GM.G["jhealth"] = GM.G["jhealth"] + 1.0
		self.ev_user(0.0)
func ev_key_40():
	if (((absf(v_mode - 0.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(438.0)) - 1.0) < 0.00001))):
				(GM.f_motion_add(self, 90.0, 0.6))
			else:
				(GM.f_motion_add(self, 270.0, 0.6))
			for _r30 in range(int((5.0))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 19.0))
	if (((absf(v_malfo - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 270.0, 0.4))
func ev_key_39():
	if (((absf(v_malfo - 0.0) < 0.00001))):
		if (((absf(v_mode - 0.0) < 0.00001))):
			if (((absf(v_start - 1.0) < 0.00001))):
				if (((absf((GM.f_instance_number(438.0)) - 1.0) < 0.00001))):
					v_guyleft2 = 1.0
					(GM.f_motion_add(self, 180.0, 0.8))
				else:
					v_guyright2 = 1.0
					(GM.f_motion_add(self, 0.0, 0.8))
func ev_key_38():
	if (((absf(v_mode - 0.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(438.0)) - 1.0) < 0.00001))):
				(GM.f_motion_add(self, 270.0, 0.6))
			else:
				(GM.f_motion_add(self, 90.0, 0.6))
			for _r31 in range(int((5.0))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
	if (((absf(v_malfo - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 90.0, 0.4))
func ev_key_37():
	if (((absf(v_malfo - 0.0) < 0.00001))):
		if (((absf(v_mode - 0.0) < 0.00001))):
			if (((absf(v_start - 1.0) < 0.00001))):
				if (((absf((GM.f_instance_number(438.0)) - 1.0) < 0.00001))):
					v_guyright2 = 1.0
					(GM.f_motion_add(self, 0.0, 0.8))
				else:
					v_guyleft2 = 1.0
					(GM.f_motion_add(self, 180.0, 0.8))
func ev_other_10():
	if (((absf(v_evil - 0.0) < 0.00001))):
		if (((GM.G["jhealth"] > 50.0))):
			(GM.f_sound_play(35.0))
			v_evil = 1.0
	if (((absf(v_nohelmet - 0.0) < 0.00001))):
		if (((GM.G["jhealth"] > 75.0))):
			(GM.f_sound_play(35.0))
			(GM.f_sound_play(23.0))
			(GM.f_instance_create((x + 0.0), (y + 0.0), 12.0))
			v_nohelmet = 1.0
	if (((GM.G["jhealth"] > 99.0))):
		if (((absf((GM.f_instance_number(265.0)) - 0.0) < 0.00001))):
			if (((absf(v_mode - 0.0) < 0.00001))):
				for _w32 in GM.with_list((113.0), self):
					if _w32._dead:
						continue
					_w32.other = self
					(GM.f_instance_create(_w32.x, 0.0, 114.0))
					(GM.f_instance_destroy(_w32))
				for _w33 in GM.with_list((118.0), self):
					if _w33._dead:
						continue
					_w33.other = self
					(GM.f_instance_create(_w33.x, 0.0, 114.0))
					(GM.f_instance_destroy(_w33))
				for _w34 in GM.with_list((129.0), self):
					if _w34._dead:
						continue
					_w34.other = self
					(GM.f_instance_create(_w34.x, 0.0, 114.0))
					(GM.f_instance_destroy(_w34))
				for _w35 in GM.with_list((120.0), self):
					if _w35._dead:
						continue
					_w35.other = self
					(GM.f_instance_create(_w35.x, 0.0, 114.0))
					(GM.f_instance_destroy(_w35))
				for _w36 in GM.with_list((127.0), self):
					if _w36._dead:
						continue
					_w36.other = self
					(GM.f_instance_create(_w36.x, 0.0, 114.0))
					(GM.f_instance_destroy(_w36))
				for _w37 in GM.with_list((10.0), self):
					if _w37._dead:
						continue
					_w37.other = self
					(GM.f_instance_destroy(_w37))
				(GM.f_sound_play(23.0))
				(GM.f_action_move(self, "000010000", 0.0, 0.0))
				alarm[int(0.0)] = GM.room_speed
				v_mode = 1.0
		GM.G["jhealth"] = 100.0
func ev_other_1():
	(self.script_outsidestayin(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_other_0():
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
	y = y - 1.0
func ev_draw():
	(GM.f_draw_sprite_scaled(235.0, 0.0, x, 540.0, (y / 540.0)))
	if ((absf(v_evil - 0.0) < 0.00001)):
		if ((absf(v_guyright - 1.0) < 0.00001)):
			if ((hspeed < 18.0)):
				(GM.f_draw_sprite(1.0, (hspeed / 0.5), x, y))
			else:
				(GM.f_draw_sprite(1.0, 36.0, x, y))
		if ((absf(v_guyleft - 1.0) < 0.00001)):
			if ((hspeed > (-18.0))):
				(GM.f_draw_sprite(0.0, ((-hspeed) / 0.5), x, y))
			else:
				(GM.f_draw_sprite(0.0, 36.0, x, y))
	else:
		if ((absf(v_nohelmet - 0.0) < 0.00001)):
			if ((absf(v_guyright - 1.0) < 0.00001)):
				if ((hspeed < 18.0)):
					(GM.f_draw_sprite(3.0, (hspeed / 0.5), x, y))
				else:
					(GM.f_draw_sprite(3.0, 36.0, x, y))
			if ((absf(v_guyleft - 1.0) < 0.00001)):
				if ((hspeed > (-18.0))):
					(GM.f_draw_sprite(2.0, ((-hspeed) / 0.5), x, y))
				else:
					(GM.f_draw_sprite(2.0, 36.0, x, y))
		else:
			if ((absf(v_nohelmet - 1.0) < 0.00001)):
				if ((absf(v_guyright - 1.0) < 0.00001)):
					if ((hspeed < 18.0)):
						(GM.f_draw_sprite(5.0, (hspeed / 0.5), x, y))
					else:
						(GM.f_draw_sprite(5.0, 35.0, x, y))
				if ((absf(v_guyleft - 1.0) < 0.00001)):
					if ((hspeed > (-18.0))):
						(GM.f_draw_sprite(4.0, ((-hspeed) / 0.5), x, y))
					else:
						(GM.f_draw_sprite(4.0, 35.0, x, y))
func ev_keypress_40():
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_sound_loop(26.0))
func ev_keypress_38():
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_sound_loop(26.0))
func ev_keypress_16():
	if (((absf(v_start - 1.0) < 0.00001))):
		if (((absf(v_mode - 0.0) < 0.00001))):
			for _w38 in GM.with_list((384.0), self):
				if _w38._dead:
					continue
				_w38.other = self
				(GM.f_instance_destroy(_w38))
			(GM.f_sound_stop(52.0))
			GM.vsetb(10.0, "visible", 1.0)
			(GM.f_sound_play(20.0))
			if ((v_weapon < 11.0)):
				v_weapon = v_weapon + 1.0
			else:
				v_weapon = 1.0
			if (((absf(v_weapon - 3.0) < 0.00001) and (absf(GM.G["chainsaw"] - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 4.0) < 0.00001) and (absf(GM.G["doublepistols"] - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 5.0) < 0.00001) and (absf(GM.G["shotgun"] - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 6.0) < 0.00001) and (absf(GM.G["taser"] - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 7.0) < 0.00001) and (absf(GM.G["inferno"] - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if ((absf(v_weapon - 8.0) < 0.00001)):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 9.0) < 0.00001) and (absf(GM.G["lightsaber"] - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 10.0) < 0.00001) and (absf(GM.G["photoncannon"] - 0.0) < 0.00001))):
				v_weapon = v_weapon + 1.0
			if (((absf(v_weapon - 11.0) < 0.00001) and (absf(GM.G["boomerang"] - 0.0) < 0.00001))):
				v_weapon = 1.0
			if ((absf(v_weapon - 9.0) < 0.00001)):
				(GM.f_sound_play(66.0))
			v_chargeup = 0.0
			for _w39 in GM.with_list((55.0), self):
				if _w39._dead:
					continue
				_w39.other = self
				(GM.f_instance_destroy(_w39))
			(GM.f_sound_stop(22.0))
			if (((absf(v_weapon - 9.0) < 0.00001))):
				(GM.f_sound_play(66.0))
			if (((absf(v_weapon - 4.0) < 0.00001))):
				(GM.f_instance_create(0.0, 0.0, 55.0))
func ev_keyrelease_40():
	(GM.f_sound_stop(26.0))
func ev_keyrelease_38():
	(GM.f_sound_stop(26.0))
