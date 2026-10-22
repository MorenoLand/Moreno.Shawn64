extends "res://games/thrust/scripts.gd"
var v_select = 0.0
var v_what = 0.0
func ev_create():
	v_select = 1.0
	v_what = 0.0
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	v_what = 1.0
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 72.0, 0.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(400.0, 50.0, "THRUST!"))
	if (((absf(v_select - 1.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(400.0, 250.0, "Normal Mode"))
	if (((absf(v_select - 2.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	if (((absf((GM.f_registry_read_real("hardmodez")) - 1.0) < 0.00001))):
		(GM.f_draw_text(400.0, 300.0, "Hard Mode"))
	else:
		(GM.f_draw_text(400.0, 300.0, "Hard Mode: LOCKED"))
	if (((absf(v_select - 3.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(400.0, 350.0, "Back"))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 570.0, 800.0, 600.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
	(GM.f_action_draw_font("Arial", 14.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(400.0, 575.0, "Shawn64's Creations 2003/2004"))
func ev_keypress_40():
	(GM.f_sound_play(6.0))
	if not (((absf(v_select - 3.0) < 0.00001))):
		v_select = v_select + 1.0
	else:
		v_select = 1.0
func ev_keypress_38():
	(GM.f_sound_play(6.0))
	if not (((absf(v_select - 1.0) < 0.00001))):
		v_select = v_select - 1.0
	else:
		v_select = 3.0
func ev_keypress_13():
	if ((GM.eq(v_what, 1.0))):
		if (((absf(v_select - 1.0) < 0.00001))):
			GM.G["difficultygame"] = 0.0
			(GM.f_sound_play(7.0))
			(GM.f_instance_create(0.0, 0.0, 28.0))
			(GM.f_instance_destroy(self))
		if (((absf(v_select - 2.0) < 0.00001))):
			if (((absf((GM.f_registry_read_real("hardmodez")) - 1.0) < 0.00001))):
				GM.G["difficultygame"] = 1.0
				(GM.f_sound_play(7.0))
				(GM.f_instance_create(0.0, 0.0, 115.0))
				(GM.f_instance_destroy(self))
		if (((absf(v_select - 3.0) < 0.00001))):
			(GM.f_sound_play(7.0))
			(GM.f_instance_create(0.0, 0.0, 15.0))
			(GM.f_instance_destroy(self))
