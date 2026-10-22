extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_image_single = 0.0
var v_wee = 0.0
var v_yyy = 0.0
func ev_create():
	speed = speed + (2.0 + (GM.f_random(8.0)))
	direction = direction + (20.0 + (GM.f_random(140.0)))
	gravity_direction = 270.0
	gravity = 0.3
	image_speed = 0.33
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((y > v_yyy)):
		self.ev_user(0.0)
func ev_col_7():
	v_wee = (GM.f_floor((GM.f_random(2.999999))))
	if (GM.eq(v_wee, 0.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 5.0
	if (GM.eq(v_wee, 1.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 2.0
	if (GM.eq(v_wee, 2.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 10.0
	(GM.f_sound_play(221.0))
	(GM.f_instance_destroy(self))
func ev_other_10():
	v_image_single = 0.0
	gravity = 0.0
	hspeed = 0.0
	vspeed = 0.0
	if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
		alarm[int(0.0)] = (100.0 + (GM.f_random(10.0)))
func ev_other_0():
	(GM.f_instance_destroy(self))
