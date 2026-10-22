extends "res://games/infection2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 4.0
	(GM.f_sound_play(15.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_set_alpha(0.08))
	(GM.f_draw_rectangle(GM.view_xview[0], GM.view_yview[0], (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + GM.view_hview[0]), 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_alpha(1.0))
