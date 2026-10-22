extends "res://games/jetzfusion/scripts.gd"
var v_hitornot = 0.0
var v_image_single = 0.0
var v_spite_height = 0.0
func ev_create():
	gravity_direction = 270.0
	gravity = 0.5
	(GM.f_sound_play(19.0))
	if ((GM.vb(7.0, "hspeed") > 0.0)):
		direction = 55.0
	else:
		direction = 125.0
	speed = (GM.vget(7.0, "v_chargeup") / 5.0)
	v_hitornot = GM.vget(7.0, "v_chargeup")
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
	GM.vset(7.0, "v_chargeup", 0.0)
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 20.0), ((y + (sprite_height / 2.0)) - 20.0), 58.0))
	alarm[int(0.0)] = 5.0
func ev_col_464():
	self.ev_user(0.0)
func ev_col_338():
	self.ev_user(0.0)
func ev_col_330():
	if (not (((absf(v_image_single - 4.0) < 0.00001)))):
		self.ev_user(0.0)
func ev_col_253():
	self.ev_user(0.0)
func ev_col_244():
	if (((v_hitornot > 50.0))):
		(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
		self.ev_user(0.0)
func ev_col_223():
	if (not (((absf(v_image_single - 4.0) < 0.00001)))):
		self.ev_user(0.0)
func ev_col_222():
	self.ev_user(0.0)
func ev_col_129():
	self.ev_user(0.0)
func ev_col_127():
	self.ev_user(0.0)
func ev_col_120():
	self.ev_user(0.0)
func ev_col_118():
	self.ev_user(0.0)
func ev_col_113():
	self.ev_user(0.0)
func ev_col_85():
	self.ev_user(0.0)
func ev_col_80():
	self.ev_user(0.0)
func ev_col_77():
	if (not (((absf(v_image_single - 4.0) < 0.00001)))):
		self.ev_user(0.0)
func ev_col_71():
	if (not (((absf(v_image_single - 10.0) < 0.00001)))):
		self.ev_user(0.0)
func ev_col_66():
	self.ev_user(0.0)
func ev_col_64():
	self.ev_user(0.0)
func ev_col_17():
	self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	(GM.f_sound_play(23.0))
	for _r51 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 26.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	if (((y > 0.0))):
		(GM.f_instance_destroy(self))
