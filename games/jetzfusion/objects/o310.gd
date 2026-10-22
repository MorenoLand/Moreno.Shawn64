extends "res://games/jetzfusion/scripts.gd"
var v_gogo = 0.0
var v_wow = 0.0
func ev_create():
	if ((GM.vb(7.0, "hspeed") > 0.0)):
		direction = 0.0
	else:
		direction = 180.0
	speed = 10.0
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
	v_wow = 0.0
	alarm[int(0.0)] = 5.0
	v_gogo = 1.0
	alarm[int(1.0)] = 100.0
func ev_alarm_1():
	(GM.f_sound_play(33.0))
	GM.vset(10.0, "v_bomazang", 1.0)
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_wow = 1.0
func ev_step():
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(7.0, "x"), GM.vb(7.0, "y"))), 0.5))
func ev_col_315():
	(GM.f_sound_play(33.0))
	(GM.f_motion_add(self, (direction - 180.0), (speed / 2.0)))
func ev_col_309():
	(GM.f_sound_play(33.0))
	(GM.f_motion_add(self, (direction - 180.0), (speed / 2.0)))
func ev_col_78():
	(GM.f_sound_play(28.0))
	(GM.f_motion_add(self, (direction - 180.0), (speed / 2.0)))
func ev_col_66():
	(GM.f_sound_play(63.0))
	(GM.f_motion_add(self, (direction - 180.0), (speed / 2.0)))
func ev_col_7():
	if (((absf(v_wow - 1.0) < 0.00001))):
		(GM.f_sound_play(33.0))
		GM.vset(10.0, "v_bomazang", 1.0)
		(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_sound_play(19.0))
