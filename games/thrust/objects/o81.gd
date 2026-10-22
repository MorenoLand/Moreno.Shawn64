extends "res://games/thrust/scripts.gd"
func ev_create():
	alarm[int(0.0)] = (1.0 + (GM.f_random(20.0)))
func ev_alarm_1():
	(GM.f_sound_play(21.0))
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	alarm[int(0.0)] = (1.0 + (GM.f_random(30.0)))
func ev_alarm_0():
	(GM.f_sound_play(21.0))
	(GM.f_screen_gamma((-1.0), (-1.0), (-1.0)))
	alarm[int(1.0)] = (1.0 + (GM.f_random(20.0)))
func ev_other_5():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
