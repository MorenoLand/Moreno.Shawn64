extends "res://games/jetzfusion/objects/o394.gd"
func ev_create():
	(GM.f_instance_create(x, 0.0, 114.0))
	alarm[int(0.0)] = 1.0
	v_hdir = 0.0
	v_vdir = 0.0
	v_maxh = 0.0
	v_maxv = 0.0
	v_dis = (GM.f_random(300.0))
	v_mypower = 30.0
	v_dienow = 0.0
func ev_alarm_0():
	if ((absf(v_dienow - 0.0) < 0.00001)):
		alarm[int(0.0)] = ((GM.room_speed * 3.0) + (GM.f_random(GM.room_speed)))
		v_maxh = ((((GM.f_distance_to_point(self, (GM.vb(7.0, "x") - (((GM.f_random(20.0)) + 10.0))), y)) / 30.0)) + GM.vb(7.0, "hspeed"))
		if (v_maxh > 10.0):
			v_maxh = 15.0
		if (v_maxh < 2.0):
			v_maxh = 2.0
		v_maxv = ((((GM.f_distance_to_point(self, x, (GM.vb(7.0, "y") - (((GM.f_random(20.0)) + 10.0))))) / 30.0)) + GM.vb(7.0, "vspeed"))
		if (v_maxv > 10.0):
			v_maxv = 15.0
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
				(GM.f_motion_add(self, 270.0, 0.8))
			else:
				v_vdir = 0.0
		if (absf(v_vdir - 2.0) < 0.00001):
			if (vspeed > ((v_maxv * (-1.0)))):
				(GM.f_motion_add(self, 90.0, 0.8))
			else:
				v_vdir = 0.0
		if (absf(v_hdir - 0.0) < 0.00001):
			if (hspeed > 0.0):
				hspeed = hspeed - 0.2
			if (hspeed < 0.0):
				hspeed = hspeed + 0.25
			if (absf(hspeed - 0.0) < 0.00001):
				alarm[int(0.0)] = 1.0
		if (absf(v_vdir - 0.0) < 0.00001):
			if (vspeed > 0.0):
				vspeed = vspeed - 0.2
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
				for _r651 in range(int((3.0))):
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
	if ((((GM.f_distance_to_object(self, 7.0)) < 50.0))):
		if ((((GM.f_random(2.0)) < 1.0))):
			if (((absf((GM.f_instance_number(395.0)) - 0.0) < 0.00001))):
				(GM.f_sound_play(67.0))
				(GM.f_instance_create(0.0, 0.0, 395.0))
func ev_col_384():
	if (((absf(v_dienow - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(395.0)) - 0.0) < 0.00001))):
			v_mypower = v_mypower - 0.1
			for _r652 in range(int((2.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			(GM.f_sound_play(68.0))
			(GM.f_motion_add(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
		else:
			(GM.f_sound_play(68.0))
			(GM.f_instance_create(0.0, 0.0, 396.0))
			(GM.f_motion_add(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
		if (((v_mypower < 1.0))):
			gravity_direction = 270.0
			gravity = 0.3
			for _r653 in range(int((15.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
			for _r654 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
			(GM.f_sound_play(41.0))
			(GM.f_sound_play(36.0))
			v_dienow = 1.0
func ev_col_17():
	if (((absf(v_dienow - 1.0) < 0.00001))):
		(GM.f_instance_create(2080.0, 422.0, 454.0))
		for _w655 in GM.with_list((397.0), self):
			if _w655._dead:
				continue
			_w655.other = self
			(GM.f_instance_destroy(_w655))
		GM.G["money"] = GM.G["money"] + 200.0
		(GM.f_sound_play(48.0))
		for _w656 in GM.with_list((170.0), self):
			if _w656._dead:
				continue
			_w656.other = self
			(GM.f_instance_destroy(_w656))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
		(GM.f_sound_play(23.0))
		for _r657 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		for _r658 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		for _r659 in range(int((3.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
		(GM.f_instance_destroy(self))
	vspeed = 0.0
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
	(GM.f_draw_rectangle(x, (y - 10.0), (x + ((sprite_width / 30.0) * v_mypower)), y))
	if (((hspeed > 0.0))):
		(GM.f_draw_sprite(173.0, (hspeed / 0.5), (x + 0.0), (y + 0.0)))
		if (((absf((GM.f_instance_number(395.0)) - 0.0) < 0.00001))):
			(GM.f_draw_sprite(332.0, 0.0, (x + 7.0), (y + (-1.0))))
	else:
		(GM.f_draw_sprite(174.0, ((-hspeed) / 0.5), (x + 0.0), (y + 0.0)))
		if (((absf((GM.f_instance_number(395.0)) - 0.0) < 0.00001))):
			(GM.f_draw_sprite(331.0, 0.0, (x + (-7.0)), (y + (-1.0))))
