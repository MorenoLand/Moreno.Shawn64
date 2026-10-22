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
	v_firepower = 15.0
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
	if ((absf(gravity - 0.0) < 0.00001)):
		depth = (-3.0)
		for _r173 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		v_fluh = GM.vget(self.other, "v_wooper")
		direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
		speed = speed + (2.0 + (GM.f_random(2.0)))
		(GM.f_sound_play(122.0))
		gravity = 0.5
func ev_col_604():
	(self.script_adddamage())
	(GM.f_sound_play(130.0))
	for _r174 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r175 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r176 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 18.0) + (GM.f_random(4.0))), 599.0))
		for _r177 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 18.0) + (GM.f_random(4.0))), 608.0))
		v_image_single = v_image_single + 1.0
		v_mypower = v_mypower - 1.0
	else:
		depth = (-3.0)
		for _r178 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 18.0) + (GM.f_random(4.0))), 599.0))
		for _r179 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 18.0) + (GM.f_random(4.0))), 608.0))
		(GM.f_sound_play(170.0))
		v_weez = (GM.f_instance_create(x, y, 698.0))
		if ((absf(sprite_index - 553.0) < 0.00001)):
			GM.vsetb(v_weez, "sprite_index", 553.0)
		if ((absf(sprite_index - 554.0) < 0.00001)):
			GM.vsetb(v_weez, "sprite_index", 554.0)
		GM.vsetb(v_weez, "direction", GM.vb(self.other, "direction"))
		GM.vsetb(v_weez, "speed", (GM.f_random(1.0)))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(145.0))
	for _w180 in GM.with_list((self.other), self):
		if _w180._dead:
			continue
		_w180.other = self
		(GM.f_instance_destroy(_w180))
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
	depth = (-3.0)
	for _r181 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 18.0) + (GM.f_random(4.0))), 599.0))
	for _r182 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 18.0) + (GM.f_random(4.0))), 608.0))
	(GM.f_sound_play(170.0))
	v_weez = (GM.f_instance_create(x, y, 698.0))
	if ((absf(sprite_index - 553.0) < 0.00001)):
		GM.vsetb(v_weez, "sprite_index", 553.0)
	if ((absf(sprite_index - 554.0) < 0.00001)):
		GM.vsetb(v_weez, "sprite_index", 554.0)
	GM.vsetb(v_weez, "direction", (GM.f_random(360.0)))
	GM.vsetb(v_weez, "speed", (GM.f_random(1.0)))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
