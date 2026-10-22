extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 2.0, 0.0))
func ev_alarm_0():
	speed = 3.0
func ev_col_96():
	hspeed = (-hspeed)
	speed = 0.0
	alarm[int(0.0)] = 15.0
func ev_col_79():
	hspeed = (-hspeed)
	speed = 0.0
	alarm[int(0.0)] = 15.0
