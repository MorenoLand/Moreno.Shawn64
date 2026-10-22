extends "res://games/street_bike_fury/objects/o197.gd"
var v_wow = 0.0
func ev_create():
	v_set = (GM.f_floor((GM.f_random(2.0))))
	y = (GM.view_yview[0] + 200.0)
	if (GM.eq(v_set, 0.0)):
		x = (GM.view_xview[0] - 50.0)
	if (GM.eq(v_set, 1.0)):
		x = ((GM.view_xview[0] + GM.view_wview[0]) + 50.0)
	v_swing = 0.0
	v_onfire = 0.0
	v_surfaceout1 = (3.0 * GM.G["gspeed"])
	v_surfaceout2 = (5.0 * GM.G["gspeed"])
	v_die = 0.0
	v_about = 0.0
	depth = (-18.1)
	v_rot1 = 0.0
	v_rot2 = 0.0
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
	v_maxpower = 1.0
	v_mypower = v_maxpower
	v_tilt = 0.0
	alarm[int(5.0)] = 70.0
func ev_alarm_8():
	v_swing = 0.0
func ev_alarm_5():
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
			(GM.f_motion_add(self, v_tilt, (((GM.vb(0.0, "x") - x)) / 1500.0)))
			if ((hspeed > (GM.vb(0.0, "hspeed") + 5.0))):
				(GM.f_motion_add(self, (v_tilt + 180.0), 1.0))
		if ((x > GM.vb(0.0, "x"))):
			(GM.f_motion_add(self, (v_tilt + 180.0), (((x - GM.vb(0.0, "x"))) / 1500.0)))
			if ((hspeed < (GM.vb(0.0, "hspeed") - 5.0))):
				(GM.f_motion_add(self, v_tilt, 1.0))
	else:
		if ((hspeed > 0.0)):
			hspeed = hspeed - (0.1 * GM.G["gspeed"])
	if ((y > (GM.vb(0.0, "y") + 5000.0))):
		(GM.f_instance_destroy(self))
	if ((hspeed > (35.0 * GM.G["gspeed"]))):
		hspeed = (35.0 * GM.G["gspeed"])
	if ((hspeed < ((-35.0) * GM.G["gspeed"]))):
		hspeed = ((-35.0) * GM.G["gspeed"])
func ev_col_0():
	if ((absf(GM.G["smacked"] - 0.0) < 0.00001)):
		GM.G["smacked"] = 1.0
		(self.script_addtrick("Press Down to Hit Off!", 0.0, 0.0))
	v_wow = (GM.f_floor((GM.f_random(3.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		if ((((((absf(v_shotready - 1.0) < 0.00001) and ((GM.f_place_meeting(self, x, y, 0.0))) >= 0.5) and (absf(depth - (-18.0)) < 0.00001)) and (absf(v_die - 0.0) < 0.00001)) and (absf(GM.vget(self.other, "v_die") - 0.0) < 0.00001))):
			v_swing = 2.0
			v_shotready = 0.0
			alarm[int(6.0)] = 40.0
			for _r151 in range(int((15.0))):
				v_wee = (GM.f_instance_create(x, y, 72.0))
				GM.vsetb(v_wee, "direction", (GM.f_random(360.0)))
				GM.vsetb(v_wee, "speed", (GM.f_random(5.0)))
			(GM.f_sound_play(68.0))
			GM.health = GM.health - 5.0
			GM.vset(self.other, "v_damaged", (-1.0))
			GM.vb(self.other, "alarm")[int(10.0)] = 20.0
			alarm[int(8.0)] = 10.0
func ev_draw():
	v_temp3 = v_dir
	(GM.f_texture_set_interpolation(1.0))
	if ((absf(v_die - 0.0) < 0.00001)):
		(GM.f_draw_sprite_ext(168.0, 0.0, (x + (GM.f_lengthdir_x(26.0, (v_rotate + 95.0)))), (y + (GM.f_lengthdir_y(26.0, (v_rotate + 95.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(166.0, 0.0, (x + (GM.f_lengthdir_x(35.0, (v_rotate + 199.0)))), (y + (GM.f_lengthdir_y(35.0, (v_rotate + 199.0)))), 1.0, 1.0, (v_rot1 + v_rotate), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(166.0, 0.0, (x + (GM.f_lengthdir_x(50.0, (v_rotate - 15.0)))), (y + (GM.f_lengthdir_y(50.0, (v_rotate - 15.0)))), 1.0, 1.0, (v_rot1 + v_rotate), 16777215.0, 1.0))
	if ((absf(v_about - 0.0) < 0.00001)):
		(GM.f_draw_sprite_ext(174.0, 0.0, x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	else:
		(GM.f_draw_sprite_ext(174.0, (-1.0), x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	if ((absf(v_die - 0.0) < 0.00001)):
		if ((GM.vb(0.0, "x") > x)):
			v_set1 = (x + (GM.f_lengthdir_x(25.0, (v_rotate + 95.0))))
			v_set2 = (y + (GM.f_lengthdir_y(25.0, (v_rotate + 95.0))))
			v_set3 = (GM.f_point_direction(v_set1, v_set2, GM.vb(0.0, "x"), GM.vb(0.0, "y")))
			(GM.f_draw_sprite_ext(187.0, 0.0, (x + (GM.f_lengthdir_x(15.0, (v_rotate + 80.0)))), (y + (GM.f_lengthdir_y(15.0, (v_rotate + 80.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(164.0, 2.0, (x + (GM.f_lengthdir_x(40.0, (v_rotate + 78.0)))), (y + (GM.f_lengthdir_y(40.0, (v_rotate + 78.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(175.0, (0.0 + v_swing), v_set1, v_set2, 1.0, 1.0, 0.0, 16777215.0, 1.0))
		else:
			v_set1 = (x + (GM.f_lengthdir_x(34.0, (v_rotate + 105.0))))
			v_set2 = (y + (GM.f_lengthdir_y(34.0, (v_rotate + 105.0))))
			v_set3 = (GM.f_point_direction(v_set1, v_set2, GM.vb(0.0, "x"), GM.vb(0.0, "y")))
			(GM.f_draw_sprite_ext(187.0, 1.0, (x + (GM.f_lengthdir_x(15.0, (v_rotate + 80.0)))), (y + (GM.f_lengthdir_y(15.0, (v_rotate + 80.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(175.0, (1.0 + v_swing), v_set1, v_set2, 1.0, 1.0, 180.0, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(164.0, 3.0, (x + (GM.f_lengthdir_x(41.0, (v_rotate + 98.0)))), (y + (GM.f_lengthdir_y(41.0, (v_rotate + 98.0)))), 1.0, 1.0, (v_rotate + 180.0), 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
