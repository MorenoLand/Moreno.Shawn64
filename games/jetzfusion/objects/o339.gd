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
	for _w494 in GM.with_list((266.0), self):
		if _w494._dead:
			continue
		_w494.other = self
		(GM.f_instance_destroy(_w494))
	(GM.f_instance_create((GM.view_xview[0] - 300.0), 456.0, 337.0))
	(GM.f_instance_create((GM.view_xview[0] + 350.0), 0.0, 114.0))
	(GM.f_instance_create((GM.view_xview[0] + 390.0), 0.0, 114.0))
	(GM.f_instance_create((GM.view_xview[0] + 350.0), 456.0, 276.0))
	(GM.f_sound_stop(54.0))
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
