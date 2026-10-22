extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	(GM.f_path_start(self, 5.0, 2.0, 1.0, 0.0))
	image_speed = 0.33
func ev_col_656():
	(GM.f_sound_play(150.0))
	(GM.f_sound_play(209.0))
	for _r659 in range(int((40.0))):
		(GM.f_instance_create((GM.f_random(sprite_width)), (GM.f_random(sprite_height)), 599.0))
	for _r660 in range(int((40.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r661 in range(int((30.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r662 in range(int((30.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
		GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	if ((absf((GM.f_instance_number(1001.0)) - 1.0) < 0.00001)):
		if (((GM.f_instance_number(1000.0)) > 0.0)):
			for _w663 in GM.with_list((1000.0), self):
				if _w663._dead:
					continue
				_w663.other = self
				(GM.f_instance_destroy(_w663))
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
		if (((GM.f_instance_number(999.0)) > 0.0)):
			for _w664 in GM.with_list((999.0), self):
				if _w664._dead:
					continue
				_w664.other = self
				(GM.f_instance_create(_w664.x, _w664.y, 1000.0))
				(GM.f_instance_destroy(_w664))
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
		(GM.f_sound_play(224.0))
		for _w665 in GM.with_list((680.0), self):
			if _w665._dead:
				continue
			_w665.other = self
			_w665.ev_user(0.0)
	(GM.f_instance_destroy(self))
