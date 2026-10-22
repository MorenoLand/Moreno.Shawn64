extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_mypower = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_mypower = 1.0
	v_firepower = 6.0
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
	self.ev_user(2.0)
func ev_col_656():
	(self.script_adddamage())
	for _r91 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 599.0))
	for _r92 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 608.0))
	(GM.f_sound_play(132.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r93 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 599.0))
		for _r94 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 608.0))
		v_mypower = v_mypower - 1.0
	else:
		(self.script_adddamage())
		for _r95 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 599.0))
		for _r96 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 608.0))
		(GM.f_sound_play(132.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(169.0))
	for _w97 in GM.with_list((self.other), self):
		if _w97._dead:
			continue
		_w97.other = self
		(GM.f_instance_destroy(_w97))
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
func ev_other_12():
	(self.script_adddamage())
	(GM.f_instance_create(x, y, 960.0))
	for _r98 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 599.0))
	for _r99 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 608.0))
	(GM.f_sound_play(132.0))
	(GM.f_instance_destroy(self))
func ev_other_11():
	if ((v_firepower < 1.0)):
		alarm[int(0.0)] = 1.0
		alarm[int(1.0)] = 75.0
func ev_other_10():
	(self.script_adddamage())
	for _r100 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 599.0))
	for _r101 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 608.0))
	(GM.f_sound_play(132.0))
	(GM.f_instance_destroy(self))
