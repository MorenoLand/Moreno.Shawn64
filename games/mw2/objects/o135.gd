extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 4.0, 0.0))
	alarm[int(0.0)] = 200.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_mouse_0():
	(GM.f_instance_create((x + 2.25), (y + 2.25), 136.0))
	for _w23 in GM.with_list((138.0), self):
		if _w23._dead:
			continue
		_w23.other = self
		(GM.f_instance_destroy(_w23))
	for _w24 in GM.with_list((66.0), self):
		if _w24._dead:
			continue
		_w24.other = self
		(GM.f_instance_destroy(_w24))
	for _w25 in GM.with_list((113.0), self):
		if _w25._dead:
			continue
		_w25.other = self
		(GM.f_instance_destroy(_w25))
	for _w26 in GM.with_list((107.0), self):
		if _w26._dead:
			continue
		_w26.other = self
		(GM.f_instance_destroy(_w26))
	(GM.f_sound_play(38.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 138.0))
	(GM.f_instance_destroy(self))
