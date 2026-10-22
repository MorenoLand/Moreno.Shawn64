extends "res://games/jetzrampage2/scripts.gd"
var v_empty = 0.0
func ev_create():
	(GM.f_sound_play(77.0))
	v_empty = 0.0
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	v_empty = 1.0
func ev_step():
	if (((absf(v_empty - 0.0) < 0.00001))):
		if ((((GM.f_random(5.0)) < 1.0))):
			(GM.f_instance_create(800.0, 515.0, 231.0))
