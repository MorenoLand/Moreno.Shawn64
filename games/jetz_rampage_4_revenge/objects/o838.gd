extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_fluh = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
var v_weez = 0.0
var v_weezzz = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_mypower = 2.0
	v_image_single = 0.0
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
	(GM.f_sound_play(236.0))
	(GM.f_instance_create(x, y, 826.0))
	(GM.f_instance_create(x, (y + 40.0), 826.0))
	for _r487 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r488 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_sound_play(129.0))
	v_weez = (GM.f_instance_create(x, y, 895.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	GM.vsetb(v_weez, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
	GM.vsetb(v_weez, "speed", GM.vb(v_weez, "speed") + (6.0 + (GM.f_random(3.0))))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((v_mypower > 0.0)):
		(GM.f_sound_play(236.0))
		(GM.f_sound_play(128.0))
		for _r489 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		for _r490 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		v_mypower = v_mypower - 1.0
	else:
		(GM.f_sound_play(236.0))
		(GM.f_instance_create(x, y, 826.0))
		(GM.f_instance_create(x, (y + 40.0), 826.0))
		(GM.f_sound_play(129.0))
		for _r491 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		for _r492 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		v_weezzz = (GM.f_instance_create((x - 10.0), (y + 20.0), 895.0))
		if ((GM.vb(self.other, "hspeed") > 0.0)):
			GM.vsetb(v_weezzz, "direction", (50.0 + (GM.f_random(20.0))))
		if ((GM.vb(self.other, "hspeed") < 0.0)):
			GM.vsetb(v_weezzz, "direction", (130.0 - (GM.f_random(20.0))))
		(GM.f_instance_destroy(self))
	for _w493 in GM.with_list((self.other), self):
		if _w493._dead:
			continue
		_w493.other = self
		(GM.f_instance_destroy(_w493))
	for _w494 in GM.with_list((self.other), self):
		if _w494._dead:
			continue
		_w494.other = self
		(GM.f_instance_destroy(_w494))
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
	(GM.f_sound_play(236.0))
	(GM.f_instance_create(x, y, 826.0))
	(GM.f_instance_create(x, (y + 40.0), 826.0))
	(GM.f_sound_play(129.0))
	for _r495 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r496 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	v_weezzz = (GM.f_instance_create((x - 10.0), (y + 20.0), 895.0))
	GM.vsetb(v_weezzz, "direction", (50.0 + (GM.f_random(80.0))))
	(GM.f_instance_destroy(self))
	(GM.f_instance_destroy(self))
