extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_dis = 0.0
var v_hdir = 0.0
var v_maxh = 0.0
var v_maxv = 0.0
var v_mypower = 0.0
var v_shots = 0.0
var v_vdir = 0.0
var v_weezing = 0.0
var v_wow = 0.0
var v_wowz = 0.0
var v_wowza = 0.0
func ev_create():
	alarm[int(0.0)] = 1.0
	v_hdir = 0.0
	v_vdir = 0.0
	v_maxh = 0.0
	v_maxv = 0.0
	v_dis = (GM.f_random(300.0))
	v_shots = 25.0
	v_mypower = 10.0
	GM.G["red"] = GM.G["red"] + 1.0
	(self.script_copzapin())
func ev_destroy():
	GM.G["red"] = GM.G["red"] - 1.0
func ev_alarm_1():
	v_shots = 25.0
func ev_alarm_0():
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
	v_weezing = (GM.f_round((GM.f_random(2.0))))
	if (GM.eq(v_weezing, 0.0)):
		(GM.f_instance_create((((x + (sprite_width / 2.0)) - 10.0) + (GM.f_random(20.0))), (y + 49.0), 726.0))
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
	if ((GM.f_distance_to_point(self, GM.vb(7.0, "x"), GM.vb(7.0, "y"))) < (250.0 + v_dis)):
		v_hdir = 0.0
	if ((((GM.vb(7.0, "y") > (y - 100.0)) and (GM.vb(7.0, "y") < (y + 100.0))) and ((GM.f_distance_to_object(self, 7.0)) < 400.0))):
		if ((v_shots > 0.0)):
			if ((GM.eq(v_weezing, 0.0) or GM.eq(v_weezing, 1.0))):
				if not ((((GM.f_sound_isplaying(204.0)))) >= 0.5):
					(GM.f_sound_play(204.0))
				v_wow = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.0), (y + 43.0), 714.0))
				if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
					GM.vsetb(v_wow, "direction", (0.0 - (vspeed * 2.0)))
				else:
					GM.vsetb(v_wow, "direction", (180.0 + (vspeed * 2.0)))
				GM.vsetb(v_wow, "speed", 20.0)
				GM.vsetb(v_wow, "visible", 0.0)
				GM.vb(v_wow, "alarm")[int(1.0)] = 1.0
				GM.vsetb(v_wow, "hspeed", GM.vb(v_wow, "hspeed") + hspeed)
				GM.vsetb(v_wow, "vspeed", GM.vb(v_wow, "vspeed") + vspeed)
				v_shots = v_shots - 1.0
		else:
			if ((absf(alarm[int(1.0)] - (-1.0)) < 0.00001)):
				alarm[int(1.0)] = 35.0
func ev_col_656():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 659.0))
	v_wowza = (GM.f_instance_create(x, y, 728.0))
	v_wowza = (GM.f_instance_create(x, y, 729.0))
	GM.vsetb(v_wowza, "hspeed", GM.vb(v_wowza, "hspeed") + hspeed)
	GM.vsetb(v_wowza, "vspeed", GM.vb(v_wowza, "vspeed") + vspeed)
	for _r414 in range(int((13.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r415 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r416 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	for _r417 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	(GM.f_sound_play(198.0))
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 2.0))
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		(GM.f_instance_create(x, y, 498.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 659.0))
		v_wowza = (GM.f_instance_create(x, y, 728.0))
		v_wowza = (GM.f_instance_create(x, y, 729.0))
		GM.vsetb(v_wowza, "hspeed", GM.vb(v_wowza, "hspeed") + hspeed)
		GM.vsetb(v_wowza, "vspeed", GM.vb(v_wowza, "vspeed") + vspeed)
		for _r418 in range(int((13.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		for _r419 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r420 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
		for _r421 in range(int((2.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
		(GM.f_instance_destroy(self))
func ev_other_15():
	(self.script_copdestroy())
func ev_draw():
	(GM.f_draw_sprite(747.0, 0.0, x, 1160.0))
	if (((vspeed >= 9.0) or (vspeed <= (-9.0)))):
		v_wowz = 9.0
	else:
		v_wowz = vspeed
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		if ((vspeed > 0.0)):
			(GM.f_draw_sprite(744.0, v_wowz, x, y))
		else:
			(GM.f_draw_sprite(748.0, (-v_wowz), x, y))
	else:
		if ((vspeed > 0.0)):
			(GM.f_draw_sprite(746.0, v_wowz, x, y))
		else:
			(GM.f_draw_sprite(749.0, (-v_wowz), x, y))
