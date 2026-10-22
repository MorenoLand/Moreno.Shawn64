extends "res://games/jetzrampage/scripts.gd"
var v_bombs = 0.0
var v_chuter = 0.0
func ev_create():
	v_bombs = 0.0
	v_chuter = 1.0
	(GM.f_action_move(self, "000001000", 20.0, 0.0))
func ev_alarm_0():
	v_chuter = 1.0
func ev_step():
	if (((absf(v_bombs - 1.0) < 0.00001))):
		if (((x < (GM.vb(0.0, "x") - 80.0)))):
			if (((x > (GM.vb(0.0, "x") - 800.0)))):
				if ((((GM.f_random(15.0)) < 1.0))):
					(GM.f_sound_play(38.0))
					(GM.f_instance_create((x + 15.0), (y + 15.0), 124.0))
	if (((absf((GM.f_instance_number(137.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(114.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(38.0))
			(GM.f_instance_create((x + 15.0), (y + 15.0), 137.0))
			v_chuter = 0.0
			alarm[int(0.0)] = 500.0
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
