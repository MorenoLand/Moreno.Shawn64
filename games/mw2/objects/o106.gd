extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 4.0, 0.0))
	alarm[int(0.0)] = 200.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_mouse_0():
	for _w14 in GM.with_list((138.0), self):
		if _w14._dead:
			continue
		_w14.other = self
		(GM.f_instance_destroy(_w14))
	for _w15 in GM.with_list((66.0), self):
		if _w15._dead:
			continue
		_w15.other = self
		(GM.f_instance_destroy(_w15))
	for _w16 in GM.with_list((113.0), self):
		if _w16._dead:
			continue
		_w16.other = self
		(GM.f_instance_destroy(_w16))
	for _w17 in GM.with_list((107.0), self):
		if _w17._dead:
			continue
		_w17.other = self
		(GM.f_instance_destroy(_w17))
	(GM.f_sound_play(33.0))
	(GM.f_instance_create(0.0, 0.0, 107.0))
	(GM.f_instance_destroy(self))
