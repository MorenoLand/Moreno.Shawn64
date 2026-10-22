extends "res://games/thrust/objects/o3.gd"
var v_ready = 0.0
func ev_create():
	v_ready = 1.0
	alarm[int(0.0)] = 20.0
func ev_alarm_1():
	sprite_index = 4.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
	v_ready = 1.0
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	sprite_index = 55.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
	v_ready = 0.0
	alarm[int(1.0)] = 20.0
func ev_col_0():
	if (((absf(v_ready - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 10.0))
		(GM.f_sound_play(3.0))
		for _w43 in GM.with_list((0.0), self):
			if _w43._dead:
				continue
			_w43.other = self
			GM.vset(_w43, "v_pearlshave", GM.vget(_w43, "v_pearlshave") + 1.0)
		if (((absf(v_pearls - v_pearlshave) < 0.00001))):
			if (((absf((GM.f_instance_number(89.0)) - 1.0) < 0.00001))):
				(GM.f_instance_create(0.0, 0.0, 90.0))
			else:
				(GM.f_instance_create(0.0, 0.0, 11.0))
		(GM.f_instance_destroy(self))
	if (((absf(v_ready - 0.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 10.0))
		(GM.f_sound_play(3.0))
		for _w44 in GM.with_list((0.0), self):
			if _w44._dead:
				continue
			_w44.other = self
			GM.vset(_w44, "v_pearlshave", GM.vget(_w44, "v_pearlshave") + 1.0)
		for _r45 in range(int((100.0))):
			for _w46 in GM.with_list((self.other), self):
				if _w46._dead:
					continue
				_w46.other = self
				(GM.f_instance_create((_w46.x + (GM.f_random((_w46.sprite_width - 10.0)))), (_w46.y + (GM.f_random((_w46.sprite_height - 10.0)))), 8.0))
		(GM.f_sound_play(1.0))
		for _w47 in GM.with_list((self.other), self):
			if _w47._dead:
				continue
			_w47.other = self
			if ((absf(GM.vget(_w47, "v_exploded") - 0.0) < 0.00001)):
				(GM.f_motion_add(_w47, (GM.f_random(360.0)), 20.0))
				alarm[int(5.0)] = 15.0
				GM.vset(_w47, "v_exploded", 1.0)
		(GM.f_instance_destroy(self))
