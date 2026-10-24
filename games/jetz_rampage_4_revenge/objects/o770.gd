extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_delete = 0.0
var v_firepower = 0.0
var v_mypower = 0.0
var v_otherz = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
func ev_create():
	v_firepower = 25.0
	if ((absf((GM.f_instance_number(791.0)) - 0.0) < 0.00001)):
		(GM.f_sound_loop(222.0))
	if (((GM.view_xview[0] + 400.0) > x)):
		sprite_index = 810.0
		if ((absf(GM.room - 16.0) < 0.00001)):
			sprite_index = 900.0
		hspeed = (15.0 + (GM.f_random(5.0)))
	else:
		sprite_index = 811.0
		hspeed = ((-15.0) - (GM.f_random(5.0)))
		if ((absf(GM.room - 16.0) < 0.00001)):
			sprite_index = 901.0
	alarm[int(0.0)] = 15.0
	v_delete = 0.0
	v_mypower = 5.0
	v_otherz = (GM.f_instance_create(x, 1125.0, 771.0))
	if ((hspeed > 0.0)):
		GM.vsetb(v_otherz, "image_single", 0.0)
	if ((hspeed < 0.0)):
		GM.vsetb(v_otherz, "image_single", 1.0)
func ev_destroy():
	for _w440 in GM.with_list((v_otherz), self):
		if _w440._dead:
			continue
		_w440.other = self
		(GM.f_instance_destroy(_w440))
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_delete = 1.0
func ev_stepend():
	GM.vsetb(v_otherz, "x", x)
func ev_step():
	if ((absf(v_delete - 1.0) < 0.00001)):
		if not ((((self.script_view_check(self)))) >= 0.5):
			if ((absf((GM.f_instance_number(791.0)) - 0.0) < 0.00001)):
				(GM.f_sound_stop(222.0))
			(GM.f_instance_destroy(self))
	if ((absf(gravity - 0.0) < 0.00001)):
		if ((absf((GM.f_instance_number(791.0)) - 0.0) < 0.00001)):
			(GM.f_sound_volume(222.0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[0] + 400.0), (GM.view_yview[0] + 300.0))) / 3000.0)))))
			(GM.f_sound_pan(222.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
		if ((hspeed > 0.0)):
			(GM.f_instance_create((x + 4.0), (y + 41.0), 490.0))
		else:
			(GM.f_instance_create((x + 151.0), (y + 41.0), 490.0))
	if ((vspeed > 1.0)):
		v_wow = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		GM.vsetb(v_wow, "depth", (depth - 1.0))
func ev_col_656():
	if ((absf(gravity - 0.0) < 0.00001)):
		self.ev_user(0.0)
func ev_col_502():
	if ((absf(gravity - 0.0) < 0.00001)):
		(GM.f_sound_play(128.0))
		for _r441 in range(int((3.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r442 in range(int((2.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
		v_mypower = v_mypower - 1.0
		if ((v_mypower < 1.0)):
			self.ev_user(0.0)
func ev_col_491():
	if (((v_firepower > 0.0) and (absf(gravity - 0.0) < 0.00001))):
		v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
		v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
		GM.vsetb(v_woot, "depth", depth)
		GM.vsetb(v_woot2, "depth", depth)
		GM.vsetb(v_woot3, "depth", depth)
		v_firepower = v_firepower - 1.0
		if ((v_firepower < 1.0)):
			self.ev_user(0.0)
func ev_col_489():
	if ((GM.vb(self.other, "y") > 100.0)):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 772.0))
		if ((vspeed > 4.0)):
			for _r443 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
			for _r444 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
			(GM.f_sound_play(129.0))
			friction = 0.3
		if ((absf(alarm[int(1.0)] - (-1.0)) < 0.00001)):
			alarm[int(1.0)] = 100.0
		vspeed = 0.0
	else:
		vspeed = 0.0
func ev_other_10():
	(GM.f_sound_play(242.0))
	if ((absf((GM.f_instance_number(791.0)) - 0.0) < 0.00001)):
		(GM.f_sound_stop(222.0))
	(GM.f_instance_create(x, y, 498.0))
	for _r445 in range(int((55.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r446 in range(int((40.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	(GM.f_sound_play(170.0))
	gravity = 0.6
	friction = 0.2
	gravity_direction = 270.0
