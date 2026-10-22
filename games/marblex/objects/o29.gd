extends "res://games/marblex/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_alarm_1():
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_alarm_0():
	(GM.f_action_move(self, "000100000", 4.0, 0.0))
func ev_col_33():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	alarm[int(1.0)] = 25.0
func ev_col_30():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	alarm[int(0.0)] = 25.0
