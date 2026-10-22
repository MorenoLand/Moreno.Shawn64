extends "res://games/marblex/scripts.gd"
func ev_col_0():
	(GM.f_sound_play(5.0))
	for _w45 in GM.with_list((self.other), self):
		if _w45._dead:
			continue
		_w45.other = self
		(GM.f_instance_create((_w45.x + (-40.0)), (_w45.y + (-40.0)), 14.0))
	GM.view_hborder[int(0.0)] = 259.0
	GM.view_vborder[int(0.0)] = 179.0
	GM.view_object[int(0.0)] = 9.0
	for _w46 in GM.with_list((self.other), self):
		if _w46._dead:
			continue
		_w46.other = self
		(GM.f_instance_destroy(_w46))
