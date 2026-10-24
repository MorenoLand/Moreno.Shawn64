extends "res://games/galaxy_arcade/scripts.gd"
func ev_key_117():
	for _w53 in GM.with_list((236.0), self):
		if _w53._dead:
			continue
		_w53.other = self
		_w53.sprite_index = 145.0
		_w53.image_speed = 1.0
	(GM.f_sound_stop(22.0))
	(GM.f_sound_stop(28.0))
	(GM.f_sound_stop(24.0))
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(26.0))
func ev_key_116():
	(GM.f_sound_loop(26.0))
	for _w54 in GM.with_list((236.0), self):
		if _w54._dead:
			continue
		_w54.other = self
		_w54.sprite_index = 143.0
		_w54.image_speed = 1.0
	(GM.f_sound_stop(22.0))
	(GM.f_sound_stop(28.0))
	(GM.f_sound_stop(24.0))
	(GM.f_sound_stop(23.0))
func ev_key_115():
	(GM.f_sound_loop(22.0))
	for _w55 in GM.with_list((236.0), self):
		if _w55._dead:
			continue
		_w55.other = self
		_w55.sprite_index = 143.0
		_w55.image_speed = 1.0
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(28.0))
	(GM.f_sound_stop(24.0))
	(GM.f_sound_stop(26.0))
func ev_key_114():
	(GM.f_sound_loop(23.0))
	for _w56 in GM.with_list((236.0), self):
		if _w56._dead:
			continue
		_w56.other = self
		_w56.sprite_index = 143.0
		_w56.image_speed = 1.0
	(GM.f_sound_stop(22.0))
	(GM.f_sound_stop(28.0))
	(GM.f_sound_stop(24.0))
	(GM.f_sound_stop(26.0))
func ev_key_113():
	(GM.f_sound_loop(28.0))
	for _w57 in GM.with_list((236.0), self):
		if _w57._dead:
			continue
		_w57.other = self
		_w57.sprite_index = 143.0
		_w57.image_speed = 1.0
	(GM.f_sound_stop(22.0))
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(24.0))
	(GM.f_sound_stop(26.0))
func ev_key_112():
	(GM.f_sound_loop(24.0))
	for _w58 in GM.with_list((236.0), self):
		if _w58._dead:
			continue
		_w58.other = self
		_w58.sprite_index = 143.0
		_w58.image_speed = 1.0
	(GM.f_sound_stop(22.0))
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(28.0))
	(GM.f_sound_stop(26.0))
