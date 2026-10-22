extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_go = 0.0
var v_holdit = 0.0
var v_woah = 0.0
func ev_create():
	v_go = 0.0
	alarm[int(0.0)] = 60.0
	v_holdit = GM.G["warning"]
func ev_alarm_0():
	v_go = 1.0
func ev_step():
	if ((absf(v_go - 1.0) < 0.00001)):
		if (((GM.f_instance_number(1077.0)) > 0.0)):
			v_woah = (GM.f_floor((GM.f_random(7.99999))))
		if (((GM.f_instance_number(1078.0)) > 0.0)):
			v_woah = (GM.f_floor((GM.f_random(4.99999))))
		if ((absf(v_woah - 0.0) < 0.00001)):
			if ((GM.vb(7.0, "hspeed") >= 0.0)):
				(GM.f_instance_create(((GM.view_xview[0] + (GM.f_random(800.0))) + ((GM.vb(7.0, "hspeed") * 50.0))), 25.0, 1086.0))
			if ((GM.vb(7.0, "hspeed") < 0.0)):
				(GM.f_instance_create(((GM.view_xview[0] + (GM.f_random(800.0))) + ((GM.vb(7.0, "hspeed") * 50.0))), 25.0, 1086.0))
	GM.G["warning"] = v_holdit
