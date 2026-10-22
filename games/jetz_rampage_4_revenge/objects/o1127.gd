extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_holdit = 0.0
var v_myzap = 0.0
var v_wee = 0.0
var v_zapnow = 0.0
func ev_create():
	v_zapnow = 1.0
	v_holdit = GM.G["warning"]
	v_myzap = 0.0
func ev_alarm_0():
	v_zapnow = 1.0
func ev_step():
	GM.G["warning"] = v_holdit
func ev_keypress_13():
	if ((absf(v_zapnow - 1.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 1128.0))
		GM.vset(v_wee, "v_holdit", v_holdit)
		v_zapnow = 0.0
		alarm[int(0.0)] = 90.0
