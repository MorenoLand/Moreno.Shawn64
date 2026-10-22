extends "res://games/street_bike_fury/scripts.gd"
var v_die = 0.0
var v_dir = 0.0
var v_go = 0.0
var v_maxspeed = 0.0
var v_mypower = 0.0
var v_rate = 0.0
var v_rot1 = 0.0
var v_rot2 = 0.0
var v_rotate = 0.0
var v_shocks = 0.0
var v_temp = 0.0
var v_tilt = 0.0
var v_wee = 0.0
var v_wheelspeed = 0.0
func ev_create():
	v_die = 0.0
	(GM.f_instance_create((x + 500.0), y, 138.0))
	v_rot1 = 0.0
	v_rot2 = 0.0
	v_dir = 0.0
	gravity = (0.4 * GM.G["gspeed"])
	gravity_direction = 270.0
	v_rotate = 0.0
	v_shocks = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = (25.0 * GM.G["gspeed"])
	v_mypower = 10.0
	(GM.f_sound_play(7.0))
	(GM.f_sound_play(8.0))
	(GM.f_instance_create(x, y, 218.0))
func ev_step():
	GM.view_xview[0] = (x - (GM.view_wview[0] / 2.0))
	GM.view_yview[0] = ((y - (GM.view_hview[0] / 2.0)) - 50.0)
	GM.background_hspeed[int(2.0)] = (hspeed / 1.08)
	GM.background_y[int(2.0)] = ((GM.view_yview[0] + GM.view_hview[0]) - 410.0)
	GM.background_hspeed[int(0.0)] = (hspeed / 1.01)
	GM.background_y[int(0.0)] = GM.view_yview[0]
	if ((hspeed > 1.0)):
		hspeed = hspeed - (0.1 * GM.G["gspeed"])
	else:
		hspeed = 0.0
	image_angle = image_angle - (hspeed / 2.0)
	if ((speed > (30.0 * GM.G["gspeed"]))):
		speed = (30.0 * GM.G["gspeed"])
	(self.script_createroom())
func ev_col_193():
	if ((vspeed > 0.0)):
		vspeed = (vspeed / 1.5)
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 1.0
func ev_col_191():
	if ((absf((1.0 if not ((depth) >= 0.5) else 0.0) - (-18.0)) < 0.00001)):
		depth = (-18.0)
func ev_col_162():
	depth = 6.0
func ev_col_161():
	if ((vspeed > 0.0)):
		vspeed = (vspeed / 1.5)
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 1.0
func ev_col_77():
	if ((vspeed > 0.0)):
		hspeed = 0.0
		vspeed = (vspeed / 1.5)
		v_temp = 0.0
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 1.0
func ev_col_76():
	if ((absf(depth - 5.0) >= 0.00001)):
		hspeed = 0.0
		(GM.f_sound_play(20.0))
		for _r46 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y + 20.0) + (GM.f_random(10.0))), 81.0))
			GM.vsetb(v_wee, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(7.0))))
			GM.vsetb(v_wee, "gravity", 0.4)
		depth = 5.0
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
	if ((vspeed > 5.0)):
		(GM.f_instance_create(x, y, 140.0))
		(GM.f_sound_play(40.0))
		(GM.f_sound_play(10.0))
	depth = (-18.0)
	if ((vspeed > 0.0)):
		vspeed = (vspeed / 1.5)
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 1.0
func ev_other_11():
	if ((vspeed > 15.0)):
		(GM.f_instance_create(x, y, 140.0))
		(GM.f_sound_play(40.0))
		(GM.f_sound_play(10.0))
	direction = v_tilt
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 1.0
func ev_other_10():
	if ((vspeed > 5.0)):
		(GM.f_instance_create(x, y, 140.0))
		(GM.f_sound_play(40.0))
		(GM.f_sound_play(10.0))
	direction = v_tilt
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 1.0
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(30.0, 0.0, x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
