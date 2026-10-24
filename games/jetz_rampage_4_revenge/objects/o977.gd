extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_dies = 0.0
var v_persond = 0.0
var v_wee = 0.0
var v_woot = 0.0
func ev_create():
	alarm[int(0.0)] = 3.0
	alarm[int(1.0)] = 80.0
	image_single = 2.0
	v_dies = 1.0
func ev_alarm_2():
	(GM.f_instance_destroy(self))
func ev_alarm_1():
	self.ev_user(0.0)
func ev_alarm_0():
	self.ev_user(0.0)
func ev_col_976():
	if ((absf(v_dies - 1.0) < 0.00001)):
		image_single = (GM.f_random(5.0))
		(GM.f_sound_play(245.0))
		for _r625 in range(int((3.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r626 in range(int((4.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
		GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
		v_wee = (GM.f_round((GM.f_random(10.0))))
		if (GM.eq(v_wee, 0.0)):
			(self.script_personscream())
		alarm[int(0.0)] = 3.0
func ev_other_10():
	if ((absf(v_dies - 1.0) < 0.00001)):
		for _r627 in range(int((3.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r628 in range(int((4.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r629 in range(int((20.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
			GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		if ((hspeed > 0.0)):
			hspeed = 6.0
		if ((hspeed < 0.0)):
			hspeed = (-6.0)
		v_woot = (GM.f_instance_create(x, y, 711.0))
		GM.vsetb(v_woot, "sprite_index", sprite_index)
		GM.vset(v_woot, "v_persond", v_persond)
		GM.vset(v_woot, "v_bridge", 0.0)
		GM.vsetb(v_woot, "vspeed", vspeed)
		GM.vsetb(v_woot, "hspeed", hspeed)
		GM.vsetb(v_woot, "depth", depth)
		for _w630 in GM.with_list((v_woot), self):
			if _w630._dead:
				continue
			_w630.other = self
			GM.vset(_w630, "v_mypower", (-1.0))
			_w630.ev_user(0.0)
			_w630.ev_user(1.0)
		v_dies = 0.0
		visible = 0.0
		alarm[int(2.0)] = 30.0
