extends "res://games/holiday_hunting/scripts.gd"
var v_selection = 0.0
func ev_create():
	v_selection = 1.0
	(GM.f_sound_play(15.0))
func ev_mouse_3():
	if (((absf(v_selection - 1.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text("Start Game", 320.0, 150.0))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 28.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(320.0, 50.0, "Holiday Hunting"))
	if (((absf(v_selection - 1.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(320.0, 200.0, "Start Game"))
	if (((absf(v_selection - 2.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(320.0, 250.0, "High Scores"))
	if (((absf(v_selection - 3.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(320.0, 300.0, "Exit"))
func ev_keypress_40():
	(GM.f_sound_play(16.0))
	if ((absf(v_selection - 3.0) < 0.00001)):
		v_selection = 1.0
	else:
		v_selection = v_selection + 1.0
func ev_keypress_38():
	(GM.f_sound_play(16.0))
	if ((absf(v_selection - 1.0) < 0.00001)):
		v_selection = 3.0
	else:
		v_selection = v_selection - 1.0
func ev_keypress_13():
	(GM.f_sound_play(17.0))
	if (((absf(v_selection - 1.0) < 0.00001))):
		(GM.f_sound_stop(15.0))
		(GM.f_room_goto(1.0))
	if (((absf(v_selection - 2.0) < 0.00001))):
		(GM.f_sound_play(21.0))
	if (((absf(v_selection - 3.0) < 0.00001))):
		(GM.f_game_end())
