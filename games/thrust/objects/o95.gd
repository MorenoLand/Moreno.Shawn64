extends "res://games/thrust/objects/o1.gd"
var v_moveleft = 0.0
var v_moveright = 0.0
func ev_create():
	v_moveleft = 0.0
	v_moveright = 0.0
	(GM.f_action_move(self, "000100000", 4.0, 0.0))
	alarm[int(0.0)] = 10.0
func ev_alarm_1():
	v_moveleft = 1.0
func ev_alarm_0():
	v_moveright = 1.0
func ev_step():
	if ((absf(v_moveright - 1.0) < 0.00001)):
		if ((hspeed < 4.0)):
			(GM.f_motion_add(self, 0.0, 0.1))
		else:
			alarm[int(1.0)] = 20.0
			v_moveright = 0.0
	if ((absf(v_moveleft - 1.0) < 0.00001)):
		if ((hspeed > (-4.0))):
			(GM.f_motion_add(self, 180.0, 0.1))
		else:
			alarm[int(0.0)] = 20.0
			v_moveleft = 0.0
