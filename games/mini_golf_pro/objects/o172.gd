extends "res://games/mini_golf_pro/objects/o170.gd"
var v_str = 0.0
var v_str2 = ""
func ev_alarm_0():
	pass
func ev_mouse_4():
	(GM.f_sound_play(16.0))
	(GM.f_message_background(5.0))
	(GM.f_message_button(178.0))
	(GM.f_mplay_session_end())
	(GM.f_mplay_end())
	var _s63 = ((await GM.f_show_message_ext("", "Host Game", "Join Game", "Cancel")))
	var _s63_m = false
	for _sw64 in range(1):
		if _s63_m or GM.eq(_s63, 1.0):
			_s63_m = true
		if _s63_m:
			GM.G["online"] = 1.0
			v_str = ""
			if GM.truth(((GM.f_mplay_init_tcpip(v_str)))):
				speed = 0.0
			else:
				(GM.f_mplay_end())
				await GM.f_show_message("Failed to initialize TCP/IP connection.")
			v_str2 = (await GM.f_get_string("Enter your player name. (10 char max)", ""))
			v_str2 = (GM.f_string_copy(v_str2, 0.0, 10.0))
			(GM.f_mplay_session_mode(1.0))
			if GM.truth(((GM.f_mplay_session_create(0.0, 5.0, v_str2)))):
				GM.G["yourplayer"] = 1.0
				self.ev_user(0.0)
			else:
				await GM.f_show_message("Failed to create a session.")
			break
		if _s63_m or GM.eq(_s63, 2.0):
			_s63_m = true
		if _s63_m:
			GM.G["online"] = 1.0
			v_str = (await GM.f_get_string("Give the address (or an empty string for local network).", ""))
			if GM.truth(((GM.f_mplay_init_tcpip(v_str)))):
				alarm[int(0.0)] = 1.0
			else:
				(GM.f_mplay_end())
				await GM.f_show_message("Failed to initialize TCP/IP connection.")
			if (((GM.f_mplay_session_find()) > 0.0)):
				v_str2 = (await GM.f_get_string("Enter your player name. (10 char max)", ""))
				v_str2 = (GM.f_string_copy(v_str2, 0.0, 10.0))
				if GM.truth(((GM.f_mplay_session_join(0.0, v_str2)))):
					GM.G["yourplayer"] = (GM.f_mplay_player_find())
					self.ev_user(0.0)
				else:
					await GM.f_show_message("Failed to join a session.")
			else:
				await GM.f_show_message("No session available to join.")
			break
		if _s63_m or GM.eq(_s63, 3.0):
			_s63_m = true
		if _s63_m:
			(GM.f_room_restart())
			break
func ev_other_10():
	(GM.f_room_goto(31.0))
func ev_draw():
	if ((absf(v_mouseonme - 0.0) < 0.00001)):
		(GM.f_draw_sprite(124.0, 0.0, x, y))
	else:
		(GM.f_draw_sprite_ext(124.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
