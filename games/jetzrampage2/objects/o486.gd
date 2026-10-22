extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_sound_play(183.0))
	x = x
	y = y
	(GM.f_action_move(self, "000100000", 8.0, 0.0))
	if (((absf((GM.f_instance_number(1864.0)) - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000100000", 8.0, 0.0))
func ev_col_1864():
	(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
	for _w204 in GM.with_list((1864.0), self):
		if _w204._dead:
			continue
		_w204.other = self
		(GM.f_instance_create((_w204.x + 0.0), (_w204.y + 0.0), 1885.0))
	for _w205 in GM.with_list((67.0), self):
		if _w205._dead:
			continue
		_w205.other = self
		GM.vset(_w205, "v_currentmoney", GM.vget(_w205, "v_currentmoney") + 100.0)
	(GM.f_sound_play(88.0))
	for _w206 in GM.with_list((1864.0), self):
		if _w206._dead:
			continue
		_w206.other = self
		(GM.f_instance_destroy(_w206))
	for _w207 in GM.with_list((250.0), self):
		if _w207._dead:
			continue
		_w207.other = self
		(GM.f_instance_destroy(_w207))
	(GM.f_instance_destroy(self))
func ev_col_484():
	if (((absf((GM.f_instance_number(432.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w208 in GM.with_list((484.0), self):
			if _w208._dead:
				continue
			_w208.other = self
			(GM.f_instance_create((_w208.x + 0.0), (_w208.y + 0.0), 485.0))
		for _w209 in GM.with_list((67.0), self):
			if _w209._dead:
				continue
			_w209.other = self
			GM.vset(_w209, "v_currentmoney", GM.vget(_w209, "v_currentmoney") + 100.0)
		(GM.f_sound_play(88.0))
		for _w210 in GM.with_list((484.0), self):
			if _w210._dead:
				continue
			_w210.other = self
			(GM.f_instance_destroy(_w210))
		for _w211 in GM.with_list((250.0), self):
			if _w211._dead:
				continue
			_w211.other = self
			(GM.f_instance_destroy(_w211))
		(GM.f_instance_destroy(self))
