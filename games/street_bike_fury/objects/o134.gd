extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 1.0
func ev_step():
	v_wee = v_wee - 0.02
	if ((v_wee < 0.0)):
		if ((absf(GM.room - 2.0) < 0.00001)):
			(GM.f_sound_loop(0.0))
			(GM.f_sound_loop(2.0))
			GM.background_foreground[int(4.0)] = 1.0
			GM.background_foreground[int(3.0)] = 1.0
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_alpha(v_wee))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(GM.view_xview[0], GM.view_yview[0], (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + GM.view_hview[0]), 0.0))
	(GM.f_draw_set_alpha(1.0))
