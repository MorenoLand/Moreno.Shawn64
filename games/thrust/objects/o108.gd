extends "res://games/thrust/scripts.gd"
var v_select = 0.0
var v_what = 0.0
func ev_create():
	v_select = 2.0
	v_what = 0.0
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	v_what = 1.0
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 72.0, 0.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(400.0, 50.0, "THRUST!"))
	(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	if (((GM.f_registry_exists("cavestime2")))) >= 0.5:
		(GM.f_draw_text(400.0, 250.0, (("Caves Record: " + (GM.f_string((GM.f_round(((GM.f_registry_read_real("cavestime2")) / 30.0)))))) + " Seconds")))
	else:
		(GM.f_draw_text(400.0, 250.0, "Caves Record: 999999 Seconds"))
	if (((GM.f_registry_exists("spacetime2")))) >= 0.5:
		(GM.f_draw_text(400.0, 300.0, (("Space Record: " + (GM.f_string((GM.f_round(((GM.f_registry_read_real("spacetime2")) / 30.0)))))) + " Seconds")))
	else:
		(GM.f_draw_text(400.0, 300.0, "Space Record: 999999 Seconds"))
	if (((GM.f_registry_exists("factorytime2")))) >= 0.5:
		(GM.f_draw_text(400.0, 350.0, (("Factory Record: " + (GM.f_string((GM.f_round(((GM.f_registry_read_real("factorytime2")) / 30.0)))))) + " Seconds")))
	else:
		(GM.f_draw_text(400.0, 350.0, "Factory Record: 999999 Seconds"))
	if (((GM.f_registry_exists("portaltime2")))) >= 0.5:
		(GM.f_draw_text(400.0, 400.0, (("Portal Record: " + (GM.f_string((GM.f_round(((GM.f_registry_read_real("portaltime2")) / 30.0)))))) + " Seconds")))
	else:
		(GM.f_draw_text(400.0, 400.0, "Portal Record: 999999 Seconds"))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 570.0, 800.0, 600.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
	(GM.f_action_draw_font("Arial", 14.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(400.0, 575.0, "Shawn64's Creations 2003/2004 (HARD SCORE)"))
func ev_keypress_27():
	(GM.f_sound_play(7.0))
	(GM.f_instance_create(0.0, 0.0, 15.0))
	(GM.f_instance_destroy(self))
func ev_keypress_13():
	if ((GM.eq(v_what, 1.0))):
		if (((absf(v_select - 2.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 15.0))
			(GM.f_sound_play(7.0))
			(GM.f_instance_destroy(self))
