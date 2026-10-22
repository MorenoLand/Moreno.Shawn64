extends "res://games/street_bike_fury/scripts.gd"
var v_alphas = 0.0
func ev_create():
	v_alphas = 0.5
func ev_step():
	v_alphas = v_alphas - 0.1
	if ((v_alphas < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_set_alpha(v_alphas))
	(GM.f_draw_rectangle(GM.view_xview[0], GM.view_yview[0], (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + GM.view_hview[0]), 0.0))
	(GM.f_draw_set_alpha(1.0))
