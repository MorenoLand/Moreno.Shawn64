extends "res://games/thrust/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
	(GM.f_sound_play(4.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 200.0), "Nice!  Now Go Dock!"))
