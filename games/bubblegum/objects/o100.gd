extends "res://games/bubblegum/objects/o97.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 2.0, 0.0))
func ev_alarm_0():
	speed = 3.0
func ev_col_96():
	vspeed = (-vspeed)
	speed = 0.0
	alarm[int(0.0)] = 15.0
func ev_col_79():
	vspeed = (-vspeed)
	speed = 0.0
	alarm[int(0.0)] = 15.0
