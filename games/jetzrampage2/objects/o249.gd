extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
var v_door = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
func ev_create():
	v_mypower = 20.0
	v_alive = 1.0
	hspeed = 10.0
	v_door = 0.0
	alarm[int(0.0)] = 25.0
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_1():
	if (((absf(hspeed - 6.0) < 0.00001))):
		hspeed = 3.0
	if (((absf(hspeed - (-6.0)) < 0.00001))):
		hspeed = (-3.0)
func ev_step():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if ((((GM.f_random(50.0)) < 1.0))):
			if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 16.0))))) >= 0.5:
				vspeed = (-10.0)
		if ((((GM.f_random(25.0)) < 1.0))):
			if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 16.0))))) >= 0.5:
				hspeed = (-hspeed)
		if (((hspeed > 0.0))):
			sprite_index = 261.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			sprite_index = 262.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
func ev_col_16():
	vspeed = 0.0
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		v_mypower = v_mypower + (-1.0)
		if (((v_mypower > 0.0))):
			(GM.f_sound_play(86.0))
		if (((absf(v_mypower - 0.0) < 0.00001))):
			(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 480.0))
			for _w106 in GM.with_list((67.0), self):
				if _w106._dead:
					continue
				_w106.other = self
				GM.vset(_w106, "v_currentmoney", GM.vget(_w106, "v_currentmoney") + 100.0)
			for _w107 in GM.with_list((247.0), self):
				if _w107._dead:
					continue
				_w107.other = self
				(GM.f_instance_create((_w107.x + 0.0), (_w107.y + 0.0), 478.0))
			for _w108 in GM.with_list((1884.0), self):
				if _w108._dead:
					continue
				_w108.other = self
				(GM.f_instance_destroy(_w108))
			for _w109 in GM.with_list((250.0), self):
				if _w109._dead:
					continue
				_w109.other = self
				(GM.f_instance_destroy(_w109))
			for _w110 in GM.with_list((247.0), self):
				if _w110._dead:
					continue
				_w110.other = self
				(GM.f_instance_destroy(_w110))
			(GM.f_sound_play(88.0))
			x = (x - 10.0)
			y = y
			for _r111 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
			(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
			if ((absf(direction - 0.0) < 0.00001)):
				v_image_single = 0.0
			else:
				v_image_single = 1.0
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
		else:
			(GM.f_sound_play(12.0))
			for _r112 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_other_0():
	y = y + (-10.0)
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
