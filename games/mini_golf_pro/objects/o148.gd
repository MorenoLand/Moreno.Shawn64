extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	if (((GM.f_instance_number(148.0)) > 1.0)):
		(GM.f_instance_destroy(self))
func ev_step():
	if ((GM.mouse_y > (GM.view_yview[0] + 763.0))):
		if ((GM.view_yview[0] < ((GM.room_height - GM.view_hview[0]) - 10.0))):
			GM.view_yview[0] = GM.view_yview[0] + 10.0
		else:
			GM.view_yview[0] = (GM.room_height - GM.view_hview[0])
	if ((GM.mouse_y < (GM.view_yview[0] + 5.0))):
		if ((GM.view_yview[0] > 10.0)):
			GM.view_yview[0] = GM.view_yview[0] - 10.0
		else:
			GM.view_yview[0] = 0.0
	if ((GM.mouse_x > (GM.view_xview[0] + 1019.0))):
		if ((GM.view_xview[0] < ((GM.room_width - GM.view_wview[0]) - 10.0))):
			GM.view_xview[0] = GM.view_xview[0] + 10.0
		else:
			GM.view_xview[0] = (GM.room_width - GM.view_wview[0])
	if ((GM.mouse_x < (GM.view_xview[0] + 5.0))):
		if ((GM.view_xview[0] > 10.0)):
			GM.view_xview[0] = GM.view_xview[0] - 10.0
		else:
			GM.view_xview[0] = 0.0
func ev_other_4():
	if ((absf(GM.G["intro"] - 1.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	if ((((((absf(GM.room - 18.0) < 0.00001) or (absf(GM.room - 30.0) < 0.00001)) or (absf(GM.room - 32.0) < 0.00001)) or (absf(GM.room - 31.0) < 0.00001)) or (absf(GM.room - 57.0) < 0.00001))):
		(GM.f_instance_destroy(self))
		return
	if ((GM.eq(GM.G["players"], 1.0) or (absf(GM.G["online"] - 1.0) < 0.00001))):
		if not (((absf(GM.G["holeon"] - 1.0) < 0.00001))):
			(GM.f_instance_create(x, y, 182.0))
	if (GM.eq(GM.G["levelset"], 4.0)):
		if (((absf(GM.room - 19.0) < 0.00001) or (absf(GM.room - 36.0) < 0.00001))):
			(GM.f_instance_create(x, y, 182.0))
	if not (((absf(GM.room - 58.0) < 0.00001))):
		if not ((GM.eq(GM.G["levelset"], 10.0))):
			(GM.f_instance_create((-100.0), (-100.0), 265.0))
	if (GM.eq(GM.G["levelset"], 4.0)):
		if not (((absf(GM.room - 29.0) < 0.00001))):
			return
	if (((((((((absf(GM.room - 53.0) < 0.00001) or (absf(GM.room - 54.0) < 0.00001)) or (absf(GM.room - 58.0) < 0.00001)) or (absf(GM.room - 29.0) < 0.00001)) or (absf(GM.room - 19.0) < 0.00001)) or (absf(GM.room - 36.0) < 0.00001)) or (absf(GM.room - 60.0) < 0.00001)) or (absf(GM.room - 61.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 302.0))
func ev_draw():
	(GM.f_draw_set_font(1.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_sprite_ext(133.0, 0.0, (((GM.view_xview[0] + GM.view_wview[0]) - sprite_width) - 12.0), (GM.view_yview[0] + 12.0), 1.0, 1.0, 0.0, 16777215.0, 0.6))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_set_alpha(0.5))
	(GM.f_draw_text(((GM.view_xview[int(0.0)] + GM.view_wview[0]) - 120.0), (GM.view_yview[0] + 49.0), ("" + (GM.f_string(GM.room_caption)))))
	(GM.f_draw_text(((GM.view_xview[int(0.0)] + GM.view_wview[0]) - 179.0), (GM.view_yview[0] + 74.0), ("Par: " + (GM.f_string(GM.G["par"])))))
	if (GM.eq(GM.G["yourplayer"], 1.0)):
		(GM.f_draw_text(((GM.view_xview[int(0.0)] + GM.view_wview[0]) - 59.0), (GM.view_yview[0] + 74.0), ("Shot " + (GM.f_string(GM.G["player1shots"])))))
	if (GM.eq(GM.G["yourplayer"], 2.0)):
		(GM.f_draw_text(((GM.view_xview[int(0.0)] + GM.view_wview[0]) - 59.0), (GM.view_yview[0] + 74.0), ("Shot " + (GM.f_string(GM.G["player2shots"])))))
	if (GM.eq(GM.G["yourplayer"], 3.0)):
		(GM.f_draw_text(((GM.view_xview[int(0.0)] + GM.view_wview[0]) - 59.0), (GM.view_yview[0] + 74.0), ("Shot " + (GM.f_string(GM.G["player3shots"])))))
	if (GM.eq(GM.G["yourplayer"], 4.0)):
		(GM.f_draw_text(((GM.view_xview[int(0.0)] + GM.view_wview[0]) - 59.0), (GM.view_yview[0] + 74.0), ("Shot " + (GM.f_string(GM.G["player4shots"])))))
	if (GM.eq(GM.G["yourplayer"], 5.0)):
		(GM.f_draw_text(((GM.view_xview[int(0.0)] + GM.view_wview[0]) - 59.0), (GM.view_yview[0] + 74.0), ("Shot " + (GM.f_string(GM.G["player5shots"])))))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_halign(2.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 1004.0), (GM.view_yview[0] + 728.0), ("FPS: " + (GM.f_string(GM.fps)))))
func ev_keypress_87():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf((GM.f_window_get_fullscreen()) - 0.0) < 0.00001)):
			(GM.f_display_set_all(1024.0, 768.0, (-1.0), 32.0))
			(GM.f_window_set_fullscreen(1.0))
			(self.script_console_dll_refresh())
		else:
			if ((absf((GM.f_window_get_fullscreen()) - 1.0) < 0.00001)):
				(GM.f_display_reset())
				(GM.f_window_set_fullscreen(0.0))
				(GM.f_window_set_size(800.0, 600.0))
				(GM.f_window_center())
				(GM.f_window_set_showborder(1.0))
				(self.script_console_dll_refresh())
func ev_keypress_78():
	if (((((GM.f_keyboard_check(38.0))) >= 0.5 and ((GM.f_keyboard_check(40.0))) >= 0.5) and (absf((GM.f_instance_number(262.0)) - 0.0) < 0.00001))):
		GM.G["cheat"] = 1.0
		(GM.f_instance_create(x, y, 95.0))
func ev_keypress_77():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf(GM.G["musicon"] - 0.0) < 0.00001)):
			GM.G["musicon"] = 1.0
			(GM.f_sound_loop(10.0))
		else:
			if ((absf(GM.G["musicon"] - 1.0) < 0.00001)):
				GM.G["musicon"] = 0.0
				(GM.f_sound_stop(10.0))
func ev_keypress_32():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		(GM.f_sound_play(16.0))
		GM.view_object[int(0.0)] = 201.0
func ev_keypress_27():
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if (GM.eq(GM.G["yourplayer"], 1.0)):
			(GM.f_mplay_message_send(0.0, 105.0, 0.0))
		(GM.f_room_goto(31.0))
	if (((absf(GM.G["online"] - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(95.0)) - 0.0) < 0.00001))):
			(GM.f_room_goto(30.0))
