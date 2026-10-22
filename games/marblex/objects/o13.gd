extends "res://games/marblex/scripts.gd"
func ev_col_0():
	(GM.f_sound_play(5.0))
	for _w38 in GM.with_list((self.other), self):
		if _w38._dead:
			continue
		_w38.other = self
		(GM.f_instance_create((_w38.x + (-40.0)), (_w38.y + (-40.0)), 14.0))
	GM.view_hborder[int(0.0)] = 259.0
	GM.view_vborder[int(0.0)] = 179.0
	GM.view_object[int(0.0)] = 9.0
	for _w39 in GM.with_list((self.other), self):
		if _w39._dead:
			continue
		_w39.other = self
		(GM.f_instance_destroy(_w39))
