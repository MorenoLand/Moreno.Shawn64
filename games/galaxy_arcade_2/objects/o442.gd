extends "res://games/galaxy_arcade_2/scripts.gd"
var v_hand = 0.0
func ev_create():
	v_hand = 1.0
	(GM.f_sound_play(126.0))
func ev_alarm_0():
	(GM.f_sound_play(129.0))
	for _w85 in GM.with_list((443.0), self):
		if _w85._dead:
			continue
		_w85.other = self
		GM.vset(_w85, "v_kkk", 0.0)
	x = x + (-51.0)
	y = y + (-100.0)
	for _w86 in GM.with_list((443.0), self):
		if _w86._dead:
			continue
		_w86.other = self
		_w86.alarm[int(0.0)] = (_w86.alarm[int(0.0)] * 2.0)
	(GM.f_instance_change(self, 449.0, 0.0))
func ev_col_475():
	if (((hspeed > 0.0))):
		hspeed = 0.0
func ev_col_474():
	if (((hspeed < 0.0))):
		hspeed = 0.0
func ev_col_446():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 448.0))
	(GM.f_sound_play(128.0))
	(GM.f_sound_stop(127.0))
	(GM.f_instance_destroy(self))
func ev_col_42():
	hspeed = 0.0
func ev_key_40():
	if (((absf(sprite_index - 431.0) < 0.00001))):
		sprite_index = 432.0
		image_speed = 1.0
	if (((absf(sprite_index - 430.0) < 0.00001))):
		sprite_index = 433.0
		image_speed = 1.0
func ev_key_39():
	sprite_index = 430.0
	image_speed = 1.0
	(GM.f_motion_add(self, 0.0, 0.5))
func ev_key_38():
	if (((absf((GM.f_instance_number(1254.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(446.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(129.0))
			for _w87 in GM.with_list((443.0), self):
				if _w87._dead:
					continue
				_w87.other = self
				GM.vset(_w87, "v_kkk", 0.0)
			x = x + (-51.0)
			y = y + (-100.0)
			for _w88 in GM.with_list((443.0), self):
				if _w88._dead:
					continue
				_w88.other = self
				_w88.alarm[int(0.0)] = (_w88.alarm[int(0.0)] * 2.0)
			(GM.f_instance_change(self, 449.0, 0.0))
		if (((absf((GM.f_instance_number(446.0)) - 1.0) < 0.00001))):
			if (((absf(v_hand - 1.0) < 0.00001))):
				(GM.f_sound_play(126.0))
				(GM.f_instance_create(272.0, 224.0, 452.0))
				v_hand = 0.0
func ev_key_37():
	sprite_index = 431.0
	image_speed = 1.0
	(GM.f_motion_add(self, 180.0, 0.5))
func ev_other_0():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 448.0))
	(GM.f_sound_play(126.0))
	(GM.f_sound_stop(127.0))
	(GM.f_instance_destroy(self))
