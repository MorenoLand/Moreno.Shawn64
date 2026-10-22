extends "res://games/jetzrampage2/scripts.gd"
var v_packages = 0.0
func ev_col_0():
	for _w274 in GM.with_list((569.0), self):
		if _w274._dead:
			continue
		_w274.other = self
		_w274.x = (100.0 + (GM.f_random((GM.room_width - 200.0))))
		_w274.y = (GM.f_random(500.0))
	(GM.f_sound_play(32.0))
	for _w275 in GM.with_list((569.0), self):
		if _w275._dead:
			continue
		_w275.other = self
		GM.vset(_w275, "v_packages", GM.vget(_w275, "v_packages") - 1.0)
	if (((v_packages < 1.0))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 127.0))
		for _w276 in GM.with_list((67.0), self):
			if _w276._dead:
				continue
			_w276.other = self
			GM.vset(_w276, "v_currentmoney", GM.vget(_w276, "v_currentmoney") + 100.0)
		(GM.f_sound_play(88.0))
		for _w277 in GM.with_list((574.0), self):
			if _w277._dead:
				continue
			_w277.other = self
			(GM.f_instance_destroy(_w277))
		for _w278 in GM.with_list((557.0), self):
			if _w278._dead:
				continue
			_w278.other = self
			(GM.f_instance_create((_w278.x + 0.0), (_w278.y + 0.0), 574.0))
		for _w279 in GM.with_list((569.0), self):
			if _w279._dead:
				continue
			_w279.other = self
			(GM.f_instance_destroy(_w279))
		for _w280 in GM.with_list((570.0), self):
			if _w280._dead:
				continue
			_w280.other = self
			(GM.f_instance_destroy(_w280))
		for _w281 in GM.with_list((557.0), self):
			if _w281._dead:
				continue
			_w281.other = self
			(GM.f_instance_destroy(_w281))
		for _w282 in GM.with_list((250.0), self):
			if _w282._dead:
				continue
			_w282.other = self
			(GM.f_instance_destroy(_w282))
		(GM.f_instance_destroy(self))
	(GM.f_instance_destroy(self))
