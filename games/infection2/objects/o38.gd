extends "res://games/infection2/scripts.gd"
var v_goup = 0.0
var v_show = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
func ev_create():
	v_wee = 0.2
	v_goup = 1.0
	vspeed = (-5.0)
	v_wee2 = 0.6
	v_show = 1.0
	alarm[int(0.0)] = 3.0
func ev_alarm_0():
	v_show = 0.0
func ev_step():
	if ((absf(v_goup - 1.0) < 0.00001)):
		v_wee = GM.add(v_wee, 1.0)
	if ((v_wee > 8.0)):
		v_goup = 0.0
	if ((absf(v_goup - 0.0) < 0.00001)):
		v_wee = v_wee - 1.0
		if ((v_wee < 0.0)):
			(GM.f_instance_destroy(self))
	v_wee2 = v_wee2 - 0.01
	if ((v_wee2 < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(30.0, 0.0, x, y, v_wee, v_wee, 0.0, 255.0, v_wee2))
	(GM.f_draw_set_blend_mode(0.0))
	if ((absf(v_show - 1.0) < 0.00001)):
		(GM.f_draw_set_color(255.0))
		(GM.f_draw_set_alpha(0.1))
		(GM.f_draw_rectangle(GM.view_xview[0], GM.view_yview[0], (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + GM.view_hview[0]), 0.0))
		(GM.f_draw_set_color(16777215.0))
		(GM.f_draw_set_alpha(1.0))
