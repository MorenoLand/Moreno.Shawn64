extends "res://games/jetz_rampage_4_revenge/objects/o506.gd"
var v_firepower = 0.0
var v_mypower = 0.0
var v_peter = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_mypower = 1.0
	v_image_single = 0.0
	v_peter = y
	v_firepower = 20.0
func ev_alarm_1():
	self.ev_user(0.0)
func ev_alarm_0():
	v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
	v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "depth", depth)
	alarm[int(0.0)] = 1.0
func ev_col_656():
	for _r818 in range(int((15.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_create(x, y, 506.0))
	(GM.f_instance_create(x, y, 707.0))
	for _r819 in range(int((20.0))):
		v_peter = v_peter + 40.0
		(GM.f_instance_create(x, v_peter, 635.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
	for _w820 in GM.with_list((self.other), self):
		if _w820._dead:
			continue
		_w820.other = self
		(GM.f_instance_destroy(_w820))
func ev_col_635():
	(GM.f_instance_create(x, y, 506.0))
	(GM.f_instance_create(x, y, 707.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r821 in range(int((5.0))):
			(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		for _r822 in range(int((15.0))):
			(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
		(GM.f_instance_create(x, y, 506.0))
		v_wee = (GM.f_instance_create(x, y, 707.0))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + (GM.vb(self.other, "hspeed") / 5.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + (GM.vb(self.other, "vspeed") / 5.0))
		for _r823 in range(int((20.0))):
			v_peter = v_peter + 40.0
			(GM.f_instance_create(x, v_peter, 635.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
	for _w824 in GM.with_list((self.other), self):
		if _w824._dead:
			continue
		_w824.other = self
		(GM.f_instance_destroy(_w824))
func ev_col_491():
	if ((v_firepower > 0.0)):
		v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
		v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
		GM.vsetb(v_woot, "depth", depth)
		GM.vsetb(v_woot2, "depth", depth)
		GM.vsetb(v_woot3, "depth", depth)
		v_firepower = v_firepower - 1.0
		self.ev_user(1.0)
func ev_other_11():
	if ((v_firepower < 1.0)):
		alarm[int(0.0)] = 1.0
		alarm[int(1.0)] = 75.0
func ev_other_10():
	for _r825 in range(int((15.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_create(x, y, 506.0))
	(GM.f_instance_create(x, y, 707.0))
	for _r826 in range(int((20.0))):
		v_peter = v_peter + 40.0
		(GM.f_instance_create(x, v_peter, 635.0))
	(GM.f_instance_destroy(self))
