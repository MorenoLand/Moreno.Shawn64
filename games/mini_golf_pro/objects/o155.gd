extends "res://games/mini_golf_pro/scripts.gd"
var v_wow = 0.0
func ev_create():
	(self.script_effectss())
	(GM.f_sound_play(14.0))
func ev_step():
	v_wow = (GM.f_floor((GM.f_random(1.99999))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(GM.view_wview[0]))), (GM.view_yview[0] - 10.0), 125.0))
func ev_other_5():
	(GM.f_sound_stop(14.0))
