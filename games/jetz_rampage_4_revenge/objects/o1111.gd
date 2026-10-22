extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_shizzed = 0.0
var v_wee = 0.0
var v_whatwhat = 0.0
var v_wow = 0.0
var v_wow2 = 0.0
var v_wow3 = 0.0
func ev_create():
	y = 1080.0
	v_wow2 = (GM.f_random(2.0))
	v_wow3 = (v_wow2 / 10.0)
	v_wow = (GM.f_floor((GM.f_random(1.99999))))
	if (GM.eq(v_wow, 0.0)):
		hspeed = (3.0 + v_wow2)
	if (GM.eq(v_wow, 1.0)):
		hspeed = ((-3.0) - v_wow2)
	v_shizzed = (GM.f_random(30.0))
	y = GM.add(y, v_shizzed)
	depth = depth - (v_shizzed / 60.0)
	x = (GM.f_random(GM.room_width))
	image_speed = (0.3 + v_wow3)
	v_whatwhat = 0.0
func ev_col_502():
	(GM.f_sound_play(190.0))
	if ((absf(v_whatwhat - 1.0) < 0.00001)):
		for _r755 in range(int((20.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r756 in range(int((10.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r757 in range(int((10.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
			GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		if ((absf((GM.f_instance_number(1111.0)) - 1.0) < 0.00001)):
			if ((absf((GM.f_instance_number(1090.0)) - 1.0) < 0.00001)):
				GM.G["j4var11"] = GM.G["j4var11"] + 200.0
				(GM.f_sound_play(224.0))
				for _w758 in GM.with_list((680.0), self):
					if _w758._dead:
						continue
					_w758.other = self
					_w758.ev_user(0.0)
				for _w759 in GM.with_list((1090.0), self):
					if _w759._dead:
						continue
					_w759.other = self
					(GM.f_instance_destroy(_w759))
			if ((absf((GM.f_instance_number(1089.0)) - 1.0) < 0.00001)):
				GM.G["j4var11"] = GM.G["j4var11"] + 100.0
				(GM.f_sound_play(224.0))
				for _w760 in GM.with_list((680.0), self):
					if _w760._dead:
						continue
					_w760.other = self
					_w760.ev_user(0.0)
				for _w761 in GM.with_list((1089.0), self):
					if _w761._dead:
						continue
					_w761.other = self
					(GM.f_instance_create(_w761.x, _w761.y, 1090.0))
					(GM.f_instance_destroy(_w761))
		(GM.f_instance_destroy(self))
	v_whatwhat = 1.0
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (GM.eq(v_wow, 0.0)):
		(GM.f_draw_sprite(504.0, (-1.0), x, y))
	if (GM.eq(v_wow, 1.0)):
		(GM.f_draw_sprite(513.0, (-1.0), x, y))
	(GM.f_draw_sprite(840.0, (-1.0), x, (y - 20.0)))
