extends "res://games/street_bike_fury/scripts.gd"
var v_about = 0.0
var v_die = 0.0
var v_dir = 0.0
var v_go = 0.0
var v_maxpower = 0.0
var v_maxspeed = 0.0
var v_mypower = 0.0
var v_onfire = 0.0
var v_rate = 0.0
var v_rot1 = 0.0
var v_rot2 = 0.0
var v_rotate = 0.0
var v_rounds = 0.0
var v_roundss = 0.0
var v_set = 0.0
var v_set1 = 0.0
var v_set2 = 0.0
var v_set3 = 0.0
var v_setfire = 0.0
var v_shotready = 0.0
var v_surfaceout1 = 0.0
var v_surfaceout2 = 0.0
var v_swing = 0.0
var v_temp1 = 0.0
var v_temp3 = 0.0
var v_tilt = 0.0
var v_wee = 0.0
var v_wheelspeed = 0.0
var v_xxx = 0.0
var v_xxx2 = 0.0
var v_yyy = 0.0
var v_yyy2 = 0.0
func ev_create():
	v_set = (GM.f_floor((GM.f_random(2.0))))
	y = (GM.view_yview[0] + 200.0)
	if (GM.eq(v_set, 0.0)):
		x = (GM.view_xview[0] - 50.0)
	if (GM.eq(v_set, 1.0)):
		x = ((GM.view_xview[0] + GM.view_wview[0]) + 50.0)
	alarm[int(5.0)] = 120.0
	v_onfire = 0.0
	v_surfaceout1 = (3.0 * GM.G["gspeed"])
	v_surfaceout2 = (5.0 * GM.G["gspeed"])
	v_die = 0.0
	v_about = 0.0
	v_rot1 = 0.0
	v_rot2 = 0.0
	image_speed = 0.5
	v_dir = 0.0
	v_shotready = 1.0
	hspeed = GM.vb(0.0, "hspeed")
	gravity = (0.4 * GM.G["gspeed"])
	gravity_direction = 270.0
	v_rotate = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = 30.0
	v_maxpower = 3.0
	v_mypower = v_maxpower
	v_tilt = 0.0
func ev_alarm_7():
	if ((absf(v_die - 0.0) < 0.00001)):
		(GM.f_sound_play(55.0))
		if (((v_dir > 270.0) or (v_dir < 90.0))):
			v_xxx = (x + (GM.f_lengthdir_x(25.0, (v_rotate + 95.0))))
			v_yyy = (y + (GM.f_lengthdir_y(25.0, (v_rotate + 95.0))))
		if (((v_dir >= 90.0) and (v_dir <= 270.0))):
			v_xxx = (x + (GM.f_lengthdir_x(34.0, (v_rotate + 105.0))))
			v_yyy = (y + (GM.f_lengthdir_y(34.0, (v_rotate + 105.0))))
		for _r82 in range(int((8.0))):
			v_set = (GM.f_instance_create(v_xxx, v_yyy, 206.0))
			GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
			GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
		v_shotready = 0.0
		v_about = 0.0
		alarm[int(6.0)] = 59.0
func ev_alarm_6():
	v_shotready = 1.0
	v_swing = 0.0
func ev_alarm_5():
	v_rounds = (GM.f_floor((GM.f_random(1.0))))
	if ((((((((((absf(v_shotready - 1.0) < 0.00001) and (absf(v_rounds - 0.0) < 0.00001)) and ((GM.f_distance_to_object(self, 0.0)) > 40.0)) and (absf(depth - (-18.0)) < 0.00001)) and (absf(v_die - 0.0) < 0.00001)) and (x > GM.view_xview[0])) and (x < (GM.view_xview[0] + 800.0))) and (y > GM.view_yview[0])) and (y < (GM.view_yview[0] + 600.0)))):
		v_about = 1.0
		alarm[int(7.0)] = 30.0
	v_roundss = (GM.f_floor((GM.f_random(4.0))))
	if ((absf(v_roundss - 0.0) < 0.00001)):
		v_roundss = (GM.f_floor((GM.f_random(6.0))))
		if ((absf(v_roundss - 0.0) < 0.00001)):
			(GM.f_sound_play(59.0))
		if ((absf(v_roundss - 1.0) < 0.00001)):
			(GM.f_sound_play(61.0))
		if ((absf(v_roundss - 2.0) < 0.00001)):
			(GM.f_sound_play(62.0))
		if ((absf(v_roundss - 3.0) < 0.00001)):
			(GM.f_sound_play(63.0))
		if ((absf(v_roundss - 4.0) < 0.00001)):
			(GM.f_sound_play(64.0))
		if ((absf(v_roundss - 5.0) < 0.00001)):
			(GM.f_sound_play(65.0))
	alarm[int(5.0)] = 70.0
