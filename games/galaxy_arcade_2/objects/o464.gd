extends "res://games/galaxy_arcade_2/scripts.gd"
var v_down = 0.0
var v_kill = 0.0
var v_left = 0.0
var v_right = 0.0
var v_up = 0.0
func ev_create():
	(GM.f_sound_loop(133.0))
	(GM.f_action_move(self, "000000010", 8.0, 0.0))
func ev_step():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 465.0))
	if (((v_up))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 463.0
			image_speed = 1.0
			(GM.f_action_move(self, "000000010", 8.0, 0.0))
			v_up = 0.0
	if (((v_left))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 461.0
			image_speed = 1.0
			(GM.f_action_move(self, "000100000", 8.0, 0.0))
			v_left = 0.0
	if (((v_right))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 462.0
			image_speed = 1.0
			(GM.f_action_move(self, "000001000", 8.0, 0.0))
			v_right = 0.0
	if (((v_down))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 460.0
			image_speed = 1.0
			(GM.f_action_move(self, "010000000", 8.0, 0.0))
			v_down = 0.0
func ev_col_473():
	(GM.f_sound_play(135.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
	for _w97 in GM.with_list((471.0), self):
		if _w97._dead:
			continue
		_w97.other = self
		_w97.alarm[int(1.0)] = 25.0
	(GM.f_instance_destroy(self))
func ev_col_470():
	if (((absf(v_kill - 1.0) < 0.00001))):
		(GM.f_sound_play(135.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
		for _w98 in GM.with_list((471.0), self):
			if _w98._dead:
				continue
			_w98.other = self
			_w98.alarm[int(1.0)] = 25.0
		(GM.f_instance_destroy(self))
func ev_col_469():
	(GM.f_sound_play(135.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
	for _w99 in GM.with_list((471.0), self):
		if _w99._dead:
			continue
		_w99.other = self
		_w99.alarm[int(1.0)] = 25.0
	(GM.f_instance_destroy(self))
func ev_col_468():
	(GM.f_sound_play(135.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
	for _w100 in GM.with_list((471.0), self):
		if _w100._dead:
			continue
		_w100.other = self
		_w100.alarm[int(1.0)] = 25.0
	(GM.f_instance_destroy(self))
func ev_col_465():
	if (((absf(v_kill - 1.0) < 0.00001))):
		(GM.f_sound_play(135.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
		for _w101 in GM.with_list((471.0), self):
			if _w101._dead:
				continue
			_w101.other = self
			_w101.alarm[int(1.0)] = 25.0
		(GM.f_instance_destroy(self))
func ev_keypress_40():
	v_down = 1.0
func ev_keypress_39():
	v_right = 1.0
func ev_keypress_38():
	v_up = 1.0
func ev_keypress_37():
	v_left = 1.0
