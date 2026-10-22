extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_whater = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_whater = 1.0
	v_firepower = 5.0
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
func ev_col_959():
	self.ev_user(0.0)
func ev_col_656():
	for _r499 in range(int((1.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 618.0))
	for _r500 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
	for _r501 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
	for _r502 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 10.0) + (GM.f_random(10.0))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((absf(v_whater - 1.0) < 0.00001)):
		(GM.f_sound_play(135.0))
		for _r503 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
		for _r504 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
		v_whater = 0.0
	else:
		for _r505 in range(int((1.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 618.0))
		for _r506 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
		for _r507 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
		for _r508 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 10.0) + (GM.f_random(10.0))), 608.0))
		(GM.f_sound_play(139.0))
		(GM.f_instance_destroy(self))
	for _w509 in GM.with_list((self.other), self):
		if _w509._dead:
			continue
		_w509.other = self
		(GM.f_instance_destroy(_w509))
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
	for _r510 in range(int((1.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 618.0))
	for _r511 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 599.0))
	for _r512 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), ((y + 10.0) + (GM.f_random(7.0))), 619.0))
	for _r513 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 10.0) + (GM.f_random(10.0))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
