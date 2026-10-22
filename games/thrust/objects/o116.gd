extends "res://games/thrust/scripts.gd"
var v_ham = 0.0
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_room_goto(57.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 200.0), "Great!  You are a master"))
	if (((absf(v_ham - 1.0) < 0.00001))):
		(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 300.0), "Thanks for Playing!"))
