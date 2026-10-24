extends "res://games/ski_racer_2/scripts.gd"
func ev_col_48():
	for _w13 in GM.with_list((60.0), self):
		if _w13._dead:
			continue
		_w13.other = self
		_w13.alarm[int(0.0)] = 150.0
	for _w14 in GM.with_list((60.0), self):
		if _w14._dead:
			continue
		_w14.other = self
		_w14.friction = 2.0
	for _w15 in GM.with_list((59.0), self):
		if _w15._dead:
			continue
		_w15.other = self
		(GM.f_instance_destroy(_w15))
	(GM.f_instance_destroy(self))
func ev_col_8():
	for _w16 in GM.with_list((60.0), self):
		if _w16._dead:
			continue
		_w16.other = self
		_w16.alarm[int(0.0)] = 150.0
	for _w17 in GM.with_list((60.0), self):
		if _w17._dead:
			continue
		_w17.other = self
		_w17.friction = 2.0
	for _w18 in GM.with_list((59.0), self):
		if _w18._dead:
			continue
		_w18.other = self
		(GM.f_instance_destroy(_w18))
	(GM.f_instance_destroy(self))
func ev_col_0():
	GM.score = GM.score + 1000.0
	for _w19 in GM.with_list((60.0), self):
		if _w19._dead:
			continue
		_w19.other = self
		_w19.alarm[int(0.0)] = 150.0
	for _w20 in GM.with_list((60.0), self):
		if _w20._dead:
			continue
		_w20.other = self
		_w20.friction = 2.0
	for _w21 in GM.with_list((59.0), self):
		if _w21._dead:
			continue
		_w21.other = self
		(GM.f_instance_destroy(_w21))
	(GM.f_instance_destroy(self))
