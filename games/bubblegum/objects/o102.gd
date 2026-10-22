extends "res://games/bubblegum/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 1.0
func ev_alarm_0():
	(GM.f_action_move(self, "000000010", 3.0, 0.0))
func ev_step():
	if (((absf((GM.f_instance_number(24.0)) - 1.0) < 0.00001))):
		if (((absf(v_wee - 1.0) < 0.00001))):
			if (((GM.vb(24.0, "x") > (x - 64.0)))):
				if (((GM.vb(24.0, "x") < (x + 64.0)))):
					(GM.f_action_move(self, "010000000", 3.0, 0.0))
					gravity_direction = 270.0
					gravity = 0.5
					v_wee = 0.0
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		if (((absf(v_wee - 1.0) < 0.00001))):
			if (((GM.vb(0.0, "x") > (x - 64.0)))):
				if (((GM.vb(0.0, "x") < (x + 64.0)))):
					(GM.f_action_move(self, "010000000", 3.0, 0.0))
					gravity_direction = 270.0
					gravity = 0.5
					v_wee = 0.0
func ev_col_10():
	v_wee = 1.0
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_7():
	(GM.f_instance_create(0.0, 0.0, 90.0))
	(GM.f_sound_play(4.0))
	gravity_direction = 0.0
	gravity = 0.0
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	alarm[int(0.0)] = 25.0
