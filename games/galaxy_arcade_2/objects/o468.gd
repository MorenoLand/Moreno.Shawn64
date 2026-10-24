extends "res://games/galaxy_arcade_2/scripts.gd"
var v_down = 0.0
var v_kill = 0.0
var v_left = 0.0
var v_right = 0.0
var v_up = 0.0
func ev_create():
	(GM.f_sound_loop(133.0))
	(GM.f_action_move(self, "010000000", 8.0, 0.0))
func ev_step():
	if ((((GM.f_random(20.0)) < 1.0))):
		if ((((GM.f_random(4.0)) < 1.0))):
			if ((((GM.f_place_empty(self, (x + 32.0), (y + 0.0)))))) >= 0.5:
				if (not (((absf(sprite_index - 457.0) < 0.00001)))):
					v_right = 1.0
		else:
			if ((((GM.f_random(3.0)) < 1.0))):
				if ((((GM.f_place_empty(self, (x + (-32.0)), (y + 0.0)))))) >= 0.5:
					if (not (((absf(sprite_index - 459.0) < 0.00001)))):
						v_left = 1.0
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					if ((((GM.f_place_empty(self, (x + 0.0), (y + 32.0)))))) >= 0.5:
						if (not (((absf(sprite_index - 458.0) < 0.00001)))):
							v_down = 1.0
				else:
					if ((((GM.f_place_empty(self, (x + 0.0), (y + (-32.0))))))) >= 0.5:
						if (not (((absf(sprite_index - 456.0) < 0.00001)))):
							v_up = 1.0
	if (((absf(sprite_index - 458.0) < 0.00001))):
		if ((not (((GM.f_place_empty(self, (x + 0.0), (y + (-32.0))))) >= 0.5))):
			if ((((GM.f_place_empty(self, (x + 32.0), (y + 0.0)))))) >= 0.5:
				v_right = 1.0
			else:
				v_left = 1.0
	if (((absf(sprite_index - 457.0) < 0.00001))):
		if ((not (((GM.f_place_empty(self, (x + (-32.0)), (y + 0.0)))) >= 0.5))):
			if ((((GM.f_place_empty(self, (x + 0.0), (y + 32.0)))))) >= 0.5:
				v_down = 1.0
			else:
				v_up = 1.0
	if (((absf(sprite_index - 456.0) < 0.00001))):
		if ((not (((GM.f_place_empty(self, (x + 0.0), (y + 32.0)))) >= 0.5))):
			if ((((GM.f_place_empty(self, (x + (-32.0)), (y + 0.0)))))) >= 0.5:
				v_left = 1.0
			else:
				v_right = 1.0
	if (((absf(sprite_index - 459.0) < 0.00001))):
		if ((not (((GM.f_place_empty(self, (x + 32.0), (y + 0.0)))) >= 0.5))):
			if ((((GM.f_place_empty(self, (x + 0.0), (y + 32.0)))))) >= 0.5:
				v_down = 1.0
			else:
				v_up = 1.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 470.0))
	if (((v_up))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 458.0
			image_speed = 1.0
			(GM.f_action_move(self, "000000010", 8.0, 0.0))
			v_up = 0.0
	if (((v_left))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 457.0
			image_speed = 1.0
			(GM.f_action_move(self, "000100000", 8.0, 0.0))
			v_left = 0.0
	if (((v_right))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 459.0
			image_speed = 1.0
			(GM.f_action_move(self, "000001000", 8.0, 0.0))
			v_right = 0.0
	if (((v_down))) >= 0.5:
		if (((((absf(fmod(x, 32.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 32.0) - 0.0) < 0.00001))))):
			(GM.f_sound_play(1.0))
			sprite_index = 456.0
			image_speed = 1.0
			(GM.f_action_move(self, "010000000", 8.0, 0.0))
			v_down = 0.0
func ev_col_470():
	if (((absf(v_kill - 1.0) < 0.00001))):
		(GM.f_sound_play(135.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
		for _w102 in GM.with_list((471.0), self):
			if _w102._dead:
				continue
			_w102.other = self
			_w102.alarm[int(0.0)] = 25.0
		(GM.f_instance_destroy(self))
func ev_col_469():
	(GM.f_sound_play(135.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
	for _w103 in GM.with_list((471.0), self):
		if _w103._dead:
			continue
		_w103.other = self
		_w103.alarm[int(0.0)] = 25.0
	(GM.f_instance_destroy(self))
func ev_col_465():
	if (((absf(v_kill - 1.0) < 0.00001))):
		(GM.f_sound_play(135.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
		for _w104 in GM.with_list((471.0), self):
			if _w104._dead:
				continue
			_w104.other = self
			_w104.alarm[int(0.0)] = 25.0
		(GM.f_instance_destroy(self))
func ev_col_464():
	(GM.f_sound_play(135.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 472.0))
	for _w105 in GM.with_list((471.0), self):
		if _w105._dead:
			continue
		_w105.other = self
		_w105.alarm[int(0.0)] = 25.0
	(GM.f_instance_destroy(self))
func ev_mouse_0():
	if (((absf(sprite_index - 458.0) < 0.00001))):
		if ((not (((GM.f_place_empty(self, (x + 0.0), (y + (-40.0))))) >= 0.5))):
			if ((((GM.f_random(2.0)) < 1.0))):
				v_right = 1.0
			else:
				v_left = 1.0
