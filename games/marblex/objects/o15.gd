extends "res://games/marblex/scripts.gd"
func ev_col_0():
	(GM.f_sound_play(5.0))
	for _w40 in GM.with_list((self.other), self):
		if _w40._dead:
			continue
		_w40.other = self
		(GM.f_instance_create((_w40.x + (-40.0)), (_w40.y + (-40.0)), 14.0))
	GM.view_hborder[int(0.0)] = 259.0
	GM.view_vborder[int(0.0)] = 179.0
	GM.view_object[int(0.0)] = 9.0
	for _w41 in GM.with_list((self.other), self):
		if _w41._dead:
			continue
		_w41.other = self
		(GM.f_instance_destroy(_w41))
