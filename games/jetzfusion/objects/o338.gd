extends "res://games/jetzfusion/scripts.gd"
var v_Chainsawwav = 0.0
var v_brush_color = 0.0
var v_dienow = 0.0
var v_dis = 0.0
var v_hdir = 0.0
var v_maxh = 0.0
var v_maxv = 0.0
var v_mypower = 0.0
var v_pen_color = 0.0
var v_vdir = 0.0
var v_weapon = 0.0
func ev_create():
	(GM.f_instance_create(x, 0.0, 114.0))
	alarm[int(0.0)] = 1.0
	v_hdir = 0.0
	v_vdir = 0.0
	v_maxh = 0.0
	v_maxv = 0.0
	v_dis = (GM.f_random(300.0))
	v_mypower = 150.0
	v_dienow = 0.0
	v_weapon = 2.0
	(GM.f_sound_play(35.0))
func ev_alarm_0():
	if ((absf(v_dienow - 0.0) < 0.00001)):
		alarm[int(0.0)] = ((GM.room_speed * 3.0) + (GM.f_random(GM.room_speed)))
		v_maxh = ((((GM.f_distance_to_point(self, (GM.vb(7.0, "x") - (((GM.f_random(20.0)) + 10.0))), y)) / 30.0)) + GM.vb(7.0, "hspeed"))
		if (v_maxh > 10.0):
			v_maxh = 10.0
		if (v_maxh < 2.0):
			v_maxh = 2.0
		v_maxv = ((((GM.f_distance_to_point(self, x, (GM.vb(7.0, "y") - (((GM.f_random(20.0)) + 10.0))))) / 30.0)) + GM.vb(7.0, "vspeed"))
		if (v_maxv > 10.0):
			v_maxv = 10.0
		if (v_maxv < 2.0):
			v_maxv = 2.0
		if (GM.vb(7.0, "x") > x):
			v_hdir = 1.0
		else:
			v_hdir = 2.0
		if (GM.vb(7.0, "y") > y):
			v_vdir = 1.0
		else:
			v_vdir = 2.0
func ev_step():
	if ((absf(v_dienow - 1.0) < 0.00001)):
		(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(345.0, "x"), (GM.vb(345.0, "y") + 250.0))), 0.5))
		if ((speed > 10.0)):
			speed = 10.0
	if (((GM.G["jhealth"] > 0.0))):
		GM.G["jhealth"] = GM.G["jhealth"] + (-0.2)
	if (((absf((GM.f_instance_number(278.0)) - 1.0) < 0.00001))):
		speed = speed - 0.6
	if (((absf(v_dienow - 0.0) < 0.00001))):
		if (absf(v_hdir - 1.0) < 0.00001):
			if (hspeed < v_maxh):
				(GM.f_motion_add(self, 360.0, 0.5))
			else:
				v_hdir = 0.0
		if (absf(v_hdir - 2.0) < 0.00001):
			if (hspeed > ((v_maxh * (-1.0)))):
				(GM.f_motion_add(self, 180.0, 0.5))
			else:
				v_hdir = 0.0
		if (absf(v_vdir - 1.0) < 0.00001):
			if (vspeed < v_maxv):
				(GM.f_motion_add(self, 270.0, 0.3))
			else:
				v_vdir = 0.0
		if (absf(v_vdir - 2.0) < 0.00001):
			if (vspeed > ((v_maxv * (-1.0)))):
				(GM.f_motion_add(self, 90.0, 0.3))
			else:
				v_vdir = 0.0
		if (absf(v_hdir - 0.0) < 0.00001):
			if (hspeed > 0.0):
				hspeed = hspeed - 0.25
			if (hspeed < 0.0):
				hspeed = hspeed + 0.25
			if (absf(hspeed - 0.0) < 0.00001):
				alarm[int(0.0)] = 1.0
		if (absf(v_vdir - 0.0) < 0.00001):
			if (vspeed > 0.0):
				vspeed = vspeed - 0.25
			if (vspeed < 0.0):
				vspeed = vspeed + 0.25
			if (absf(vspeed - 0.0) < 0.00001):
				alarm[int(0.0)] = 1.0
		if ((absf(v_hdir - 0.0) < 0.00001) and (absf(v_vdir - 0.0) < 0.00001)):
			alarm[int(0.0)] = 1.0
		if ((((GM.f_distance_to_object(self, 7.0)) < 150.0) and not (((GM.f_sound_isplaying(v_Chainsawwav))) >= 0.5))):
			(self.script_dosound(v_Chainsawwav))
		if ((((GM.view_xview[0] - sprite_width) < x))):
			if ((((GM.view_xview[0] + 800.0) > x))):
				for _r480 in range(int((3.0))):
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
		if ((((GM.f_random(15.0)) < 1.0))):
			if ((hspeed > 0.0)):
				(GM.f_instance_create((x + 45.0), (y + 30.0), 344.0))
			else:
				(GM.f_instance_create((x + 10.0), (y + 30.0), 344.0))
		if ((((GM.f_random(75.0)) < 1.0))):
			(GM.f_sound_play(19.0))
			if ((hspeed > 0.0)):
				(GM.f_instance_create((x + 13.0), (y + 21.0), 258.0))
			else:
				(GM.f_instance_create((x + 23.0), (y + 21.0), 258.0))
		if ((((GM.f_random(75.0)) < 1.0))):
			(GM.f_sound_play(46.0))
			for _r481 in range(int(((10.0 + (GM.f_random(10.0)))))):
				if (((hspeed > 0.0) and (GM.vb(7.0, "x") > x))):
					(GM.f_instance_create((x + 45.0), (y + 30.0), 342.0))
				else:
					if ((GM.vb(7.0, "x") < x)):
						(GM.f_instance_create((x + 10.0), (y + 30.0), 343.0))