func ev_alarm_4():
	pass
func ev_alarm_3():
	(GM.f_instance_destroy(self))
func ev_alarm_2():
	(GM.f_sound_stop(4.0))
func ev_alarm_1():
	v_go = 1.0
func ev_stepend():
	image_angle = v_rotate
func ev_step():
	v_dir = (GM.f_point_direction(x, y, GM.vb(0.0, "x"), GM.vb(0.0, "y")))
	if ((absf(v_tilt - 0.0) < 0.00001)):
		if ((v_rotate < 90.0)):
			if (((v_rotate - v_surfaceout1) > 0.0)):
				v_rotate = v_rotate - v_surfaceout1
			else:
				v_rotate = 0.0
		if ((v_rotate > 270.0)):
			if (((v_rotate + v_surfaceout1) < 360.0)):
				v_rotate = v_rotate + v_surfaceout1
			else:
				v_rotate = 0.0
	if (((v_tilt > 6.0) and (v_tilt < 90.0))):
		if (((v_rotate < 90.0) and (v_rotate > v_tilt))):
			if (((v_rotate - v_surfaceout2) > (0.0 + v_tilt))):
				v_rotate = v_rotate - v_surfaceout2
			else:
				v_rotate = v_tilt
		if (((v_rotate > 270.0) or (v_rotate < v_tilt))):
			if ((((v_rotate + v_surfaceout2) < v_tilt) or (v_rotate > 270.0))):
				v_rotate = v_rotate + v_surfaceout2
			else:
				v_rotate = v_tilt
	if (((v_tilt > 270.0) and (v_tilt < 355.0))):
		if (((v_rotate < 90.0) or (v_rotate > v_tilt))):
			if ((((v_rotate - v_surfaceout1) < 90.0) or ((v_rotate - v_surfaceout1) > v_tilt))):
				v_rotate = v_rotate - v_surfaceout1
			else:
				v_rotate = v_tilt
		if (((v_rotate > 270.0) and (v_rotate < v_tilt))):
			if (((v_rotate + v_surfaceout1) < v_tilt)):
				v_rotate = v_rotate + v_surfaceout1
			else:
				v_rotate = v_tilt
	v_rotate = v_rotate + v_rate
	if ((v_rotate > 360.0)):
		v_rotate = 0.0
	if ((v_rotate < 0.0)):
		v_rotate = 360.0
	v_rot1 = v_rot1 - hspeed
	if ((absf(v_die - 0.0) < 0.00001)):
		if ((x < GM.vb(0.0, "x"))):
			(GM.f_motion_add(self, v_tilt, (((GM.vb(0.0, "x") - x)) / 1400.0)))
			if ((x > (GM.vb(0.0, "x") - 300.0))):
				if ((hspeed > GM.vb(0.0, "hspeed"))):
					(GM.f_motion_add(self, (v_tilt + 180.0), 0.2))
				(GM.f_motion_add(self, (v_tilt + 180.0), 0.1))
		if ((x > GM.vb(0.0, "x"))):
			(GM.f_motion_add(self, (v_tilt + 180.0), (((x - GM.vb(0.0, "x"))) / 1400.0)))
			if ((x < (GM.vb(0.0, "x") + 300.0))):
				if ((hspeed < GM.vb(0.0, "hspeed"))):
					(GM.f_motion_add(self, v_tilt, 0.5))
				(GM.f_motion_add(self, v_tilt, 0.2))
	else:
		if ((hspeed > 0.0)):
			hspeed = hspeed - (0.1 * GM.G["gspeed"])
	if ((y > (GM.vb(0.0, "y") + 5000.0))):
		(GM.f_instance_destroy(self))
	if ((hspeed > (35.0 * GM.G["gspeed"]))):
		hspeed = (35.0 * GM.G["gspeed"])
	if ((hspeed < ((-35.0) * GM.G["gspeed"]))):
		hspeed = ((-35.0) * GM.G["gspeed"])
func ev_col_262():
	if ((absf(v_die - 0.0) < 0.00001)):
		(GM.f_motion_add(self, (GM.f_random(180.0)), (10.0 + (GM.f_random(10.0)))))
		self.ev_user(3.0)
func ev_col_240():
	if ((absf(v_onfire - 0.0) < 0.00001)):
		v_setfire = (GM.f_instance_create(x, y, 245.0))
		GM.vset(v_setfire, "v_parrent", id)
		v_onfire = 1.0
