extends "res://games/thrust/scripts.gd"
var v_select = 0.0
func ev_create():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		if (not ((((GM.f_sound_isplaying(9.0)))) >= 0.5)):
			if (not ((((GM.f_sound_isplaying(13.0)))) >= 0.5)):
				(GM.f_sound_loop(0.0))
	(GM.f_sound_stop(2.0))
	v_select = 1.0
	GM.background_hspeed[int(1.0)] = 0.0
	GM.background_hspeed[int(2.0)] = 0.0
	GM.background_hspeed[int(3.0)] = 0.0
	GM.background_vspeed[int(1.0)] = 0.0
	GM.background_vspeed[int(2.0)] = 0.0
	GM.background_vspeed[int(3.0)] = 0.0
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
func ev_other_4():
	if not ((((GM.f_registry_exists("cavesbeaten")))) >= 0.5):
		(GM.f_registry_write_real("cavesbeaten", 0.0))
	if not ((((GM.f_registry_exists("spacebeaten")))) >= 0.5):
		(GM.f_registry_write_real("spacebeaten", 0.0))
	if not ((((GM.f_registry_exists("factorybeaten")))) >= 0.5):
		(GM.f_registry_write_real("factorybeaten", 0.0))
	if not ((((GM.f_registry_exists("portalbeaten")))) >= 0.5):
		(GM.f_registry_write_real("portalbeaten", 0.0))
	if not ((((GM.f_registry_exists("hardmodez")))) >= 0.5):
		(GM.f_registry_write_real("hardmodez", 0.0))
	if not ((((GM.f_registry_exists("cavesbeaten2")))) >= 0.5):
		(GM.f_registry_write_real("cavesbeaten2", 0.0))
	if not ((((GM.f_registry_exists("spacebeaten2")))) >= 0.5):
		(GM.f_registry_write_real("spacebeaten2", 0.0))
	if not ((((GM.f_registry_exists("factorybeaten2")))) >= 0.5):
		(GM.f_registry_write_real("factorybeaten2", 0.0))
	if not ((((GM.f_registry_exists("portalbeaten2")))) >= 0.5):
		(GM.f_registry_write_real("portalbeaten2", 0.0))
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
	(GM.f_draw_text(400.0, 250.0, "New Game"))
	if (((absf(v_select - 2.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(400.0, 300.0, "Records"))
	if (((absf(v_select - 3.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(400.0, 350.0, "Options"))
	if (((absf(v_select - 4.0) < 0.00001))):
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(255.0))
	else:
		(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(400.0, 400.0, "Exit"))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 570.0, 800.0, 600.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
	(GM.f_action_draw_font("Arial", 14.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(400.0, 575.0, "Shawn64's Creations 2003/2004"))
func ev_keypress_40():
	(GM.f_sound_play(6.0))
	if not (((absf(v_select - 4.0) < 0.00001))):
		v_select = v_select + 1.0
	else:
		v_select = 1.0
func ev_keypress_38():
	(GM.f_sound_play(6.0))
	if not (((absf(v_select - 1.0) < 0.00001))):
		v_select = v_select - 1.0
	else:
		v_select = 4.0
func ev_keypress_13():
	if (((absf(v_select - 1.0) < 0.00001))):
		(GM.f_sound_play(7.0))
		(GM.f_instance_create(0.0, 0.0, 109.0))
		(GM.f_instance_destroy(self))
	if (((absf(v_select - 2.0) < 0.00001))):
		(GM.f_sound_play(7.0))
		(GM.f_instance_create(0.0, 0.0, 107.0))
		(GM.f_instance_destroy(self))
	if (((absf(v_select - 3.0) < 0.00001))):
		(GM.f_sound_play(7.0))
		(GM.f_instance_create(0.0, 0.0, 103.0))
		(GM.f_instance_destroy(self))
	if (((absf(v_select - 4.0) < 0.00001))):
		(GM.f_game_end())
