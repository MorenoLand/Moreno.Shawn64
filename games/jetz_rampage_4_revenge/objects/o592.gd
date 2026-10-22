extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_fluh = 0.0
var v_mypower = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_alarm_1():
	self.ev_user(0.0)
func ev_alarm_0():
	for _r212 in range(int((4.0))):
		v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
		v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
		GM.vsetb(v_woot, "depth", depth)
		GM.vsetb(v_woot2, "depth", depth)
		GM.vsetb(v_woot3, "depth", depth)
	alarm[int(0.0)] = 1.0
func ev_col_791():
	if (((absf(gravity - 0.0) < 0.00001))):
		GM.vsetb(self.other, "speed", (GM.vb(self.other, "speed") / 2.0))
		for _r213 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		for _r214 in range(int((2.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		(GM.f_motion_add(self, GM.vb(self.other, "direction"), 4.0))
		depth = (-3.0)
		(GM.f_sound_play(122.0))
		(GM.f_sound_play(132.0))
		gravity = 0.5
func ev_col_656():
	if (((absf(gravity - 0.0) < 0.00001))):
		for _r215 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		for _r216 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		v_fluh = GM.vget(self.other, "v_wooper")
		direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
		speed = speed + (3.0 + (GM.f_random(2.0)))
		depth = (-3.0)
		(GM.f_sound_play(122.0))
		gravity = 0.5
func ev_col_604():
	(self.script_adddamage())
	(GM.f_sound_play(148.0))
	if ((absf(sprite_width - 200.0) < 0.00001)):
		for _r217 in range(int((150.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r218 in range(int((75.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	else:
		for _r219 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r220 in range(int((40.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if (((absf(gravity - 0.0) < 0.00001))):
		if ((v_mypower > 0.0)):
			for _r221 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
			for _r222 in range(int((2.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
			v_mypower = v_mypower - 1.0
		else:
			if ((absf(gravity - 0.0) < 0.00001)):
				if ((GM.vb(self.other, "hspeed") > 0.0)):
					hspeed = hspeed + (GM.f_random(1.0))
				if ((GM.vb(self.other, "hspeed") < 0.0)):
					hspeed = hspeed - (GM.f_random(1.0))
				depth = (-3.0)
				if ((absf(gravity - 0.0) < 0.00001)):
					(GM.f_sound_play(122.0))
				gravity = 0.5
		(GM.f_sound_play(145.0))
		for _w223 in GM.with_list((self.other), self):
			if _w223._dead:
				continue
			_w223.other = self
			(GM.f_instance_destroy(_w223))
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
		depth = (-3.0)
		if ((absf(gravity - 0.0) < 0.00001)):
			(GM.f_sound_play(122.0))
		gravity = 0.5
func ev_other_11():
	if ((v_firepower < 1.0)):
		alarm[int(0.0)] = 1.0
		alarm[int(1.0)] = 75.0
func ev_other_10():
	(GM.f_sound_play(148.0))
	if ((absf(sprite_width - 200.0) < 0.00001)):
		for _r224 in range(int((150.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r225 in range(int((75.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	else:
		for _r226 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r227 in range(int((40.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	(GM.f_instance_destroy(self))
func ev_other_4():
	v_mypower = 6.0
	depth = (-1.0)
	v_firepower = 30.0
func ev_other_0():
	(GM.f_instance_destroy(self))
