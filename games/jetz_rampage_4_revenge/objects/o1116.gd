extends "res://games/jetz_rampage_4_revenge/objects/o1111.gd"
var v_wowz = 0.0
func ev_create():
	y = 1080.0
	v_wow2 = (GM.f_random(2.0))
	v_wow = (GM.f_floor((GM.f_random(1.99999))))
	if (GM.eq(v_wow, 0.0)):
		hspeed = (3.0 + v_wow2)
	if (GM.eq(v_wow, 1.0)):
		hspeed = ((-3.0) - v_wow2)
	x = (GM.f_random(GM.room_width))
	image_speed = 0.5
	v_whatwhat = 0.0
	gravity = 0.4
func ev_step():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 489.0))))) >= 0.5:
		v_wowz = (GM.f_floor((GM.f_random(29.9999))))
		if (GM.eq(v_wowz, 0.0)):
			vspeed = ((-10.0) - (GM.f_random(5.0)))
func ev_col_502():
	(GM.f_sound_play(190.0))
	if ((absf(v_whatwhat - 1.0) < 0.00001)):
		for _r925 in range(int((20.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", GM.room_height)
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r926 in range(int((10.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", GM.room_height)
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r927 in range(int((10.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
			GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
			GM.vset(v_wee, "v_yyy", GM.room_height)
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		if ((absf((GM.f_instance_number(1111.0)) - 1.0) < 0.00001)):
			if ((absf((GM.f_instance_number(1090.0)) - 1.0) < 0.00001)):
				GM.G["j4var11"] = GM.G["j4var11"] + 200.0
				(GM.f_sound_play(224.0))
				for _w928 in GM.with_list((680.0), self):
					if _w928._dead:
						continue
					_w928.other = self
					_w928.ev_user(0.0)
				for _w929 in GM.with_list((1090.0), self):
					if _w929._dead:
						continue
					_w929.other = self
					(GM.f_instance_destroy(_w929))
			if ((absf((GM.f_instance_number(1089.0)) - 1.0) < 0.00001)):
				GM.G["j4var11"] = GM.G["j4var11"] + 100.0
				(GM.f_sound_play(224.0))
				for _w930 in GM.with_list((680.0), self):
					if _w930._dead:
						continue
					_w930.other = self
					_w930.ev_user(0.0)
				for _w931 in GM.with_list((1089.0), self):
					if _w931._dead:
						continue
					_w931.other = self
					(GM.f_instance_create(_w931.x, _w931.y, 1090.0))
					(GM.f_instance_destroy(_w931))
		(GM.f_instance_destroy(self))
	v_whatwhat = 1.0
func ev_col_489():
	vspeed = 0.0
func ev_other_0():
	y = y - 45.0
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
