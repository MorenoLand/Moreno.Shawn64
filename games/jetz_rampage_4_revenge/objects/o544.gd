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
	v_image_single = 0.0
	v_mypower = 4.0
	if ((y < 920.0)):
		depth = 15.0
	v_firepower = 14.0
	if ((absf(GM.room - 1.0) < 0.00001)):
		sprite_index = 519.0
	if ((absf(GM.room - 16.0) < 0.00001)):
		sprite_index = 871.0
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
	for _r116 in range(int((100.0))):
		(GM.f_instance_create(((x + 8.0) + (GM.f_random(60.0))), ((y + 12.0) + (GM.f_random(27.0))), 599.0))
	(GM.f_sound_play(132.0))
	if ((y < 1000.0)):
		v_weez = (GM.f_instance_create(x, y, 968.0))
	else:
		v_weez = (GM.f_instance_create(x, y, 613.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	GM.vsetb(v_weez, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
	GM.vsetb(v_weez, "speed", GM.vb(v_weez, "speed") + (10.0 + (GM.f_random(3.0))))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r117 in range(int((15.0))):
			(GM.f_instance_create(((x + 8.0) + (GM.f_random(60.0))), ((y + 12.0) + (GM.f_random(27.0))), 599.0))
		v_image_single = v_image_single + 1.0
		v_mypower = v_mypower - 1.0
	else:
		for _r118 in range(int((100.0))):
			(GM.f_instance_create(((x + 8.0) + (GM.f_random(60.0))), ((y + 12.0) + (GM.f_random(27.0))), 599.0))
		(GM.f_sound_play(132.0))
		if ((y < 1000.0)):
			v_weez = (GM.f_instance_create(x, y, 968.0))
		else:
			v_weez = (GM.f_instance_create(x, y, 613.0))
		if ((GM.vb(self.other, "hspeed") > 0.0)):
			GM.vsetb(v_weez, "direction", (GM.f_random(10.0)))
		if ((GM.vb(self.other, "hspeed") < 0.0)):
			GM.vsetb(v_weez, "direction", (170.0 + (GM.f_random(10.0))))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(131.0))
	for _w119 in GM.with_list((self.other), self):
		if _w119._dead:
			continue
		_w119.other = self
		(GM.f_instance_destroy(_w119))
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
	for _r120 in range(int((100.0))):
		(GM.f_instance_create(((x + 8.0) + (GM.f_random(60.0))), ((y + 12.0) + (GM.f_random(27.0))), 599.0))
	(GM.f_sound_play(132.0))
	if ((y < 1000.0)):
		v_weez = (GM.f_instance_create(x, y, 968.0))
	else:
		v_weez = (GM.f_instance_create(x, y, 613.0))
	GM.vsetb(v_weez, "direction", (GM.f_random(180.0)))
	GM.vsetb(v_weez, "direction", (GM.f_random(10.0)))
	(GM.f_instance_destroy(self))
