extends "res://games/street_bike_fury/scripts.gd"
var v_die = 0.0
var v_dir = 0.0
var v_disa = 0.0
var v_go = 0.0
var v_maxspeed = 0.0
var v_mypower = 0.0
var v_rate = 0.0
var v_rot1 = 0.0
var v_rot2 = 0.0
var v_rotate = 0.0
var v_seti = 0.0
var v_shocks = 0.0
var v_temp = 0.0
var v_tilt = 0.0
var v_wheelspeed = 0.0
func ev_create():
	v_die = 0.0
	v_rot1 = 0.0
	v_rot2 = 0.0
	v_dir = 0.0
	v_rotate = 0.0
	v_shocks = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = (25.0 * GM.G["gspeed"])
	v_mypower = 10.0
	v_disa = 0.0
	v_rate = (2.5 * GM.G["gspeed"])
func ev_stepend():
	if (((130.0 - v_disa) > 90.0)):
		image_angle = ((v_seti + 130.0) - v_disa)
	else:
		image_angle = (v_seti + 90.0)
	v_disa = v_disa + v_rate
	x = (GM.vb(0.0, "x") + (GM.f_lengthdir_x(v_disa, (v_seti - 190.0))))
	y = (GM.vb(0.0, "y") + (GM.f_lengthdir_y(v_disa, (v_seti - 190.0))))
	v_rate = v_rate - (0.077 * GM.G["gspeed"])
	if ((v_rate < ((-2.3) * GM.G["gspeed"]))):
		if ((GM.vget(0.0, "v_flips") < (-270.0))):
			(self.script_addmessage("Super Man Front Flip!!! +100", 65280.0, 5.0))
		else:
			(self.script_addmessage("Super Man!!! +100", 65280.0, 5.0))
		(self.script_addtrick("Superman Front Flip, +5HP", 15.0, 5.0))
		GM.vset(0.0, "v_flips", 0.0)
		GM.vset(0.0, "v_tricky", 0.0)
		GM.G["stunts"] = GM.G["stunts"] + 100.0
		(GM.f_sound_play(30.0))
		(GM.f_sound_play(31.0))
		(GM.f_instance_destroy(self))
func ev_col_8():
	v_tilt = 38.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_7():
	v_tilt = 15.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_6():
	if ((vspeed > 3.0)):
		v_tilt = 333.0
		self.ev_user(1.0)
	self.ev_user(2.0)
func ev_col_5():
	v_tilt = 45.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_4():
	v_tilt = 27.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_1():
	if ((vspeed > 0.0)):
		if ((vspeed > 6.0)):
			v_shocks = 12.0
			alarm[int(0.0)] = 1.0
		vspeed = (vspeed / 1.5)
		v_temp = 0.0
		if ((((GM.f_keyboard_check(39.0))) >= 0.5 or ((GM.f_keyboard_check(37.0))) >= 0.5)):
			v_temp = 1.0
		if ((v_rotate < 90.0)):
			if (((v_rotate - 5.0) > 0.0)):
				v_rotate = v_rotate - 5.0
			else:
				if (GM.eq(v_temp, 0.0)):
					v_rotate = 0.0
		if ((v_rotate > 270.0)):
			if (((v_rotate + 5.0) < 360.0)):
				v_rotate = v_rotate + 5.0
			else:
				if (GM.eq(v_temp, 0.0)):
					v_rotate = 0.0
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 1.0
	self.ev_user(2.0)
func ev_other_11():
	direction = v_tilt
	if ((vspeed > 6.0)):
		v_shocks = 8.0
		alarm[int(0.0)] = 1.0
	v_temp = 0.0
	if ((((GM.f_keyboard_check(39.0))) >= 0.5 or ((GM.f_keyboard_check(37.0))) >= 0.5)):
		v_temp = 1.0
	if (((v_rotate < 90.0) or (v_rotate > v_tilt))):
		if ((((v_rotate - 5.0) < 90.0) or ((v_rotate - 5.0) > v_tilt))):
			v_rotate = v_rotate - 5.0
		else:
			if (GM.eq(v_temp, 0.0)):
				v_rotate = v_tilt
	if (((v_rotate > 270.0) and (v_rotate < v_tilt))):
		if (((v_rotate + 5.0) < v_tilt)):
			v_rotate = v_rotate + 5.0
		else:
			if (GM.eq(v_temp, 0.0)):
				v_rotate = v_tilt
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 1.0
func ev_other_10():
	direction = v_tilt
	if ((vspeed > 6.0)):
		v_shocks = 8.0
		alarm[int(0.0)] = 1.0
	v_temp = 0.0
	if ((((GM.f_keyboard_check(39.0))) >= 0.5 or ((GM.f_keyboard_check(37.0))) >= 0.5)):
		v_temp = 1.0
	if (((v_rotate < 90.0) and (v_rotate > v_tilt))):
		if (((v_rotate - 5.0) > (0.0 + v_tilt))):
			v_rotate = v_rotate - 5.0
		else:
			if (GM.eq(v_temp, 0.0)):
				v_rotate = v_tilt
	if (((v_rotate > 270.0) or (v_rotate < v_tilt))):
		if ((((v_rotate + 5.0) < v_tilt) or (v_rotate > 270.0))):
			v_rotate = v_rotate + 5.0
		else:
			if (GM.eq(v_temp, 0.0)):
				v_rotate = v_tilt
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 1.0
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(77.0, (-1.0), x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
