extends "res://games/jetzrampage2/scripts.gd"
var v_blah = 0.0
var v_blahblah = 0.0
func ev_alarm_1():
	(GM.f_instance_create(0.0, 0.0, 538.0))
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	alarm[int(1.0)] = 3.0
func ev_step():
	(GM.f_screen_gamma(v_blah, v_blah, v_blah))
	if (((v_blah < 0.0))):
		v_blah = v_blah + 0.01
	else:
		if (((absf(v_blahblah - 1.0) < 0.00001))):
			(GM.f_sound_play(178.0))
			(GM.f_screen_gamma(0.05, 0.05, 0.0))
			alarm[int(0.0)] = 2.0
			v_blahblah = 0.0
func ev_other_4():
	(GM.f_screen_gamma((-1.0), (-1.0), (-1.0)))
	v_blah = (-1.0)
	v_blahblah = 1.0
