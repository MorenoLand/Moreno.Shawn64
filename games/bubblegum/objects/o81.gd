extends "res://games/bubblegum/scripts.gd"
var v_view_left = 0.0
func ev_create():
	alarm[int(0.0)] = 20.0
func ev_alarm_1():
	(GM.f_action_move(self, "000000010", 5.0, 0.0))
func ev_alarm_0():
	if (((x > GM.aget(v_view_left, 0.0)))):
		if (((x < (GM.aget(v_view_left, 0.0) + 560.0)))):
			(GM.f_sound_play(26.0))
	(GM.f_action_move(self, "010000000", 15.0, 0.0))
func ev_col_10():
	alarm[int(0.0)] = 20.0
	vspeed = 0.0
func ev_col_7():
	if (((x > GM.aget(v_view_left, 0.0)))):
		if (((x < (GM.aget(v_view_left, 0.0) + 560.0)))):
			(GM.f_sound_play(3.0))
	vspeed = 0.0
	alarm[int(1.0)] = 10.0
