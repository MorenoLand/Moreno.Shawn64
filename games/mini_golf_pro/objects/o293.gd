extends "res://games/mini_golf_pro/scripts.gd"
var v_scaleo = 0.0
var v_showtext = 0.0
func ev_create():
	v_scaleo = 1.0
func ev_step():
	v_scaleo = v_scaleo - 0.1
	if ((v_scaleo < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_font(6.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_set_alpha(v_scaleo))
	(GM.f_draw_text_transformed((GM.view_xview[0] + (GM.view_wview[0] / 2.0)), (GM.view_yview[0] + 200.0), ("" + (GM.f_string(v_showtext))), 1.0, 1.0, 0.0))
	(GM.f_draw_set_alpha(1.0))
