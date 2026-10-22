extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_mypower = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_mypower = 2.0
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
func ev_step():
	if ((((x > GM.view_xview[0]) and (x < (GM.view_xview[0] + 800.0))))):
		(GM.f_instance_create((((x + (sprite_width / 2.0)) - 120.0) + (GM.f_random(240.0))), (((y + (sprite_height / 2.0)) - 140.0) + (GM.f_random(100.0))), 579.0))
func ev_col_656():
	(GM.f_instance_create(x, y, 617.0))
	for _r165 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r166 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r167 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		(GM.f_instance_create(x, y, 617.0))
		for _r168 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		for _r169 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		(GM.f_sound_play(139.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
	for _w170 in GM.with_list((self.other), self):
		if _w170._dead:
			continue
		_w170.other = self
		(GM.f_instance_destroy(_w170))
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
	(GM.f_instance_create(x, y, 617.0))
	for _r171 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r172 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
