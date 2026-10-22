extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_fluh = 0.0
var v_mypower = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_mypower = 3.0
	depth = 0.0
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
	if ((absf(gravity - 0.0) < 0.00001)):
		for _r124 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		v_fluh = GM.vget(self.other, "v_wooper")
		direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
		speed = speed + (3.0 + (GM.f_random(2.0)))
		(GM.f_sound_play(122.0))
		gravity = 0.5
func ev_col_604():
	self.ev_user(0.0)
func ev_col_502():
	if ((v_mypower > 0.0)):
		(GM.f_sound_play(127.0))
		for _r125 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
			for _w126 in GM.with_list((self.other), self):
				if _w126._dead:
					continue
				_w126.other = self
				(GM.f_instance_destroy(_w126))
		v_mypower = v_mypower - 1.0
	else:
		self.ev_user(2.0)
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
	if ((absf(gravity - 0.0) < 0.00001)):
		for _r127 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		if ((GM.vb(self.other, "hspeed") > 0.0)):
			hspeed = (1.0 + (GM.f_random(1.0)))
		else:
			hspeed = ((-1.0) - (GM.f_random(1.0)))
		(GM.f_sound_play(122.0))
		gravity = 0.5
		depth = (-5.0)
func ev_other_11():
	if ((v_firepower < 1.0)):
		alarm[int(0.0)] = 1.0
		alarm[int(1.0)] = 75.0
func ev_other_10():
	(self.script_adddamage())
	(GM.f_sound_play(130.0))
	for _r128 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r129 in range(int((35.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_destroy(self))