func ev_col_201():
	v_tilt = 66.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_197():
	hspeed = hspeed + ((-0.5) + (GM.f_random(1.0)))
func ev_col_196():
	depth = 100.0
func ev_col_193():
	v_tilt = 0.0
	self.ev_user(5.0)
	self.ev_user(2.0)
	self.ev_user(9.0)
func ev_col_191():
	if ((absf((1.0 if not ((depth) >= 0.5) else 0.0) - (-18.0)) < 0.00001)):
		depth = (-18.0)
func ev_col_162():
	depth = 6.0
func ev_col_161():
	v_tilt = 0.0
	self.ev_user(5.0)
	self.ev_user(2.0)
	self.ev_user(9.0)
func ev_col_77():
	pass
func ev_col_76():
	if ((absf(v_die - 0.0) < 0.00001)):
		self.ev_user(3.0)
	if ((absf(depth - 5.0) >= 0.00001)):
		vspeed = (vspeed / 2.0)
		(GM.f_sound_play(20.0))
		for _r83 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y + 20.0) + (GM.f_random(10.0))), 81.0))
			GM.vsetb(v_wee, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(7.0))))
			GM.vsetb(v_wee, "gravity", 0.4)
		depth = 5.0
func ev_col_41():
	if ((vspeed > 0.0)):
		depth = 100.0
func ev_col_35():
	if (((y < (GM.vb(self.other, "y") + 60.0)) and (vspeed > (-1.0)))):
		v_tilt = 0.0
		self.ev_user(5.0)
		self.ev_user(2.0)
	else:
		v_tilt = 666.0
func ev_col_29():
	v_tilt = (360.0 - 45.0)
	self.ev_user(1.0)
	self.ev_user(2.0)
func ev_col_28():
	v_tilt = (360.0 - 38.0)
	self.ev_user(1.0)
	self.ev_user(2.0)
func ev_col_27():
	v_tilt = (360.0 - 15.0)
	self.ev_user(1.0)
	self.ev_user(2.0)
func ev_col_20():
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		self.ev_user(3.0)
func ev_col_8():
	v_tilt = 39.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_7():
	v_tilt = 15.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_6():
	v_tilt = 333.0
	self.ev_user(1.0)
	self.ev_user(2.0)
func ev_col_5():
	v_tilt = 46.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_4():
	v_tilt = 27.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_1():
	v_tilt = 0.0
	depth = (-18.0)
	self.ev_user(5.0)
	self.ev_user(2.0)
	self.ev_user(9.0)
func ev_col_0():
	hspeed = hspeed + 0.2
