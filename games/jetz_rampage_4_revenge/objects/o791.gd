extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_frictin = 0.0
var v_image_single = 0.0
func ev_create():
	v_frictin = 0.1
	v_image_single = 2.0
	(GM.f_sound_pan(222.0, 0.5))
	(GM.f_sound_volume(222.0, 1.0))
	(GM.f_sound_loop(222.0))
func ev_destroy():
	(GM.f_sound_stop(222.0))
func ev_stepend():
	if (((GM.f_keyboard_check(39.0)))) >= 0.5:
		if ((hspeed > 0.0)):
			for _r460 in range(int((10.0))):
				(GM.f_instance_create((x + 4.0), (y + 41.0), 811.0))
		(GM.f_motion_add(self, 0.0, 0.8))
	if (((GM.f_keyboard_check(37.0)))) >= 0.5:
		if ((hspeed < 0.0)):
			for _r461 in range(int((10.0))):
				(GM.f_instance_create((x + 151.0), (y + 41.0), 811.0))
		(GM.f_motion_add(self, 180.0, 0.8))
	if (((GM.f_keyboard_check(38.0)))) >= 0.5:
		(GM.f_motion_add(self, 90.0, 0.4))
	if (((GM.f_keyboard_check(40.0)))) >= 0.5:
		(GM.f_motion_add(self, 270.0, 0.4))
	if ((hspeed <= 0.0)):
		v_image_single = 2.0
	if ((hspeed > 0.0)):
		v_image_single = 1.0
	if ((speed > 20.0)):
		speed = 20.0
	GM.vsetb(7.0, "hspeed", hspeed)
	GM.vsetb(7.0, "vspeed", vspeed)
	GM.vset(7.0, "v_movenow", 0.0)
	GM.vsetb(7.0, "visible", 0.0)
	GM.vsetb(7.0, "x", (x + 40.0))
	GM.vsetb(7.0, "y", y)
func ev_col_551():
	hspeed = 0.0
func ev_col_489():
	if (((vspeed > 4.0))):
		(GM.f_sound_play(122.0))
	vspeed = 0.0
