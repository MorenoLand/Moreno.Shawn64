extends "res://games/bubblegum/scripts.gd"
var v_beary = 0.0
var v_image_single = 0.0
var v_shoot = 0.0
var v_shotready = 0.0
func ev_create():
	v_shotready = 1.0
	v_beary = 0.0
	v_shoot = 0.0
func ev_alarm_7():
	v_shotready = 1.0
func ev_alarm_3():
	v_shoot = 1.0
func ev_alarm_2():
	(GM.f_sound_play(16.0))
	alarm[int(3.0)] = 15.0
func ev_alarm_1():
	(GM.f_sound_play(10.0))
	alarm[int(2.0)] = 10.0
func ev_alarm_0():
	v_beary = 1.0
	alarm[int(1.0)] = 25.0
func ev_step():
	(GM.f_action_move(self, "000010000", 8.0, 0.0))
	v_image_single = 1.0
	if ((((GM.f_random(2.0)) < 1.0))):
		if (((absf(v_shoot - 1.0) < 0.00001))):
			if (((absf(v_shotready - 1.0) < 0.00001))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 42.0))
				v_shotready = 0.0
				alarm[int(7.0)] = 5.0
	if (((absf((GM.f_instance_number(40.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(41.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 45.0))
			(GM.f_instance_destroy(self))
