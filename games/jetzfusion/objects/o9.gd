extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_alarm_0():
	(GM.f_instance_create((x + (-20.0)), (y + 17.0), 7.0))
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_sound_play(33.0))
	v_image_single = 7.0
	alarm[int(0.0)] = 10.0
