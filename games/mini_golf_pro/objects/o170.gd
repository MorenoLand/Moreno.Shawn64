extends "res://games/mini_golf_pro/scripts.gd"
var v_color = {}
var v_fullornot = 0.0
var v_mouseonme = 0.0
var v_psound = 0.0
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	v_mouseonme = 0.0
	v_psound = 1.0
	v_color = (GM.f_display_get_colordepth())
	v_fullornot = (GM.f_window_get_fullscreen())
	depth = depth + (y / 5000.0)
func ev_step():
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		if ((absf(v_psound - 1.0) < 0.00001)):
			(GM.f_sound_play(37.0))
			v_psound = 0.0
		v_mouseonme = 1.0
	else:
		v_psound = 1.0
		v_mouseonme = 0.0
func ev_mouse_4():
	GM.G["online"] = 0.0
	GM.G["yourplayer"] = 1.0
	(GM.f_sound_play(16.0))
	(GM.f_room_goto(30.0))
func ev_draw():
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_set_halign(1.0))
	if ((absf(v_mouseonme - 0.0) < 0.00001)):
		(GM.f_draw_sprite(122.0, 0.0, x, y))
	else:
		(GM.f_draw_sprite_ext(122.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
	(GM.f_draw_set_color(51712.0))
	(GM.f_draw_rectangle(0.0, (GM.room_height - 42.0), GM.room_width, (GM.room_height - 12.0), (1.0 if not (((1.0)) >= 0.5) else 0.0)))
	(GM.f_draw_text((GM.room_width / 2.0), (GM.room_height - 37.0), "Copyright ©2004-2005 S64 Games. All rights reserved."))
	(GM.f_draw_set_halign(0.0))
	if ((absf(GM.G["musicon"] - 0.0) < 0.00001)):
		(GM.f_draw_text(15.0, 12.0, "(OFF)Music - Control + M"))
	if ((absf(GM.G["musicon"] - 1.0) < 0.00001)):
		(GM.f_draw_text(15.0, 12.0, "(ON)Music - Control + M"))
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_text(15.0, 32.0, "(ON)Lights/Effects - Control+E"))
	if ((absf(GM.G["effects"] - 0.0) < 0.00001)):
		(GM.f_draw_text(15.0, 32.0, "(OFF)Lights/Effects - Control+E"))
	if ((absf(v_fullornot - 1.0) < 0.00001)):
		(GM.f_draw_text(15.0, 52.0, "(ON)Fullscreen - Control+W"))
	if ((absf(v_fullornot - 0.0) < 0.00001)):
		(GM.f_draw_text(15.0, 52.0, "(OFF)Fullscreen - Control+W"))
	if (((absf(v_color - 16.0) < 0.00001) and (absf(v_fullornot - 1.0) < 0.00001))):
		(GM.f_draw_text(15.0, 72.0, "(16)Colordepth - Control+C"))
	if (((absf(v_color - 32.0) < 0.00001) and (absf(v_fullornot - 1.0) < 0.00001))):
		(GM.f_draw_text(15.0, 72.0, "(32)Colordepth - Control+C"))
	(GM.f_draw_set_halign(2.0))
	(GM.f_draw_text((1024.0 - 15.0), 12.0, "Enjoy the Game!"))
	(GM.f_draw_text((1024.0 - 15.0), 32.0, "V1.1"))
func ev_keypress_87():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf((GM.f_window_get_fullscreen()) - 0.0) < 0.00001)):
			(GM.f_display_set_all(1024.0, 768.0, (-1.0), 32.0))
			(GM.f_window_set_fullscreen(1.0))
			(self.script_console_dll_refresh())
			v_color = 32.0
			v_fullornot = 1.0
		else:
			if ((absf((GM.f_window_get_fullscreen()) - 1.0) < 0.00001)):
				(GM.f_display_reset())
				(GM.f_window_set_fullscreen(0.0))
				(GM.f_window_set_size(800.0, 600.0))
				(GM.f_window_center())
				(GM.f_window_set_showborder(1.0))
				(self.script_console_dll_refresh())
				v_fullornot = 0.0
func ev_keypress_69():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
			GM.G["effects"] = 0.0
		else:
			if ((absf(GM.G["effects"] - 0.0) < 0.00001)):
				GM.G["effects"] = 1.0
		(GM.f_sound_play(37.0))
func ev_keypress_67():
	if ((((GM.f_keyboard_check(17.0))) >= 0.5 and (absf((GM.f_window_get_fullscreen()) - 1.0) < 0.00001))):
		if ((absf((GM.f_display_get_colordepth()) - 16.0) < 0.00001)):
			(GM.f_display_set_all(1024.0, 768.0, (-1.0), 32.0))
			v_color = 32.0
		else:
			if ((absf((GM.f_display_get_colordepth()) - 32.0) < 0.00001)):
				(GM.f_display_set_all(1024.0, 768.0, (-1.0), 16.0))
				v_color = 16.0
