extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 700.0), "PUSH ENTER TO SAVE"))
