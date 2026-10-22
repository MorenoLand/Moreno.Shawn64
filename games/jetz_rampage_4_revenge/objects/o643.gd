extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_grrr = 0.0
var v_hittarget = 0.0
var v_image_single = 0.0
var v_onelectric = 0.0
var v_onfire = 0.0
var v_shot = 0.0
var v_spurt = 0.0
var v_spurtdirection = 0.0
var v_wee = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_xxx = 0.0
var v_yyy = 0.0
func ev_create():
	for _w274 in GM.with_list((self.other), self):
		if _w274._dead:
			continue
		_w274.other = self
		_w274.gravity_direction = 270.0
		_w274.gravity = 0.5
		GM.vset(_w274, "v_spurtdirection", (20.0 + (GM.f_random(140.0))))
		GM.vset(_w274, "v_xxx", (GM.f_random(20.0)))
		GM.vset(_w274, "v_yyy", (GM.f_random(20.0)))
		GM.vset(_w274, "v_hittarget", 1.0)
		if ((absf(GM.room - 1.0) < 0.00001)):
			GM.G["j4var14"] = GM.G["j4var14"] + 1.0
		if ((absf(GM.room - 16.0) < 0.00001)):
			GM.G["j4var15"] = GM.G["j4var15"] + 1.0
		if (((GM.G["j4var14"] > 6000.0) and (absf(GM.G["j4var20"] - 0.0) < 0.00001))):
			GM.vset(_w274, "v_wee", (GM.f_instance_create(_w274.x, _w274.y, 974.0)))
			GM.vset(GM.vget(_w274, "v_wee"), "v_powerupz", "the Fire Cannon for 3000 kills!")
			GM.G["j4var20"] = 1.0
		if (((GM.G["j4var15"] > 6000.0) and (absf(GM.G["j4var21"] - 0.0) < 0.00001))):
			GM.vset(_w274, "v_wee", (GM.f_instance_create(_w274.x, _w274.y, 974.0)))
			GM.vset(GM.vget(_w274, "v_wee"), "v_powerupz", "Power Grenades for 3000 kills!")
			GM.G["j4var21"] = 1.0
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((absf(v_spurt - 1.0) < 0.00001)):
		for _r275 in range(int((3.0))):
			v_wee = (GM.f_instance_create((((x + (sprite_width / 2.0)) - 10.0) + v_xxx), (((y + (sprite_height / 2.0)) - 10.0) + v_yyy), 654.0))
			GM.vsetb(v_wee, "direction", ((v_spurtdirection - 5.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "depth", (depth - 0.001))
	if ((absf(v_onfire - 1.0) < 0.00001)):
		v_woot2 = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 905.0))
		v_woot3 = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 1.0), ((y + (sprite_height / 2.0)) - 10.0), 906.0))
		GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
		GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
		GM.vsetb(v_woot2, "depth", depth)
		GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
		GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
		GM.vsetb(v_woot3, "depth", depth)
	if ((absf(v_onelectric - 1.0) < 0.00001)):
		v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
		GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
		GM.vsetb(v_woot2, "depth", depth)
func ev_col_801():
	hspeed = 0.0
func ev_col_796():
	if (((absf(v_hittarget - 1.0) < 0.00001))):
		if (((vspeed > 10.0))):
			if ((absf((GM.f_instance_number(797.0)) - 1.0) < 0.00001)):
				GM.vset(797.0, "v_targethit", GM.vget(797.0, "v_targethit") + 1.0)
			if ((absf((GM.f_instance_number(799.0)) - 1.0) < 0.00001)):
				GM.vset(799.0, "v_targethit", GM.vget(799.0, "v_targethit") + 1.0)
			if (((absf((GM.f_instance_number(919.0)) - 1.0) < 0.00001) and (absf(v_onfire - 1.0) < 0.00001))):
				GM.vset(919.0, "v_targethit", GM.vget(919.0, "v_targethit") + 1.0)
			if (((absf((GM.f_instance_number(1062.0)) - 1.0) < 0.00001) and (absf(v_onfire - 1.0) < 0.00001))):
				GM.vset(1062.0, "v_targethit", GM.vget(1062.0, "v_targethit") + 1.0)
			(GM.f_sound_play(139.0))
			v_hittarget = 0.0
func ev_col_652():
	if ((GM.eq(v_grrr, GM.vget(self.other, "v_grrr")))):
		gravity = 0.0
		hspeed = 0.0
		vspeed = 0.0
func ev_col_491():
	if ((absf(v_onfire - 0.0) < 0.00001)):
		v_onfire = 1.0
func ev_col_489():
	if (((GM.vb(self.other, "y") > 100.0))):
		if (not (((absf(vspeed - 0.0) < 0.00001)))):
			if (((((self.script_view_check(self)))))) >= 0.5:
				(GM.f_sound_play(190.0))
			if ((speed > 5.0)):
				(GM.f_instance_create(x, y, 545.0))
				for _r276 in range(int((50.0))):
					v_shot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 654.0))
					GM.vsetb(v_shot, "direction", (20.0 + (GM.f_random(140.0))))
					GM.vsetb(v_shot, "depth", (depth - 1.0))
			gravity = 0.0
			vspeed = 0.0
			hspeed = 0.0
func ev_other_7():
	v_image_single = (image_number - 1.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
