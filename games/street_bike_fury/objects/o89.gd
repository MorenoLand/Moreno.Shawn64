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
	v_maxspeed = 25.0
	v_mypower = 10.0
func ev_stepend():
	if ((x < (GM.view_xview[0] - 20.0))):
		(GM.f_instance_destroy(self))
func ev_step():
	if (((GM.f_place_meeting(self, x, (y + 8.0), 1.0)))) >= 0.5:
		if ((hspeed > 1.0)):
			hspeed = hspeed - 0.2
		else:
			hspeed = 0.0
	image_angle = image_angle - hspeed
	if ((speed > 1.0)):
		v_temp = (GM.f_instance_create(x, y, 90.0))
		GM.vsetb(v_temp, "direction", (((image_angle + 90.0) - 20.0) + (GM.f_random(40.0))))
		GM.vsetb(v_temp, "speed", (GM.G["gspeed"] * ((1.0 + (GM.f_random(7.0))))))
		GM.vsetb(v_temp, "gravity", 0.3)
		GM.vsetb(v_temp, "hspeed", GM.vb(v_temp, "hspeed") + hspeed)
		GM.vsetb(v_temp, "vspeed", GM.vb(v_temp, "vspeed") + vspeed)
func ev_col_196():
	depth = 100.0
func ev_col_162():
	depth = 6.0
func ev_col_77():
	pass
func ev_col_76():
	if ((absf(depth - 5.0) >= 0.00001)):
		vspeed = (vspeed / 2.0)
		(GM.f_sound_play(20.0))
		for _r62 in range(int((30.0))):
			v_wee = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y + 20.0) + (GM.f_random(10.0))), 81.0))
			GM.vsetb(v_wee, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(7.0))))
			GM.vsetb(v_wee, "gravity", 0.4)
		depth = 5.0
func ev_col_8():
	v_tilt = 42.0
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
	v_tilt = 49.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_4():
	v_tilt = 30.0
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_1():
	if ((vspeed > 0.0)):
		vspeed = (vspeed / 1.5)
		v_temp = 0.0
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 1.0
	self.ev_user(2.0)
func ev_other_12():
	if (((vspeed > 5.0) and (x > GM.view_xview[0]))):
		(GM.f_sound_play(27.0))
func ev_other_11():
	direction = v_tilt
	v_temp = 0.0
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 1.0
func ev_other_10():
	direction = v_tilt
	v_temp = 0.0
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 6.0
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(73.0, 0.0, x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
