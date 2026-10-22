extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	if ((absf(GM.G["effects"] - 0.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	(GM.f_sound_loop(14.0))
func ev_step():
	(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(GM.view_wview[0]))), (GM.view_yview[0] - 10.0), 125.0))
func ev_other_5():
	(GM.f_sound_stop(14.0))
