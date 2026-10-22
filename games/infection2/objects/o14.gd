extends "res://games/infection2/scripts.gd"
var v_goup = 0.0
var v_wee = 0.0
func ev_create():
	alarm[int(0.0)] = (30.0 + (GM.f_random(90.0)))
	v_wee = 0.4
	v_goup = 0.0
func ev_alarm_0():
	alarm[int(0.0)] = (30.0 + (GM.f_random(200.0)))
	(GM.f_instance_create(x, y, 42.0))
	(GM.f_instance_create(x, y, 51.0))
func ev_step():
	if ((v_wee <= 0.3)):
		v_goup = 1.0
		v_wee = 0.3
	if ((v_wee >= 0.5)):
		v_goup = 0.0
		v_wee = 0.5
	if ((absf(v_goup - 1.0) < 0.00001)):
		v_wee = GM.add(v_wee, 0.003)
	else:
		v_wee = v_wee - 0.003
	x = (GM.view_xview[0] + 5.0)
	y = (GM.view_yview[0] + 5.0)
func ev_draw():
	(GM.f_draw_set_alpha(v_wee))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(GM.view_xview[0], GM.view_yview[0], (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + GM.view_hview[0]), 0.0))
	(GM.f_draw_set_alpha(1.0))
