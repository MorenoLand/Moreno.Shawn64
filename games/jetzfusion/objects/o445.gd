extends "res://games/jetzfusion/objects/o53.gd"
func ev_create():
	(GM.f_sound_play(21.0))
	if ((GM.vb(407.0, "hspeed") > 0.0)):
		direction = 0.0
	else:
		direction = 180.0
	speed = 15.0
	(GM.f_motion_add(self, GM.vb(407.0, "direction"), GM.vb(407.0, "speed")))
	alarm[int(0.0)] = 25.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_448():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_364():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_362():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_356():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
		self.ev_user(0.0)
func ev_col_338():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_330():
	if (not (((absf(v_image_single - 4.0) < 0.00001)))):
		(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
		self.ev_user(0.0)
func ev_col_284():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_253():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_224():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_223():
	if (not (((absf(v_image_single - 4.0) < 0.00001)))):
		(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
		self.ev_user(0.0)
func ev_col_222():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_189():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_129():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_127():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_120():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_118():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_113():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_85():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_80():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_78():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
		self.ev_user(0.0)
func ev_col_77():
	if (not (((absf(v_image_single - 4.0) < 0.00001)))):
		(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
		self.ev_user(0.0)
func ev_col_71():
	if (not (((absf(v_image_single - 10.0) < 0.00001)))):
		(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
		self.ev_user(0.0)
func ev_col_70():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_66():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_col_64():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	self.ev_user(0.0)
func ev_other_10():
	for _r677 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	(GM.f_instance_destroy(self))
