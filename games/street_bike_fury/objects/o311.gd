extends "res://games/street_bike_fury/scripts.gd"
var v_dir = 0.0
var v_sety = 0.0
var v_spee = 0.0
func ev_create():
	v_sety = (GM.f_random(600.0))
	v_dir = (GM.f_floor((GM.f_random(2.0))))
	v_spee = (2.0 + (GM.f_random(2.0)))
func ev_step():
	if ((absf(v_dir - 0.0) < 0.00001)):
		v_sety = v_sety + v_spee
		if ((v_sety > 600.0)):
			v_dir = 1.0
	if ((absf(v_dir - 1.0) < 0.00001)):
		v_sety = v_sety - v_spee
		if ((v_sety < 0.0)):
			v_dir = 0.0
	x = GM.view_xview[0]
	y = GM.view_yview[0]
func ev_draw():
	(GM.f_draw_set_color(7566195.0))
	(GM.f_draw_line(GM.view_xview[0], (GM.view_yview[0] + v_sety), (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + v_sety)))
