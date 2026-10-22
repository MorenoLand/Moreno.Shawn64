extends "res://games/thrust/scripts.gd"
var v_select = 0.0
var v_what = 0.0
func ev_create():
	v_select = 1.0
	v_what = 0.0
	alarm[int(0.0)] = 1.0
	(GM.f_sound_stop(19.0))
	(GM.f_sound_stop(16.0))
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
	(GM.f_draw_text(400.0, 220.0, "Caves: 10 Levels"))
	if (((absf(v_select - 2.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	if (((absf((GM.f_registry_read_real("cavesbeaten")) - 1.0) < 0.00001))):
		(GM.f_draw_text(400.0, 270.0, "Space: 10 Levels"))
	else:
		(GM.f_draw_text(400.0, 270.0, "Space: LOCKED"))
	if (((absf(v_select - 3.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	if (((absf((GM.f_registry_read_real("spacebeaten")) - 1.0) < 0.00001))):
		(GM.f_draw_text(400.0, 320.0, "Factory: 10 Levels"))
	else:
		(GM.f_draw_text(400.0, 320.0, "Factory: LOCKED"))
	if (((absf(v_select - 4.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	if (((absf((GM.f_registry_read_real("factorybeaten")) - 1.0) < 0.00001))):
		(GM.f_draw_text(400.0, 370.0, "Portal: 10 Levels"))
	else:
		(GM.f_draw_text(400.0, 370.0, "Portal: LOCKED"))
	if (((absf(v_select - 5.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(400.0, 420.0, "Back"))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 570.0, 800.0, 600.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
	(GM.f_action_draw_font("Arial", 14.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(400.0, 575.0, "Shawn64's Creations 2003/2004"))
func ev_keypress_40():
	(GM.f_sound_play(6.0))
	if not (((absf(v_select - 5.0) < 0.00001))):
		v_select = v_select + 1.0
	else:
		v_select = 1.0
func ev_keypress_38():
	(GM.f_sound_play(6.0))
	if not (((absf(v_select - 1.0) < 0.00001))):
		v_select = v_select - 1.0
	else:
		v_select = 5.0
func ev_keypress_27():
	(GM.f_sound_play(7.0))
	(GM.f_instance_create(0.0, 0.0, 15.0))
	(GM.f_instance_destroy(self))
func ev_keypress_13():
	GM.G["time"] = 0.0
	if ((GM.eq(v_what, 1.0))):
		if (((absf(v_select - 1.0) < 0.00001))):
			(GM.f_sound_stop(22.0))
			(GM.f_sound_stop(9.0))
			(GM.f_sound_stop(13.0))
			if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
				(GM.f_sound_play(0.0))
			(GM.f_sound_play(7.0))
			(GM.f_instance_destroy(self))
			(GM.f_room_goto(5.0))
	if (((absf((GM.f_registry_read_real("cavesbeaten")) - 1.0) < 0.00001))):
		if ((GM.eq(v_what, 1.0))):
			if (((absf(v_select - 2.0) < 0.00001))):
				(GM.f_sound_stop(22.0))
				(GM.f_sound_stop(0.0))
				(GM.f_sound_stop(13.0))
				if (not ((((GM.f_sound_isplaying(9.0)))) >= 0.5)):
					(GM.f_sound_loop(9.0))
				(GM.f_sound_play(7.0))
				(GM.f_instance_destroy(self))
				(GM.f_room_goto(20.0))
	if (((absf((GM.f_registry_read_real("spacebeaten")) - 1.0) < 0.00001))):
		if ((GM.eq(v_what, 1.0))):
			if (((absf(v_select - 3.0) < 0.00001))):
				(GM.f_sound_stop(22.0))
				(GM.f_sound_stop(0.0))
				(GM.f_sound_stop(9.0))
				if (not ((((GM.f_sound_isplaying(13.0)))) >= 0.5)):
					(GM.f_sound_loop(13.0))
				(GM.f_sound_play(7.0))
				(GM.f_instance_destroy(self))
				(GM.f_room_goto(34.0))
	if (((absf((GM.f_registry_read_real("factorybeaten")) - 1.0) < 0.00001))):
		if ((GM.eq(v_what, 1.0))):
			if (((absf(v_select - 4.0) < 0.00001))):
				(GM.f_sound_stop(13.0))
				(GM.f_sound_stop(9.0))
				(GM.f_sound_stop(0.0))
				if (not ((((GM.f_sound_isplaying(22.0)))) >= 0.5)):
					(GM.f_sound_loop(22.0))
				(GM.f_sound_play(7.0))
				(GM.f_instance_destroy(self))
				(GM.f_room_goto(47.0))
	if ((GM.eq(v_what, 1.0))):
		if (((absf(v_select - 5.0) < 0.00001))):
			(GM.f_sound_play(7.0))
			(GM.f_instance_create(0.0, 0.0, 15.0))
			(GM.f_instance_destroy(self))
