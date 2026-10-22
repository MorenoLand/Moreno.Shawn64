extends "res://games/mini_golf_pro/scripts.gd"
var v_go = 0.0
var v_shspeed = 0.0
func ev_create():
	(GM.f_instance_create((x + (sprite_width / 2.0)), y, 214.0))
	hspeed = 4.5
	v_go = 1.0
func ev_alarm_0():
	v_go = 1.0
	hspeed = v_shspeed
func ev_step():
	if ((absf((GM.f_instance_number(149.0)) - 0.0) < 0.00001)):
		if ((GM.vb(214.0, "x") > (x + (sprite_width / 2.0)))):
			hspeed = hspeed + 0.1
		if ((GM.vb(214.0, "x") < (x + (sprite_width / 2.0)))):
			hspeed = hspeed - 0.1
	else:
		if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
			v_shspeed = hspeed
		hspeed = 0.0
		alarm[int(0.0)] = 1.0
