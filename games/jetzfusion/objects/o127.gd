extends "res://games/jetzfusion/scripts.gd"
var v_dienow = 0.0
var v_dis = 0.0
var v_hdir = 0.0
var v_maxh = 0.0
var v_maxv = 0.0
var v_mypower = 0.0
var v_vdir = 0.0
func ev_create():
	(GM.f_instance_create(x, 0.0, 114.0))
	alarm[int(0.0)] = 1.0
	v_hdir = 0.0
	v_vdir = 0.0
	v_maxh = 0.0
	v_maxv = 0.0
	v_dis = (GM.f_random(300.0))
	v_mypower = 7.0
	v_dienow = 0.0
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
				(GM.f_motion_add(self, 270.0, 0.6))
			else:
				v_vdir = 0.0
		if (absf(v_vdir - 2.0) < 0.00001):
			if (vspeed > ((v_maxv * (-1.0)))):
				(GM.f_motion_add(self, 90.0, 0.6))
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
		if ((GM.f_distance_to_point(self, GM.vb(7.0, "x"), GM.vb(7.0, "y"))) < (350.0 + v_dis)):
			v_hdir = 0.0
		if ((((GM.view_xview[0] - sprite_width) < x))):
			if ((((GM.view_xview[0] + 800.0) > x))):
				for _r130 in range(int((3.0))):
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
	if ((((GM.f_random(15.0)) < 1.0))):
		GM.G["helpvar1"] = direction
		GM.G["helpvar2"] = speed
		if ((hspeed > 0.0)):
			(GM.f_instance_create((x + 45.0), (y + 30.0), 128.0))
		else:
			(GM.f_instance_create((x + 10.0), (y + 30.0), 128.0))
func ev_col_166():
	if (((absf(v_dienow - 0.0) < 0.00001))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
		v_mypower = v_mypower + (-0.2)
		(GM.f_sound_play(28.0))
		if (((v_mypower < 1.0))):
			gravity_direction = 270.0
			gravity = 0.3
			for _r131 in range(int((15.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			for _r132 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			(GM.f_sound_play(41.0))
			(GM.f_sound_play(36.0))
			v_dienow = 1.0
func ev_col_53():
	if (((absf(v_dienow - 0.0) < 0.00001))):
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
		v_mypower = v_mypower + (-1.0)
		(GM.f_sound_play(34.0))
		if (((v_mypower < 1.0))):
			gravity_direction = 270.0
			gravity = 0.3
			for _r133 in range(int((15.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			for _r134 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			(GM.f_sound_play(41.0))
			(GM.f_sound_play(36.0))
			v_dienow = 1.0
func ev_col_17():
	if (((absf(v_dienow - 1.0) < 0.00001))):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
		(GM.f_sound_play(23.0))
		for _r135 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		for _r136 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		for _r137 in range(int((3.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
		(GM.f_instance_destroy(self))
	vspeed = 0.0
func ev_col_14():
	gravity_direction = 270.0
	gravity = 0.3
	for _r138 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
	for _r139 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	(GM.f_sound_play(41.0))
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
	if (((hspeed > 0.0))):
		(GM.f_draw_sprite(181.0, (hspeed / 0.5), (x + 0.0), (y + 0.0)))
		(GM.f_draw_sprite(183.0, (-1.0), (x + 16.0), (y + 25.0)))
	else:
		(GM.f_draw_sprite(182.0, ((-hspeed) / 0.5), (x + 0.0), (y + 0.0)))
		(GM.f_draw_sprite(184.0, (-1.0), (x + 2.0), (y + 25.0)))
