extends "res://games/jetzfusion/scripts.gd"
var v_whee = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = 0.7
	(GM.f_sound_loop(54.0))
	(GM.f_sound_stop(2.0))
	(GM.f_sound_stop(3.0))
	(GM.f_sound_loop(55.0))
	v_whee = 1.0
func ev_alarm_0():
	(GM.f_instance_create(GM.vb(7.0, "x"), 520.0, 250.0))
	(GM.f_instance_destroy(self))
func ev_step():
	if ((absf(v_whee - 1.0) < 0.00001)):
		v_wow = v_wow + 0.001
		(GM.f_sound_volume(54.0, v_wow))
		if ((v_wow > 1.0)):
			alarm[int(0.0)] = 100.0
			v_whee = 0.0
	if (((GM.G["jhealth"] > 0.0))):
		GM.G["jhealth"] = GM.G["jhealth"] + (-0.1)
