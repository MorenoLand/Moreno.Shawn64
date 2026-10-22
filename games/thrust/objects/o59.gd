extends "res://games/thrust/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 75.0
func ev_alarm_1():
	(GM.f_sound_play(16.0))
	vspeed = 10.0
func ev_alarm_0():
	(GM.f_action_move(self, "000000010", 20.0, 0.0))
func ev_col_61():
	(GM.f_sound_stop(16.0))
	vspeed = 0.0
	alarm[int(0.0)] = 35.0
func ev_col_60():
	(GM.f_sound_play(17.0))
	vspeed = 0.0
	alarm[int(1.0)] = 35.0
