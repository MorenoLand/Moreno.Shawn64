extends "res://games/mw2/scripts.gd"
var v_right = 0.0
func ev_create():
	if (((absf((GM.f_instance_number(176.0)) - 2.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	v_right = 1.0
	(GM.f_instance_create(0.0, 0.0, 177.0))
	(GM.f_screen_gamma(0.5, (-0.5), (-0.5)))
	alarm[int(0.0)] = 15.0
	alarm[int(1.0)] = 200.0
	alarm[int(2.0)] = 10.0
func ev_alarm_2():
	(GM.f_sound_play(45.0))
	alarm[int(2.0)] = 3.0
func ev_alarm_1():
	GM.room_speed = 30.0
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_right = 0.0
func ev_step():
	if (((absf(v_right - 1.0) < 0.00001))):
		GM.room_speed = GM.room_speed + (-1.0)