func ev_col_345():
	(GM.f_sound_play(30.0))
	(GM.f_instance_destroy(self))
func ev_col_250():
	if (((absf(v_dienow - 1.0) < 0.00001))):
		for _r482 in range(int((10.0))):
			(GM.f_instance_create(((x + (-8.0)) + (GM.f_random(sprite_width))), ((y + (-8.0)) + (GM.f_random(sprite_height))), 23.0))
		for _w483 in GM.with_list((250.0), self):
			if _w483._dead:
				continue
			_w483.other = self
			(GM.f_instance_create((_w483.x + 0.0), (_w483.y + 0.0), 256.0))
		for _w484 in GM.with_list((self.other), self):
			if _w484._dead:
				continue
			_w484.other = self
			(GM.f_instance_destroy(_w484))
		(GM.f_instance_destroy(self))
func ev_col_166():
	if (((absf(v_dienow - 0.0) < 0.00001))):
		speed = (speed / 3.0)
		v_mypower = v_mypower + (-0.1)
		(GM.f_sound_play(34.0))
		if (((v_mypower < 1.0))):
			if (((absf(GM.G["photoncannon"] - 0.0) < 0.00001))):
				(GM.f_instance_create((x + 0.0), (y + 0.0), 412.0))
			for _r485 in range(int((3.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
			for _r486 in range(int((15.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			for _r487 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			(GM.f_instance_create(((GM.room_width / 2.0) - 20.0), 0.0, 345.0))
			(GM.f_sound_play(36.0))
			v_dienow = 1.0
func ev_col_53():
	if (((absf(v_dienow - 0.0) < 0.00001))):
		speed = (speed / 3.0)
		v_mypower = v_mypower + (-1.0)
		(GM.f_sound_play(34.0))
		if (((v_mypower < 1.0))):
			if (((absf(GM.G["photoncannon"] - 0.0) < 0.00001))):
				(GM.f_instance_create((x + 0.0), (y + 0.0), 412.0))
			for _r488 in range(int((3.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
			for _r489 in range(int((15.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			for _r490 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			(GM.f_instance_create(((GM.room_width / 2.0) - 20.0), 0.0, 345.0))
			(GM.f_sound_play(36.0))
			v_dienow = 1.0
func ev_col_14():
	if (((absf(v_dienow - 0.0) < 0.00001))):
		speed = (speed / 3.0)
		v_mypower = v_mypower + (-3.0)
		(GM.f_sound_play(34.0))
		if (((v_mypower < 1.0))):
			if (((absf(GM.G["photoncannon"] - 0.0) < 0.00001))):
				(GM.f_instance_create((x + 0.0), (y + 0.0), 412.0))
			for _r491 in range(int((3.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
			for _r492 in range(int((15.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			for _r493 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			(GM.f_instance_create(((GM.room_width / 2.0) - 20.0), 0.0, 345.0))
			(GM.f_sound_play(36.0))
			v_dienow = 1.0
func ev_other_1():
	(self.script_outsidestayin(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_other_0():
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
func ev_draw():
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle(x, (y - 10.0), (x + sprite_width), y))
	v_brush_color = 255.0
	(GM.f_draw_rectangle(x, (y - 10.0), (x + ((sprite_width / 150.0) * v_mypower)), y))
	if (((hspeed > 0.0))):
		(GM.f_draw_sprite(243.0, (hspeed / 0.5), (x + 0.0), (y + 0.0)))
		(GM.f_draw_sprite(339.0, (-1.0), (x + 25.0), (y + 20.0)))
	else:
		(GM.f_draw_sprite(244.0, ((-hspeed) / 0.5), (x + 0.0), (y + 0.0)))
		(GM.f_draw_sprite(338.0, (-1.0), (x + (-3.0)), (y + 20.0)))
