extends "res://games/jetzfusion/objects/o120.gd"
func ev_create():
	(GM.f_instance_create(x, 0.0, 114.0))
	alarm[int(0.0)] = 1.0
	v_hdir = 0.0
	v_vdir = 0.0
	v_maxh = 0.0
	v_maxv = 0.0
	v_dis = (GM.f_random(300.0))
	v_mypower = 35.0
	v_dienow = 0.0
func ev_step():
	if (((absf(v_dienow - 0.0) < 0.00001))):
		if (absf(v_hdir - 1.0) < 0.00001):
			if (hspeed < v_maxh):
				(GM.f_motion_add(self, 360.0, 0.7))
			else:
				v_hdir = 0.0
		if (absf(v_hdir - 2.0) < 0.00001):
			if (hspeed > ((v_maxh * (-1.0)))):
				(GM.f_motion_add(self, 180.0, 0.7))
			else:
				v_hdir = 0.0
		if (absf(v_vdir - 1.0) < 0.00001):
			if (vspeed < v_maxv):
				(GM.f_motion_add(self, 270.0, 0.7))
			else:
				v_vdir = 0.0
		if (absf(v_vdir - 2.0) < 0.00001):
			if (vspeed > ((v_maxv * (-1.0)))):
				(GM.f_motion_add(self, 90.0, 0.7))
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
				for _r636 in range(int((3.0))):
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
func ev_col_17():
	if (((absf(v_dienow - 1.0) < 0.00001))):
		for _w637 in GM.with_list((170.0), self):
			if _w637._dead:
				continue
			_w637.other = self
			(GM.f_instance_destroy(_w637))
		for _w638 in GM.with_list((160.0), self):
			if _w638._dead:
				continue
			_w638.other = self
			(GM.f_instance_create((_w638.x + 0.0), (_w638.y + 0.0), 246.0))
		for _w639 in GM.with_list((160.0), self):
			if _w639._dead:
				continue
			_w639.other = self
			(GM.f_instance_destroy(_w639))
		(GM.f_instance_create((x + 0.0), (y + 40.0), 165.0))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
		(GM.f_sound_play(23.0))
		for _r640 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		for _r641 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		for _r642 in range(int((3.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
		(GM.f_instance_destroy(self))
	vspeed = 0.0
