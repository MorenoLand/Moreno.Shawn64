extends "res://games/svsj/scripts.gd"
var v_talk = 0.0
var v_talking = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = 1.0
	v_talk = 0.0
	v_talking = 0.0
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_3():
	v_talk = 0.0
	v_talking = 0.0
func ev_alarm_2():
	if (((absf(v_talking - 1.0) < 0.00001))):
		v_talk = 0.0
		alarm[int(1.0)] = 2.0
func ev_alarm_1():
	if (((absf(v_talking - 1.0) < 0.00001))):
		v_talk = 1.0
		alarm[int(2.0)] = 2.0
func ev_alarm_0():
	v_wow = 1.0
func ev_step():
	if ((absf(v_talk - 1.0) < 0.00001)):
		sprite_index = 3.0
	else:
		sprite_index = 1.0
	if not ((((GM.f_keyboard_check(37.0)))) >= 0.5):
		if not ((((GM.f_keyboard_check(39.0)))) >= 0.5):
			hspeed = 0.0
			image_single = 1.0
	if (((GM.f_keyboard_check(37.0)))) >= 0.5:
		if ((absf(v_wow - 1.0) < 0.00001)):
			(GM.f_sound_play(8.0))
			alarm[int(0.0)] = 3.0
			v_wow = 0.0
		hspeed = (-5.0)
		image_single = (-1.0)
	if (((GM.f_keyboard_check(39.0)))) >= 0.5:
		if ((absf(v_wow - 1.0) < 0.00001)):
			(GM.f_sound_play(8.0))
			alarm[int(0.0)] = 3.0
			v_wow = 0.0
		hspeed = 5.0
		image_single = (-1.0)
func ev_col_6():
	hspeed = 0.0
func ev_col_5():
	vspeed = 0.0
func ev_keypress_38():
	if (((y > 350.0))):
		if (((absf(vspeed - 0.0) < 0.00001))):
			(GM.f_motion_add(self, 90.0, 10.0))
			(GM.f_sound_play(14.0))
