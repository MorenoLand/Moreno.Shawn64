extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_fluh = 0.0
var v_mypower = 0.0
var v_weez = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
func ev_create():
	v_mypower = 2.0
	image_single = 0.0
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
	for _r188 in range(int((2.0))):
		v_wow = (GM.f_instance_create((x + 6.0), y, 788.0))
		GM.vset(v_wow, "v_yyy", (y + sprite_height))
	(GM.f_sound_play(129.0))
	(GM.f_instance_create(x, y, 626.0))
	for _r189 in range(int((20.0))):
		v_weez = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(16.0))), 627.0))
		v_fluh = GM.vget(self.other, "v_wooper")
		GM.vsetb(v_weez, "direction", ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0) - 30.0) + (GM.f_random(60.0))))
		GM.vsetb(v_weez, "speed", GM.vb(v_weez, "speed") + (5.0 + (GM.f_random(3.0))))
	for _r190 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r191 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 625.0))
	for _r192 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(128.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r193 in range(int((8.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		for _r194 in range(int((8.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 625.0))
		v_mypower = v_mypower - 1.0
		image_single = image_single + 1.0
	else:
		for _r195 in range(int((2.0))):
			v_wow = (GM.f_instance_create((x + 6.0), y, 788.0))
			GM.vset(v_wow, "v_yyy", (y + sprite_height))
		(GM.f_sound_play(129.0))
		(GM.f_instance_create(x, y, 626.0))
		for _r196 in range(int((20.0))):
			v_weez = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(16.0))), 627.0))
			GM.vsetb(v_weez, "direction", (20.0 + (GM.f_random(140.0))))
		for _r197 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		for _r198 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 625.0))
		for _r199 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(128.0))
	for _w200 in GM.with_list((self.other), self):
		if _w200._dead:
			continue
		_w200.other = self
		(GM.f_instance_destroy(_w200))
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
	for _r201 in range(int((2.0))):
		v_wow = (GM.f_instance_create((x + 6.0), y, 788.0))
		GM.vset(v_wow, "v_yyy", (y + sprite_height))
	(GM.f_sound_play(129.0))
	(GM.f_instance_create(x, y, 626.0))
	for _r202 in range(int((20.0))):
		v_weez = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(16.0))), 627.0))
		GM.vsetb(v_weez, "direction", (20.0 + (GM.f_random(140.0))))
	for _r203 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r204 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 625.0))
	for _r205 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
