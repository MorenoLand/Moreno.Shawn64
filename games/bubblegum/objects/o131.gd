extends "res://games/bubblegum/scripts.gd"
var v_image_single = 0.0
var v_what = 0.0
func ev_create():
	v_image_single = 1.0
	alarm[int(0.0)] = 25.0
	v_what = 0.0
func ev_alarm_0():
	(GM.f_sound_play(33.0))
	v_what = 1.0
func ev_step():
	if (((absf(v_what - 1.0) < 0.00001))):
		if (not ((((GM.f_sound_isplaying(33.0)))) >= 0.5)):
			(GM.f_game_end())
