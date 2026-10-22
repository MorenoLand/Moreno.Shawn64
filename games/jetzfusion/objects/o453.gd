extends "res://games/jetzfusion/scripts.gd"
var v_wins = ""
func ev_create():
	if (((absf((GM.f_instance_number(407.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(448.0)) - 1.0) < 0.00001))):
			v_wins = "Old Jetz Wins!"
	if (((absf((GM.f_instance_number(407.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(448.0)) - 0.0) < 0.00001))):
			v_wins = "New Jetz Wins!"
	if (((absf((GM.f_instance_number(407.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(448.0)) - 0.0) < 0.00001))):
			v_wins = "DRAW!"
	alarm[int(0.0)] = 55.0
func ev_alarm_0():
	(GM.f_sound_stop_all())
	(GM.f_room_goto(1.0))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Dot-Matrix", 48.0, 0.0, 0.0))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 50.0), ("" + (GM.f_string(v_wins)))))
