extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_fluh = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
var v_weez = 0.0
var v_whater = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
func ev_create():
	v_image_single = 0.0
	v_mypower = 3.0
	v_whater = 1.0
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
	for _r247 in range(int((4.0))):
		v_wow = (GM.f_instance_create((x + 10.0), (y + 20.0), 788.0))
		GM.vset(v_wow, "v_yyy", (y + sprite_height))
	(GM.f_instance_create(x, y, 629.0))
	v_weez = (GM.f_instance_create(x, y, 630.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	GM.vsetb(v_weez, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
	GM.vsetb(v_weez, "speed", GM.vb(v_weez, "speed") + (2.0 + (GM.f_random(3.0))))
	v_weez = (GM.f_instance_create(x, y, 631.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	GM.vsetb(v_weez, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
	GM.vsetb(v_weez, "speed", GM.vb(v_weez, "speed") + (2.0 + (GM.f_random(3.0))))
	for _r248 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r249 in range(int((75.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r250 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	(GM.f_sound_play(132.0))
	(GM.f_sound_play(142.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r251 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		v_mypower = v_mypower - 1.0
		v_image_single = v_image_single + 1.0
	else:
		for _r252 in range(int((4.0))):
			v_wow = (GM.f_instance_create((x + 10.0), (y + 20.0), 788.0))
			GM.vset(v_wow, "v_yyy", (y + sprite_height))
		(GM.f_instance_create(x, y, 629.0))
		v_weez = (GM.f_instance_create(x, y, 630.0))
		GM.vsetb(v_weez, "direction", (70.0 + (GM.f_random(40.0))))
		v_weez = (GM.f_instance_create(x, y, 631.0))
		GM.vsetb(v_weez, "direction", (70.0 + (GM.f_random(40.0))))
		for _r253 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		for _r254 in range(int((75.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r255 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		(GM.f_sound_play(132.0))
		(GM.f_sound_play(142.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
	for _w256 in GM.with_list((self.other), self):
		if _w256._dead:
			continue
		_w256.other = self
		(GM.f_instance_destroy(_w256))
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
	for _r257 in range(int((4.0))):
		v_wow = (GM.f_instance_create((x + 10.0), (y + 20.0), 788.0))
		GM.vset(v_wow, "v_yyy", (y + sprite_height))
	(GM.f_instance_create(x, y, 629.0))
	v_weez = (GM.f_instance_create(x, y, 630.0))
	GM.vsetb(v_weez, "direction", (70.0 + (GM.f_random(40.0))))
	for _r258 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r259 in range(int((75.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r260 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	(GM.f_sound_play(132.0))
	(GM.f_sound_play(142.0))
	(GM.f_instance_destroy(self))
