extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_image_single = 0.0
var v_whater = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_whater = 1.0
	v_image_single = 0.0
	v_firepower = 3.0
func ev_alarm_1():
	self.ev_user(0.0)
func ev_alarm_0():
	v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
	v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
	GM.vsetb(v_woot, "depth", 0.0)
	GM.vsetb(v_woot2, "depth", 0.0)
	GM.vsetb(v_woot3, "depth", 0.0)
	alarm[int(0.0)] = 1.0
func ev_col_959():
	self.ev_user(0.0)
func ev_col_656():
	for _r138 in range(int((1.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 618.0))
	for _r139 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
	for _r140 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
	for _r141 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 10.0) + (GM.f_random(10.0))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((absf(v_whater - 1.0) < 0.00001)):
		(GM.f_sound_play(135.0))
		for _r142 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
		for _r143 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
		v_whater = 0.0
	else:
		(GM.f_instance_create(x, y, 620.0))
		for _r144 in range(int((1.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 618.0))
		for _r145 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
		for _r146 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
		for _r147 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 10.0) + (GM.f_random(10.0))), 608.0))
		(GM.f_sound_play(139.0))
		(GM.f_instance_destroy(self))
	for _w148 in GM.with_list((self.other), self):
		if _w148._dead:
			continue
		_w148.other = self
		(GM.f_instance_destroy(_w148))
func ev_col_491():
	if ((v_firepower > 0.0)):
		v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
		v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
		GM.vsetb(v_woot, "depth", 0.0)
		GM.vsetb(v_woot2, "depth", 0.0)
		GM.vsetb(v_woot3, "depth", 0.0)
		v_firepower = v_firepower - 1.0
		self.ev_user(1.0)
func ev_other_11():
	if ((v_firepower < 1.0)):
		alarm[int(0.0)] = 1.0
		alarm[int(1.0)] = 75.0
func ev_other_10():
	for _r149 in range(int((1.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 618.0))
	for _r150 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
	for _r151 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
	for _r152 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 10.0) + (GM.f_random(10.0))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
