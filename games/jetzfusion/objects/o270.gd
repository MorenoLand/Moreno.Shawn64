extends "res://games/jetzfusion/scripts.gd"
func ev_col_265():
	for _w357 in GM.with_list((203.0), self):
		if _w357._dead:
			continue
		_w357.other = self
		GM.vset(_w357, "v_countingg", GM.vget(_w357, "v_countingg") + 1.0)
	(GM.f_sound_play(33.0))
	for _r358 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	if (((absf((GM.f_instance_number(270.0)) - 1.0) < 0.00001))):
		for _w359 in GM.with_list((268.0), self):
			if _w359._dead:
				continue
			_w359.other = self
			(GM.f_instance_create((_w359.x + 0.0), (_w359.y + 0.0), 275.0))
		(GM.f_sound_loop(25.0))
		for _w360 in GM.with_list((265.0), self):
			if _w360._dead:
				continue
			_w360.other = self
			(GM.f_instance_destroy(_w360))
		(GM.f_instance_create(0.0, 0.0, 10.0))
		GM.view_object[0] = 7.0
		GM.view_hborder[0] = (400.0 - (GM.vb(7.0, "sprite_width") / 2.0))
		GM.view_vborder[0] = (300.0 - (GM.vb(7.0, "sprite_height") / 2.0))
		GM.vsetb(271.0, "visible", 1.0)
		GM.vsetb(7.0, "visible", 1.0)
		GM.vset(7.0, "v_start", 1.0)
		(self.script_missionscript2(0.0, 0.0, 0.0, 0.0, 0.0))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 100.0
		for _w361 in GM.with_list((170.0), self):
			if _w361._dead:
				continue
			_w361.other = self
			(GM.f_instance_destroy(_w361))
		for _w362 in GM.with_list((268.0), self):
			if _w362._dead:
				continue
			_w362.other = self
			(GM.f_instance_destroy(_w362))
		for _w363 in GM.with_list((270.0), self):
			if _w363._dead:
				continue
			_w363.other = self
			(GM.f_instance_destroy(_w363))
	(GM.f_instance_destroy(self))
