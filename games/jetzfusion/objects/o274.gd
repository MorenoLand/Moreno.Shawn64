extends "res://games/jetzfusion/scripts.gd"
func ev_col_265():
	for _w364 in GM.with_list((203.0), self):
		if _w364._dead:
			continue
		_w364.other = self
		GM.vset(_w364, "v_countingg", GM.vget(_w364, "v_countingg") + 1.0)
	(GM.f_sound_play(33.0))
	for _r365 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	if (((absf((GM.f_instance_number(274.0)) - 1.0) < 0.00001))):
		for _w366 in GM.with_list((275.0), self):
			if _w366._dead:
				continue
			_w366.other = self
			(GM.f_instance_create(1120.0, 405.0, 282.0))
		for _w367 in GM.with_list((276.0), self):
			if _w367._dead:
				continue
			_w367.other = self
			(GM.f_instance_destroy(_w367))
		(GM.f_sound_loop(25.0))
		for _w368 in GM.with_list((265.0), self):
			if _w368._dead:
				continue
			_w368.other = self
			(GM.f_instance_destroy(_w368))
		(GM.f_instance_create(0.0, 0.0, 10.0))
		GM.view_object[0] = 7.0
		GM.view_hborder[0] = (400.0 - (GM.vb(7.0, "sprite_width") / 2.0))
		GM.view_vborder[0] = (300.0 - (GM.vb(7.0, "sprite_height") / 2.0))
		GM.vsetb(271.0, "visible", 1.0)
		GM.vsetb(7.0, "visible", 1.0)
		GM.vset(7.0, "v_start", 1.0)
		(self.script_missionscript2(0.0, 0.0, 0.0, 0.0, 0.0))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 200.0
		for _w369 in GM.with_list((271.0), self):
			if _w369._dead:
				continue
			_w369.other = self
			(GM.f_instance_destroy(_w369))
		for _w370 in GM.with_list((170.0), self):
			if _w370._dead:
				continue
			_w370.other = self
			(GM.f_instance_destroy(_w370))
		for _w371 in GM.with_list((275.0), self):
			if _w371._dead:
				continue
			_w371.other = self
			(GM.f_instance_destroy(_w371))
		for _w372 in GM.with_list((274.0), self):
			if _w372._dead:
				continue
			_w372.other = self
			(GM.f_instance_destroy(_w372))
	(GM.f_instance_destroy(self))
