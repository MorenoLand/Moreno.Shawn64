extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_col_1250():
	(GM.f_sound_play(28.0))
	for _w133 in GM.with_list((503.0), self):
		if _w133._dead:
			continue
		_w133.other = self
		(GM.f_instance_change(_w133, 507.0, 0.0))
	for _w134 in GM.with_list((506.0), self):
		if _w134._dead:
			continue
		_w134.other = self
		_w134.alarm[int(0.0)] = _w134.alarm[int(0.0)] + 100.0
	(GM.f_instance_destroy(self))
func ev_col_504():
	(GM.f_sound_play(28.0))
	for _w135 in GM.with_list((503.0), self):
		if _w135._dead:
			continue
		_w135.other = self
		(GM.f_instance_change(_w135, 507.0, 0.0))
	for _w136 in GM.with_list((506.0), self):
		if _w136._dead:
			continue
		_w136.other = self
		_w136.alarm[int(0.0)] = _w136.alarm[int(0.0)] + 100.0
	(GM.f_instance_destroy(self))
