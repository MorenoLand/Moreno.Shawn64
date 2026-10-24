extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 4.0, 0.0))
	alarm[int(0.0)] = 200.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_mouse_0():
	for _w18 in GM.with_list((138.0), self):
		if _w18._dead:
			continue
		_w18.other = self
		(GM.f_instance_destroy(_w18))
	for _w19 in GM.with_list((66.0), self):
		if _w19._dead:
			continue
		_w19.other = self
		(GM.f_instance_destroy(_w19))
	for _w20 in GM.with_list((113.0), self):
		if _w20._dead:
			continue
		_w20.other = self
		(GM.f_instance_destroy(_w20))
	for _w21 in GM.with_list((107.0), self):
		if _w21._dead:
			continue
		_w21.other = self
		(GM.f_instance_destroy(_w21))
	(GM.f_sound_play(33.0))
	(GM.f_instance_create(0.0, 0.0, 113.0))
	(GM.f_instance_destroy(self))
