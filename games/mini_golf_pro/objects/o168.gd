extends "res://games/mini_golf_pro/scripts.gd"
var v_wow = 0.0
func ev_create():
	for _w25 in GM.with_list((241.0), self):
		if _w25._dead:
			continue
		_w25.other = self
		(GM.f_instance_destroy(_w25))
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	if ((absf(GM.room - 18.0) < 0.00001)):
		GM.G["hostchange"] = 0.0
		GM.G["player1in"] = 1.0
		GM.G["player2in"] = 1.0
		GM.G["player3in"] = 1.0
		GM.G["player4in"] = 1.0
		GM.G["player5in"] = 1.0
		GM.G["online"] = 0.0
		GM.G["yourplayer"] = 1.0
		GM.G["lag"] = 1.0
		GM.G["tempreg"] = 0.0
		GM.G["myname"] = ""
		GM.G["levelset"] = 1.0
		GM.G["collision"] = 2.0
		GM.G["minecheat"] = 0.0
	GM.G["cheat"] = 0.0
	GM.G["intro"] = 0.0
	GM.G["bonus"] = 0.0
	GM.G["shoot"] = 1.0
	GM.G["p1name"] = "Player 1"
	GM.G["p2name"] = "Player 2"
	GM.G["p3name"] = "Player 3"
	GM.G["p4name"] = "Player 4"
	GM.G["p5name"] = "Player 5"
	GM.G["player1shots"] = 0.0
	GM.G["player1score"] = 0.0
	GM.G["player2shots"] = 0.0
	GM.G["player2score"] = 0.0
	GM.G["player3shots"] = 0.0
	GM.G["player3score"] = 0.0
	GM.G["player4shots"] = 0.0
	GM.G["player4score"] = 0.0
	GM.G["player5shots"] = 0.0
	GM.G["player5score"] = 0.0
	(GM.f_sound_stop(35.0))
	GM.G["player1par"] = 0.0
	GM.G["player2par"] = 0.0
	GM.G["player3par"] = 0.0
	GM.G["player4par"] = 0.0
	GM.G["player5par"] = 0.0
	GM.G["holeon"] = 1.0
	GM.G["personsturn"] = 1.0
	GM.G["player1ready"] = 1.0
	GM.G["player2ready"] = 1.0
	GM.G["player3ready"] = 1.0
	GM.G["player4ready"] = 1.0
	GM.G["player5ready"] = 1.0
	GM.G["players"] = 1.0
	GM.G["scorehole1"] = 0.0
	GM.G["scorehole2"] = 0.0
	GM.G["scorehole3"] = 0.0
	GM.G["scorehole4"] = 0.0
	GM.G["scorehole5"] = 0.0
	GM.G["scorehole6"] = 0.0
	GM.G["scorehole7"] = 0.0
	GM.G["scorehole8"] = 0.0
	GM.G["scorehole9"] = 0.0
	GM.G["player1ball"] = 0.0
	GM.G["player2ball"] = 1.0
	GM.G["player3ball"] = 2.0
	GM.G["player4ball"] = 3.0
	GM.G["player5ball"] = 4.0
	(GM.f_sound_stop(4.0))
	(GM.f_sound_stop(7.0))
	(GM.f_sound_stop(11.0))
	(GM.f_sound_stop(14.0))
	(GM.f_sound_stop(15.0))
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(24.0))
	if (((absf(GM.G["musicon"] - 1.0) < 0.00001))):
		if (not ((((GM.f_sound_isplaying(21.0)))) >= 0.5)):
			(GM.f_sound_loop(21.0))
func ev_step():
	v_wow = (GM.f_floor((GM.f_random(15.999))))
	if ((v_wow < 5.0)):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 107.0))
	if ((absf(v_wow - 6.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 106.0))
func ev_keypress_84():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		(self.script_console_dll_openFileDialog("SC Map Files|*.scmap", GM.add(GM.vget(318.0, "v_directory"), "maps"), 0.0))
		if ((((GM.f_file_exists(GM.aget(GM.vget(318.0, "v_dll_array"), 0.0)))) >= 0.5 and (GM.aget(GM.vget(318.0, "v_dll_array"), 0.0) != ""))):
			(GM.f_mplay_message_send(0.0, 100.0, (GM.f_filename_name(GM.aget(GM.vget(318.0, "v_dll_array"), 0.0)))))
			(self.script_map_load(GM.aget(GM.vget(318.0, "v_dll_array"), 0.0)))
func ev_keypress_82():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		(GM.f_sound_play(16.0))
		(GM.f_registry_write_real("swissc_main3", 1.0))
		(self.script_resetgame())
func ev_keypress_77():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf(GM.G["musicon"] - 0.0) < 0.00001)):
			GM.G["musicon"] = 1.0
			(GM.f_sound_loop(21.0))
		else:
			if ((absf(GM.G["musicon"] - 1.0) < 0.00001)):
				GM.G["musicon"] = 0.0
				(GM.f_sound_stop(21.0))
func ev_keypress_27():
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if (GM.eq(GM.G["yourplayer"], 1.0)):
			(GM.f_mplay_message_send_guaranteed(0.0, 610.0, 0.0))
		if (GM.eq(GM.G["yourplayer"], 2.0)):
			(GM.f_mplay_message_send_guaranteed(0.0, 600.0, 0.0))
		if (GM.eq(GM.G["yourplayer"], 3.0)):
			(GM.f_mplay_message_send_guaranteed(0.0, 601.0, 0.0))
		if (GM.eq(GM.G["yourplayer"], 4.0)):
			(GM.f_mplay_message_send_guaranteed(0.0, 602.0, 0.0))
		(GM.f_mplay_message_send(0.0, 8.0, GM.add(GM.G["myname"], " left the game")))
		(GM.f_mplay_session_end())
		(GM.f_mplay_end())
		(GM.f_mplay_session_end())
		(GM.f_mplay_end())
	if (((absf(GM.room - 18.0) < 0.00001))):
		GM.G["intro"] = 1.0
		(GM.f_room_goto(52.0))
	else:
		(GM.f_room_goto(18.0))