func ev_other_15():
	if ((vspeed > 0.0)):
		if ((vspeed > 10.0)):
			(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		if ((vspeed > 20.0)):
			(GM.f_sound_play(9.0))
			(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		vspeed = (vspeed / 1.5)
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 2.0
func ev_other_13():
	if ((absf(v_die - 0.0) < 0.00001)):
		v_temp1 = (GM.f_floor((GM.f_random(2.999999))))
		if ((absf(v_temp1 - 0.0) < 0.00001)):
			(self.script_addmessage("Baddy Boom +100", 255.0, 100.0))
		if ((absf(v_temp1 - 1.0) < 0.00001)):
			(self.script_addmessage("Gang go Bang! +100", 255.0, 100.0))
		if ((absf(v_temp1 - 2.0) < 0.00001)):
			(self.script_addmessage("DEAD GUY! +100", 255.0, 100.0))
		GM.G["baddies"] = GM.G["baddies"] + 100.0
		v_die = 1.0
		(GM.f_motion_add(self, (GM.f_random(360.0)), (5.0 + (GM.f_random(3.0)))))
		alarm[int(3.0)] = 120.0
		v_wee = (GM.f_instance_create(x, y, 204.0))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + hspeed)
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
		GM.vsetb(v_wee, "depth", depth)
		for _w84 in GM.with_list((v_wee), self):
			if _w84._dead:
				continue
			_w84.other = self
			(GM.f_motion_add(_w84, (GM.f_random(360.0)), (10.0 + (GM.f_random(3.0)))))
		(GM.f_instance_create(x, y, 224.0))
		v_xxx = (x + (GM.f_lengthdir_x(35.0, (v_rotate + 199.0))))
		v_yyy = (y + (GM.f_lengthdir_y(35.0, (v_rotate + 199.0))))
		v_set1 = (GM.f_instance_create(v_xxx, v_yyy, 247.0))
		v_xxx2 = (x + (GM.f_lengthdir_x(50.0, (v_rotate - 15.0))))
		v_yyy2 = (y + (GM.f_lengthdir_y(50.0, (v_rotate - 15.0))))
		v_set2 = (GM.f_instance_create(v_xxx2, v_yyy2, 247.0))
		GM.vsetb(v_set1, "hspeed", GM.vb(v_set1, "hspeed") + hspeed)
		GM.vsetb(v_set1, "vspeed", GM.vb(v_set1, "vspeed") + vspeed)
		GM.vsetb(v_set2, "vspeed", GM.vb(v_set2, "vspeed") + vspeed)
		GM.vsetb(v_set2, "hspeed", GM.vb(v_set2, "hspeed") + hspeed)
		(GM.f_instance_create(x, y, 140.0))
		for _r85 in range(int((20.0))):
			v_set = (GM.f_instance_create(((x - 30.0) + (GM.f_random(60.0))), ((y - 20.0) + (GM.f_random(40.0))), 249.0))
			GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
			GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
func ev_other_12():
	if (((vspeed > 5.0) and not (((GM.f_sound_isplaying(6.0))) >= 0.5))):
		(GM.f_sound_play(6.0))
func ev_other_11():
	if ((vspeed > 1.0)):
		direction = v_tilt
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 3.0
func ev_other_10():
	if ((absf(v_die - 0.0) < 0.00001)):
		if (((((v_tilt > 0.0) and (direction > 90.0)) and (v_tilt < 90.0)) and (direction < (360.0 - 25.0)))):
			speed = (speed / 1.5)
	direction = v_tilt
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 6.0
func ev_draw():
	v_temp3 = v_dir
	(GM.f_texture_set_interpolation(1.0))
	if ((absf(v_die - 0.0) < 0.00001)):
		(GM.f_draw_sprite_ext(168.0, 0.0, (x + (GM.f_lengthdir_x(26.0, (v_rotate + 95.0)))), (y + (GM.f_lengthdir_y(26.0, (v_rotate + 95.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(166.0, 0.0, (x + (GM.f_lengthdir_x(35.0, (v_rotate + 199.0)))), (y + (GM.f_lengthdir_y(35.0, (v_rotate + 199.0)))), 1.0, 1.0, (v_rot1 + v_rotate), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(166.0, 0.0, (x + (GM.f_lengthdir_x(50.0, (v_rotate - 15.0)))), (y + (GM.f_lengthdir_y(50.0, (v_rotate - 15.0)))), 1.0, 1.0, (v_rot1 + v_rotate), 16777215.0, 1.0))
	if ((absf(v_about - 0.0) < 0.00001)):
		(GM.f_draw_sprite_ext(165.0, 0.0, x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	else:
		(GM.f_draw_sprite_ext(165.0, (-1.0), x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	if ((absf(v_die - 0.0) < 0.00001)):
		if ((GM.vb(0.0, "x") > x)):
			v_set1 = (x + (GM.f_lengthdir_x(25.0, (v_rotate + 95.0))))
			v_set2 = (y + (GM.f_lengthdir_y(25.0, (v_rotate + 95.0))))
			v_set3 = (GM.f_point_direction(v_set1, v_set2, GM.vb(0.0, "x"), GM.vb(0.0, "y")))
			(GM.f_draw_sprite_ext(163.0, 0.0, (x + (GM.f_lengthdir_x(15.0, (v_rotate + 80.0)))), (y + (GM.f_lengthdir_y(15.0, (v_rotate + 80.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(164.0, 0.0, (x + (GM.f_lengthdir_x(40.0, (v_rotate + 78.0)))), (y + (GM.f_lengthdir_y(40.0, (v_rotate + 78.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(169.0, 0.0, v_set1, v_set2, 1.0, 1.0, v_set3, 16777215.0, 1.0))
		else:
			v_set1 = (x + (GM.f_lengthdir_x(34.0, (v_rotate + 105.0))))
			v_set2 = (y + (GM.f_lengthdir_y(34.0, (v_rotate + 105.0))))
			v_set3 = (GM.f_point_direction(v_set1, v_set2, GM.vb(0.0, "x"), GM.vb(0.0, "y")))
			(GM.f_draw_sprite_ext(163.0, 1.0, (x + (GM.f_lengthdir_x(15.0, (v_rotate + 80.0)))), (y + (GM.f_lengthdir_y(15.0, (v_rotate + 80.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(169.0, 1.0, v_set1, v_set2, 1.0, 1.0, v_set3, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(164.0, 1.0, (x + (GM.f_lengthdir_x(41.0, (v_rotate + 98.0)))), (y + (GM.f_lengthdir_y(41.0, (v_rotate + 98.0)))), 1.0, 1.0, (v_rotate + 180.0), 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
