extends "res://games/holiday_hunting/scripts.gd"
var v_alive = 0.0
var v_fallspeed = 0.0
var v_gravitys = 0.0
var v_image_scale = 0.0
var v_image_single = 0.0
var v_wee = 0.0
var v_what = 0.0
var v_wow = 0.0
func ev_create():
	v_fallspeed = 0.1
	v_gravitys = 1.0
	v_alive = 1.0
	v_wow = (GM.f_round((GM.f_random(5.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		sprite_index = 27.0
		x = GM.room_width
		hspeed = (-10.0)
		v_image_scale = 1.0
		depth = 1.0
		v_wee = (GM.f_instance_create(x, 400.0, 24.0))
		GM.vsetb(v_wee, "sprite_index", 32.0)
		GM.vset(v_wee, "v_image_scale", v_image_scale)
		GM.vsetb(v_wee, "depth", 100.0)
		GM.vsetb(v_wee, "hspeed", hspeed)
	if ((absf(v_wow - 1.0) < 0.00001)):
		sprite_index = 27.0
		x = GM.room_width
		hspeed = (-7.0)
		v_image_scale = 0.7
		depth = 3.0
		v_wee = (GM.f_instance_create(x, 320.0, 24.0))
		GM.vsetb(v_wee, "sprite_index", 34.0)
		GM.vset(v_wee, "v_image_scale", v_image_scale)
		GM.vsetb(v_wee, "depth", 100.0)
		GM.vsetb(v_wee, "hspeed", hspeed)
	if ((absf(v_wow - 2.0) < 0.00001)):
		sprite_index = 27.0
		x = GM.room_width
		hspeed = (-4.0)
		v_image_scale = 0.4
		depth = 5.0
		v_wee = (GM.f_instance_create(x, 240.0, 24.0))
		GM.vsetb(v_wee, "sprite_index", 35.0)
		GM.vset(v_wee, "v_image_scale", v_image_scale)
		GM.vsetb(v_wee, "depth", 100.0)
		GM.vsetb(v_wee, "hspeed", hspeed)
	if ((absf(v_wow - 3.0) < 0.00001)):
		sprite_index = 29.0
		x = (-sprite_width)
		hspeed = 10.0
		v_image_scale = 1.0
		depth = 1.0
		v_wee = (GM.f_instance_create(x, 400.0, 24.0))
		GM.vsetb(v_wee, "sprite_index", 31.0)
		GM.vset(v_wee, "v_image_scale", v_image_scale)
		GM.vsetb(v_wee, "depth", 100.0)
		GM.vsetb(v_wee, "hspeed", hspeed)
	if ((absf(v_wow - 4.0) < 0.00001)):
		sprite_index = 29.0
		x = (-sprite_width)
		hspeed = 7.0
		v_image_scale = 0.7
		depth = 3.0
		v_wee = (GM.f_instance_create(x, 320.0, 24.0))
		GM.vsetb(v_wee, "sprite_index", 33.0)
		GM.vset(v_wee, "v_image_scale", v_image_scale)
		GM.vsetb(v_wee, "depth", 100.0)
		GM.vsetb(v_wee, "hspeed", hspeed)
	if ((absf(v_wow - 5.0) < 0.00001)):
		sprite_index = 29.0
		x = (-sprite_width)
		hspeed = 4.0
		v_image_scale = 0.4
		depth = 5.0
		v_wee = (GM.f_instance_create(x, 240.0, 24.0))
		GM.vsetb(v_wee, "sprite_index", 36.0)
		GM.vset(v_wee, "v_image_scale", v_image_scale)
		GM.vsetb(v_wee, "depth", 100.0)
		GM.vsetb(v_wee, "hspeed", hspeed)
func ev_step():
	if (((absf(v_alive - 0.0) < 0.00001) and (absf(v_gravitys - 1.0) < 0.00001))):
		y = y + v_fallspeed
		v_fallspeed = v_fallspeed + 0.3
func ev_col_24():
	if (((absf(v_gravitys - 1.0) < 0.00001))):
		if (((absf(GM.vb(self.other, "x") - x) < 0.00001))):
			(GM.f_sound_play(1.0))
			for _r6 in range(int((50.0))):
				(GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.0), ((y + (sprite_height / 2.0)) - 2.0), 18.0))
			for _w7 in GM.with_list((self.other), self):
				if _w7._dead:
					continue
				_w7.other = self
				(GM.f_instance_destroy(_w7))
			v_gravitys = 0.0
			vspeed = 0.0
			if ((absf(v_image_scale - 1.0) < 0.00001)):
				hspeed = 6.0
			if ((absf(v_image_scale - 0.7) < 0.00001)):
				hspeed = 4.0
			if ((absf(v_image_scale - 0.4) < 0.00001)):
				hspeed = 2.0
func ev_mouse_4():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		(GM.f_sound_play(5.0))
		(GM.f_sound_play(6.0))
		for _r8 in range(int((50.0))):
			v_what = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			GM.vset(v_what, "v_image_scale", v_image_scale)
			if ((absf(v_image_scale - 1.0) < 0.00001)):
				GM.vsetb(v_what, "speed", (GM.f_random(15.0)))
				GM.vsetb(v_what, "gravity", 0.4)
				(self.script_add100p())
			if ((absf(v_image_scale - 0.7) < 0.00001)):
				GM.vsetb(v_what, "speed", (GM.f_random(10.0)))
				GM.vsetb(v_what, "gravity", 0.25)
				(self.script_add200p())
			if ((absf(v_image_scale - 0.4) < 0.00001)):
				GM.vsetb(v_what, "speed", (GM.f_random(5.0)))
				GM.vsetb(v_what, "gravity", 0.1)
				(self.script_add300p())
		for _w9 in GM.with_list((v_wee), self):
			if _w9._dead:
				continue
			_w9.other = self
			(GM.f_instance_destroy(_w9))
		if ((GM.G["combotime"] > 0.0)):
			GM.G["combototal"] = GM.G["combototal"] + 1.0
		if ((absf(v_image_scale - 1.0) < 0.00001)):
			GM.G["currentscore"] = GM.G["currentscore"] + 100.0
		if ((absf(v_image_scale - 0.7) < 0.00001)):
			GM.G["currentscore"] = GM.G["currentscore"] + 200.0
		if ((absf(v_image_scale - 0.4) < 0.00001)):
			GM.G["currentscore"] = GM.G["currentscore"] + 300.0
		GM.G["combotime"] = 100.0
		v_image_single = 4.0
		(GM.f_instance_destroy(self))
func ev_other_0():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((x < (-sprite_width)) and (hspeed < 0.0))):
			(GM.f_instance_destroy(self))
		if (((x > GM.room_width) and (hspeed > 0.0))):
			(GM.f_instance_destroy(self))
