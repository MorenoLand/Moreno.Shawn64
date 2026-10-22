extends "res://games/jetzrampage/scripts.gd"
var v_bazooka = 0.0
var v_blah = 0.0
var v_bombpower = 0.0
var v_crimax = 0.0
var v_elect = 0.0
var v_flames = 0.0
var v_guyleft = 0.0
var v_guyright = 0.0
var v_start = 0.0
var v_watergun = 0.0
var v_weaponselect = 0.0
var v_woopy = 0.0
func ev_create():
	v_flames = 0.0
	v_elect = 0.0
	v_watergun = 0.0
	v_bazooka = 0.0
	v_guyright = 1.0
	v_guyleft = 0.0
	v_weaponselect = 1.0
	v_crimax = 0.0
	(GM.f_sound_loop(9.0))
	(GM.f_action_move(self, "000000001", 0.01, 0.0))
	v_blah = 1.0
	v_start = 0.0
	v_bombpower = 5.0
	friction = 0.1
func ev_destroy():
	for _w1 in GM.with_list((102.0), self):
		if _w1._dead:
			continue
		_w1.other = self
		(GM.f_instance_destroy(_w1))
	for _w2 in GM.with_list((137.0), self):
		if _w2._dead:
			continue
		_w2.other = self
		(GM.f_instance_destroy(_w2))
	for _w3 in GM.with_list((128.0), self):
		if _w3._dead:
			continue
		_w3.other = self
		(GM.f_instance_destroy(_w3))
	for _w4 in GM.with_list((178.0), self):
		if _w4._dead:
			continue
		_w4.other = self
		(GM.f_instance_destroy(_w4))
	for _w5 in GM.with_list((71.0), self):
		if _w5._dead:
			continue
		_w5.other = self
		(GM.f_instance_destroy(_w5))
	for _w6 in GM.with_list((142.0), self):
		if _w6._dead:
			continue
		_w6.other = self
		(GM.f_instance_destroy(_w6))
	for _w7 in GM.with_list((120.0), self):
		if _w7._dead:
			continue
		_w7.other = self
		(GM.f_instance_destroy(_w7))
	for _w8 in GM.with_list((114.0), self):
		if _w8._dead:
			continue
		_w8.other = self
		(GM.f_instance_destroy(_w8))
	for _w9 in GM.with_list((115.0), self):
		if _w9._dead:
			continue
		_w9.other = self
		(GM.f_instance_destroy(_w9))
	for _w10 in GM.with_list((93.0), self):
		if _w10._dead:
			continue
		_w10.other = self
		(GM.f_instance_destroy(_w10))
func ev_step():
	if (((GM.G["poo"] > 99.0))):
		for _r11 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(GM.f_instance_create(0.0, 0.0, 133.0))
		for _w12 in GM.with_list((178.0), self):
			if _w12._dead:
				continue
			_w12.other = self
			(GM.f_instance_destroy(_w12))
		for _w13 in GM.with_list((71.0), self):
			if _w13._dead:
				continue
			_w13.other = self
			(GM.f_instance_destroy(_w13))
		for _w14 in GM.with_list((164.0), self):
			if _w14._dead:
				continue
			_w14.other = self
			(GM.f_instance_destroy(_w14))
		for _w15 in GM.with_list((2.0), self):
			if _w15._dead:
				continue
			_w15.other = self
			(GM.f_instance_destroy(_w15))
		(GM.f_instance_destroy(self))
	if (((speed < 1.0))):
		speed = 1.0
	if (((hspeed > 0.0))):
		v_guyright = 1.0
		v_guyleft = 0.0
	if (((hspeed < 0.0))):
		v_guyright = 0.0
		v_guyleft = 1.0
	if (((speed > 20.0))):
		speed = 20.0
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 3.0))
func ev_col_200():
	v_watergun = 1.0
	(GM.f_sound_play(14.0))
	for _w16 in GM.with_list((self.other), self):
		if _w16._dead:
			continue
		_w16.other = self
		(GM.f_instance_destroy(_w16))
func ev_col_199():
	v_bazooka = 1.0
	(GM.f_sound_play(14.0))
	for _w17 in GM.with_list((self.other), self):
		if _w17._dead:
			continue
		_w17.other = self
		(GM.f_instance_destroy(_w17))
func ev_col_165():
	v_flames = 1.0
func ev_col_123():
	(GM.f_sound_play(12.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_120():
	(GM.f_instance_create((x + 0.0), (y + (-1.0)), 103.0))
func ev_col_103():
	(GM.f_sound_play(17.0))
	v_woopy = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_height") / 2.0))))
	(GM.f_motion_set(self, (v_woopy - 180.0), 15.0))
	GM.G["poo"] = GM.G["poo"] + 10.0
func ev_col_87():
	(GM.f_sound_play(12.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_78():
	(GM.f_sound_play(12.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_76():
	(GM.f_sound_play(12.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_65():
	(GM.f_sound_play(12.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_17():
	(GM.f_sound_play(12.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_16():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_15():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_key_40():
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 270.0, 0.4))
		for _r18 in range(int((10.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 4.0))
func ev_key_39():
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 0.0, 0.4))
func ev_key_38():
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 90.0, 0.4))
		for _r19 in range(int((10.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 3.0))
func ev_key_37():
	if (((absf(v_start - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 180.0, 0.4))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(v_guyright - 1.0) < 0.00001))):
		if (((hspeed < 18.0))):
			(GM.f_draw_sprite(1.0, (hspeed / 0.5), (x + 0.0), (y + 0.0)))
		else:
			(GM.f_draw_sprite(1.0, 36.0, (x + 0.0), (y + 0.0)))
	if (((absf(v_guyleft - 1.0) < 0.00001))):
		if (((hspeed > (-18.0)))):
			(GM.f_draw_sprite(2.0, ((-hspeed) / 0.5), (x + 0.0), (y + 0.0)))
		else:
			(GM.f_draw_sprite(2.0, 36.0, (x + 0.0), (y + 0.0)))
func ev_keypress_40():
	(GM.f_sound_loop(10.0))
func ev_keypress_38():
	(GM.f_sound_loop(10.0))
func ev_keypress_16():
	(GM.f_sound_play(68.0))
	if (not (((absf(v_weaponselect - 6.0) < 0.00001)))):
		v_weaponselect = v_weaponselect + 1.0
	else:
		v_weaponselect = 1.0
	if (((absf(v_weaponselect - 2.0) < 0.00001))):
		if (((absf(v_flames - 0.0) < 0.00001))):
			v_weaponselect = v_weaponselect + 1.0
	if (((absf(v_weaponselect - 3.0) < 0.00001))):
		if (((absf(v_watergun - 0.0) < 0.00001))):
			v_weaponselect = v_weaponselect + 1.0
	if (((absf(v_weaponselect - 4.0) < 0.00001))):
		if (((absf(v_elect - 0.0) < 0.00001))):
			v_weaponselect = v_weaponselect + 1.0
	if (((absf(v_weaponselect - 6.0) < 0.00001))):
		if (((absf(v_bazooka - 0.0) < 0.00001))):
			v_weaponselect = 1.0
func ev_keyrelease_40():
	(GM.f_sound_stop(10.0))
func ev_keyrelease_38():
	(GM.f_sound_stop(10.0))
