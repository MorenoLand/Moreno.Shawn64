extends "res://games/street_bike_fury/scripts.gd"
var v_die = 0.0
var v_dir = 0.0
var v_go = 0.0
var v_maxpower = 0.0
var v_maxspeed = 0.0
var v_mypower = 0.0
var v_rate = 0.0
var v_rot1 = 0.0
var v_rot2 = 0.0
var v_rotate = 0.0
var v_set = 0.0
var v_set1 = 0.0
var v_set2 = 0.0
var v_setdir = 0.0
var v_shocks = 0.0
var v_temp3 = 0.0
var v_tilt = 0.0
var v_trickkey = 0.0
var v_wee = 0.0
var v_wheelspeed = 0.0
func ev_create():
	v_set1 = (GM.f_instance_create(((x - 210.0) + 151.0), ((y - 60.0) + 133.0), 209.0))
	v_set2 = (GM.f_instance_create(((x - 210.0) + 212.0), ((y - 60.0) + 133.0), 209.0))
	v_set = (GM.f_floor((GM.f_random(2.0))))
	v_die = 0.0
	v_rot1 = 0.0
	v_rot2 = 0.0
	v_trickkey = 0.0
	v_dir = 0.0
	hspeed = GM.vb(0.0, "hspeed")
	v_rotate = 0.0
	(GM.f_sound_loop(75.0))
	v_shocks = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = 30.0
	v_maxpower = 30.0
	v_mypower = v_maxpower
	v_tilt = 0.0
	v_setdir = 0.0
func ev_destroy():
	for _w86 in GM.with_list((209.0), self):
		if _w86._dead:
			continue
		_w86.other = self
		(GM.f_instance_destroy(_w86))
	(GM.f_sound_stop(75.0))
func ev_alarm_4():
	pass
func ev_alarm_2():
	(GM.f_sound_stop(4.0))
func ev_alarm_1():
	v_go = 1.0
func ev_stepend():
	GM.vsetb(v_set1, "x", ((x + 151.0) - 210.0))
	GM.vsetb(v_set1, "y", ((y + 133.0) - 60.0))
	GM.vsetb(v_set2, "x", ((x + 212.0) - 210.0))
	GM.vsetb(v_set2, "y", ((y + 133.0) - 60.0))
func ev_step():
	if ((absf(v_die - 0.0) < 0.00001)):
		if ((x < (GM.view_xview[0] + 400.0))):
			hspeed = hspeed + 0.5
			if (((x > (GM.view_xview[0] + 375.0)) and (hspeed > 0.0))):
				hspeed = hspeed - 1.0
		if ((x > (GM.view_xview[0] + 400.0))):
			hspeed = hspeed - 0.5
			if (((x < (GM.view_xview[0] + 425.0)) and (hspeed < 0.0))):
				hspeed = hspeed + 1.0
		if ((hspeed > 35.0)):
			hspeed = 35.0
		if ((hspeed < (-35.0))):
			hspeed = (-35.0)
		if ((absf((GM.f_instance_number(83.0)) - 0.0) < 0.00001)):
			vspeed = vspeed - 0.6
			if ((y < (GM.view_yview[0] - 100.0))):
				(GM.f_instance_destroy(self))
	if ((absf(v_die - 1.0) < 0.00001)):
		gravity = 0.4
		if ((y > (GM.view_yview[0] + 1000.0))):
			(GM.f_instance_destroy(self))
func ev_col_262():
	if ((absf(v_die - 0.0) < 0.00001)):
		(GM.f_motion_add(self, (GM.f_random(180.0)), (5.0 + (GM.f_random(5.0)))))
		self.ev_user(3.0)
func ev_col_20():
	v_mypower = v_mypower - 1.0
	for _w87 in GM.with_list((self.other), self):
		if _w87._dead:
			continue
		_w87.other = self
		(GM.f_instance_destroy(_w87))
	if ((v_mypower < 0.0)):
		self.ev_user(3.0)
func ev_col_0():
	if ((GM.vb(self.other, "vspeed") > 25.0)):
		(GM.f_instance_create(x, y, 217.0))
		(self.script_addmessage("HELI SMASH +100", 255.0, 100.0))
		GM.vsetb(self.other, "vspeed", (vspeed / 3.0))
		self.ev_user(3.0)
func ev_other_15():
	if ((vspeed > 0.0)):
		if ((vspeed > 10.0)):
			for _r88 in range(int((2.0))):
				(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		if ((vspeed > 20.0)):
			(GM.f_sound_play(9.0))
			for _r89 in range(int((5.0))):
				(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		vspeed = (vspeed / 1.5)
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 2.0
func ev_other_13():
	if ((absf(v_die - 0.0) < 0.00001)):
		(self.script_addmessage("HELICOPTER go BOOM +100", 255.0, 100.0))
		GM.G["baddies"] = GM.G["baddies"] + 100.0
		v_die = 1.0
		(GM.f_sound_play(52.0))
		(GM.f_motion_add(self, (GM.f_random(360.0)), (5.0 + (GM.f_random(3.0)))))
		alarm[int(3.0)] = 120.0
		for _w90 in GM.with_list((v_wee), self):
			if _w90._dead:
				continue
			_w90.other = self
			(GM.f_motion_add(_w90, (GM.f_random(360.0)), (10.0 + (GM.f_random(3.0)))))
		for _r91 in range(int((5.0))):
			(GM.f_instance_create(((x - 100.0) + (GM.f_random(200.0))), (y + (GM.f_random(100.0))), 224.0))
		for _r92 in range(int((50.0))):
			v_set = (GM.f_instance_create(((x - 80.0) + (GM.f_random(160.0))), ((y - 50.0) + (GM.f_random(100.0))), 249.0))
			GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
			GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
func ev_other_12():
	if (((vspeed > 5.0) and not (((GM.f_sound_isplaying(6.0))) >= 0.5))):
		(GM.f_sound_play(6.0))
func ev_other_11():
	if ((vspeed > 1.0)):
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 3.0
		direction = v_tilt
func ev_other_10():
	if ((absf(v_die - 0.0) < 0.00001)):
		if (((((v_tilt > 0.0) and (direction > 90.0)) and (v_tilt < 90.0)) and (direction < (360.0 - 25.0)))):
			for _r93 in range(int((5.0))):
				(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
			speed = (speed / 1.5)
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 3.0
	direction = v_tilt
func ev_draw():
	v_temp3 = v_dir
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(172.0, (-1.0), x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
