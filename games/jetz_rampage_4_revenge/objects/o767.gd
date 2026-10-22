extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_motion_add(self, (GM.f_random(360.0)), (GM.f_random(35.0))))
	alarm[int(0.0)] = (1.0 + (GM.f_random(20.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_instance_destroy(self))
	if ((absf((GM.f_instance_number(765.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create(x, GM.room_height, 765.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
