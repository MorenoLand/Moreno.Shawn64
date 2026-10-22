extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	(GM.f_path_start(self, 5.0, 2.0, 1.0, 0.0))
	if (((absf((GM.f_instance_number(1094.0)) - 1.0) < 0.00001))):
		(GM.f_path_start(self, 5.0, 5.0, 1.0, 0.0))
	image_speed = 0.33
func ev_col_1017():
	(GM.f_sound_play(150.0))
	(GM.f_sound_play(209.0))
	for _r777 in range(int((40.0))):
		(GM.f_instance_create((GM.f_random(sprite_width)), (GM.f_random(sprite_height)), 599.0))
	for _r778 in range(int((40.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r779 in range(int((30.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r780 in range(int((30.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
		GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	if ((absf((GM.f_instance_number(1125.0)) - 1.0) < 0.00001)):
		if ((absf((GM.f_instance_number(1094.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
			(GM.f_sound_play(224.0))
			for _w781 in GM.with_list((1094.0), self):
				if _w781._dead:
					continue
				_w781.other = self
				(GM.f_instance_destroy(_w781))
			for _w782 in GM.with_list((680.0), self):
				if _w782._dead:
					continue
				_w782.other = self
				_w782.ev_user(0.0)
			(GM.f_instance_destroy(self))
		if ((absf((GM.f_instance_number(1093.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
			(GM.f_sound_play(224.0))
			for _w783 in GM.with_list((1093.0), self):
				if _w783._dead:
					continue
				_w783.other = self
				(GM.f_instance_create(_w783.x, _w783.y, 1094.0))
				(GM.f_instance_destroy(_w783))
			for _w784 in GM.with_list((680.0), self):
				if _w784._dead:
					continue
				_w784.other = self
				_w784.ev_user(0.0)
			(GM.f_instance_destroy(self))
	(GM.f_instance_destroy(self))
