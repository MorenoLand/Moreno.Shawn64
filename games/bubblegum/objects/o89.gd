extends "res://games/bubblegum/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_1():
	(GM.f_action_move(self, "000001000", 5.0, 0.0))
func ev_alarm_0():
	(GM.f_action_move(self, "000100000", 15.0, 0.0))
func ev_col_9():
	(GM.f_instance_create(0.0, 0.0, 90.0))
	(GM.f_sound_play(4.0))
	hspeed = 0.0
	alarm[int(1.0)] = 25.0
func ev_col_8():
	hspeed = 0.0
	alarm[int(0.0)] = 50.0
