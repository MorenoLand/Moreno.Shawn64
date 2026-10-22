extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_fluh = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
var v_weez = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_mypower = 3.0
	v_image_single = 0.0
	v_firepower = 25.0
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
	(GM.f_sound_play(126.0))
	(GM.f_instance_create(x, y, 611.0))
	v_weez = (GM.f_instance_create(x, y, 610.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	GM.vsetb(v_weez, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
	GM.vsetb(v_weez, "speed", GM.vb(v_weez, "speed") + (10.0 + (GM.f_random(3.0))))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(121.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r121 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), (y + (GM.f_random((sprite_height - 3.0)))), 609.0))
		v_image_single = v_image_single + 1.0
		v_mypower = v_mypower - 1.0
	else:
		(GM.f_sound_play(126.0))
		(GM.f_instance_create(x, y, 611.0))
		v_weez = (GM.f_instance_create(x, y, 610.0))
		GM.vsetb(v_weez, "direction", (65.0 + (GM.f_random(50.0))))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(121.0))
	for _w122 in GM.with_list((self.other), self):
		if _w122._dead:
			continue
		_w122.other = self
		(GM.f_instance_destroy(_w122))
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
	(GM.f_sound_play(126.0))
	(GM.f_instance_create(x, y, 611.0))
	v_weez = (GM.f_instance_create(x, y, 610.0))
	GM.vsetb(v_weez, "direction", (65.0 + (GM.f_random(50.0))))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(121.0))
	for _w123 in GM.with_list((self.other), self):
		if _w123._dead:
			continue
		_w123.other = self
		(GM.f_instance_destroy(_w123))
