extends "res://gm/gm_inst.gd"
func script_sound_plays(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_sound_play(argument0))
	return 0.0
func script_sound_loops(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_sound_loop(argument0))
	return 0.0
func script_collisionss(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.eq(GM.G["collision"], 2.0) or (absf(GM.vget(self, "v_implayer") - 10.0) < 0.00001)) or (absf(GM.vget(self.other, "v_implayer") - 10.0) < 0.00001))):
		if ((absf(depth - GM.vb(self.other, "depth")) < 0.00001)):
			if ((id > GM.vb(self.other, "id"))):
				(GM.f_sound_play(0.0))
				GM.vset(self, "v_dir", (GM.f_point_direction(x, y, GM.vb(self.other, "x"), GM.vb(self.other, "y"))))
				GM.vset(self, "v_force", ((((((GM.f_lengthdir_x(1.0, GM.vget(self, "v_dir"))) * hspeed)) + (((GM.f_lengthdir_y(1.0, GM.vget(self, "v_dir"))) * vspeed)))) * GM.vget(self, "v_mass")))
				for _w65 in GM.with_list((self.other), self):
					if _w65._dead:
						continue
					_w65.other = self
					GM.vset(_w65, "v_dir", (GM.f_point_direction(_w65.x, _w65.y, GM.vb(_w65.other, "x"), GM.vb(_w65.other, "y"))))
					GM.vset(_w65, "v_force", ((((((GM.f_lengthdir_x(1.0, GM.vget(_w65, "v_dir"))) * _w65.hspeed)) + (((GM.f_lengthdir_y(1.0, GM.vget(_w65, "v_dir"))) * _w65.vspeed)))) * GM.vget(_w65, "v_mass")))
					(GM.f_motion_add(_w65, GM.vget(_w65, "v_dir"), ((-((GM.vget(_w65, "v_force") + GM.vget(_w65.other, "v_force")))) / GM.vget(_w65, "v_mass"))))
				(GM.f_motion_add(self, GM.vget(self, "v_dir"), ((-((GM.vget(self, "v_force") + GM.vget(self.other, "v_force")))) / GM.vget(self, "v_mass"))))
				while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
					x = x - (GM.f_lengthdir_x((1.0 / GM.vget(self, "v_mass")), GM.vget(self, "v_dir")))
					y = y - (GM.f_lengthdir_y((1.0 / GM.vget(self, "v_mass")), GM.vget(self, "v_dir")))
					for _w66 in GM.with_list((self.other), self):
						if _w66._dead:
							continue
						_w66.other = self
						_w66.x = _w66.x - (GM.f_lengthdir_x((1.0 / GM.vget(_w66, "v_mass")), GM.vget(_w66, "v_dir")))
						_w66.y = _w66.y - (GM.f_lengthdir_y((1.0 / GM.vget(_w66, "v_mass")), GM.vget(_w66, "v_dir")))
	return 0.0
func script_script_initlines(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.G["maxline"] = 4.0
	GM.vset(self, "v_i", 0.0)
	while (GM.vget(self, "v_i") < GM.G["maxline"]):
		GM.aset(GM.G["line"], GM.vget(self, "v_i"), "")
		GM.aset(GM.G["color"], GM.vget(self, "v_i"), 0.0)
		GM.vset(self, "v_i", GM.vget(self, "v_i") + 1.0)
	return 0.0
func script_script_addline(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_i", 0.0)
	while (GM.vget(self, "v_i") < (GM.G["maxline"] - 1.0)):
		GM.aset(GM.G["line"], GM.vget(self, "v_i"), GM.aget(GM.G["line"], (GM.vget(self, "v_i") + 1.0)))
		GM.aset(GM.G["color"], GM.vget(self, "v_i"), GM.aget(GM.G["color"], (GM.vget(self, "v_i") + 1.0)))
		GM.vset(self, "v_i", GM.vget(self, "v_i") + 1.0)
	GM.aset(GM.G["line"], (GM.G["maxline"] - 1.0), argument0)
	GM.aset(GM.G["color"], (GM.G["maxline"] - 1.0), argument1)
	return 0.0
func script_script_drawlines(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_xxx = 0.0
	var l_yyy = 0.0
	l_xxx = argument0
	l_yyy = argument1
	GM.vset(self, "v_i", 0.0)
	while (GM.vget(self, "v_i") < GM.G["maxline"]):
		(GM.f_draw_set_color(GM.aget(GM.G["color"], GM.vget(self, "v_i"))))
		(GM.f_draw_text(l_xxx, l_yyy, GM.aget(GM.G["line"], GM.vget(self, "v_i"))))
		if ((absf((GM.f_instance_number(148.0)) - 0.0) < 0.00001)):
			l_yyy = GM.add(l_yyy, 12.0)
		else:
			l_yyy = GM.add(l_yyy, 16.0)
		GM.vset(self, "v_i", GM.vget(self, "v_i") + 1.0)
	return 0.0
func script_nextturn(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.G["bonus"] - 0.0) < 0.00001)):
		GM.view_object[int(0.0)] = 201.0
		if ((GM.eq(GM.G["personsturn"], 1.0) and (absf((GM.f_instance_number(248.0)) - 1.0) < 0.00001))):
			GM.G["personsturn"] = 2.0
		else:
			if ((GM.eq(GM.G["personsturn"], 1.0) and (absf((GM.f_instance_number(249.0)) - 1.0) < 0.00001))):
				GM.G["personsturn"] = 3.0
			else:
				if ((GM.eq(GM.G["personsturn"], 1.0) and (absf((GM.f_instance_number(250.0)) - 1.0) < 0.00001))):
					GM.G["personsturn"] = 4.0
				else:
					if ((GM.eq(GM.G["personsturn"], 1.0) and (absf((GM.f_instance_number(251.0)) - 1.0) < 0.00001))):
						GM.G["personsturn"] = 5.0
					else:
						if ((GM.eq(GM.G["personsturn"], 2.0) and (absf((GM.f_instance_number(249.0)) - 1.0) < 0.00001))):
							GM.G["personsturn"] = 3.0
						else:
							if ((GM.eq(GM.G["personsturn"], 2.0) and (absf((GM.f_instance_number(250.0)) - 1.0) < 0.00001))):
								GM.G["personsturn"] = 4.0
							else:
								if ((GM.eq(GM.G["personsturn"], 2.0) and (absf((GM.f_instance_number(251.0)) - 1.0) < 0.00001))):
									GM.G["personsturn"] = 5.0
								else:
									if ((GM.eq(GM.G["personsturn"], 2.0) and (absf((GM.f_instance_number(243.0)) - 1.0) < 0.00001))):
										GM.G["personsturn"] = 1.0
									else:
										if ((GM.eq(GM.G["personsturn"], 3.0) and (absf((GM.f_instance_number(250.0)) - 1.0) < 0.00001))):
											GM.G["personsturn"] = 4.0
										else:
											if ((GM.eq(GM.G["personsturn"], 3.0) and (absf((GM.f_instance_number(251.0)) - 1.0) < 0.00001))):
												GM.G["personsturn"] = 5.0
											else:
												if ((GM.eq(GM.G["personsturn"], 3.0) and (absf((GM.f_instance_number(243.0)) - 1.0) < 0.00001))):
													GM.G["personsturn"] = 1.0
												else:
													if ((GM.eq(GM.G["personsturn"], 3.0) and (absf((GM.f_instance_number(248.0)) - 1.0) < 0.00001))):
														GM.G["personsturn"] = 2.0
													else:
														if ((GM.eq(GM.G["personsturn"], 4.0) and (absf((GM.f_instance_number(251.0)) - 1.0) < 0.00001))):
															GM.G["personsturn"] = 5.0
														else:
															if ((GM.eq(GM.G["personsturn"], 4.0) and (absf((GM.f_instance_number(243.0)) - 1.0) < 0.00001))):
																GM.G["personsturn"] = 1.0
															else:
																if ((GM.eq(GM.G["personsturn"], 4.0) and (absf((GM.f_instance_number(248.0)) - 1.0) < 0.00001))):
																	GM.G["personsturn"] = 2.0
																else:
																	if ((GM.eq(GM.G["personsturn"], 4.0) and (absf((GM.f_instance_number(249.0)) - 1.0) < 0.00001))):
																		GM.G["personsturn"] = 3.0
																	else:
																		if ((GM.eq(GM.G["personsturn"], 5.0) and (absf((GM.f_instance_number(243.0)) - 1.0) < 0.00001))):
																			GM.G["personsturn"] = 1.0
																		else:
																			if ((GM.eq(GM.G["personsturn"], 5.0) and (absf((GM.f_instance_number(248.0)) - 1.0) < 0.00001))):
																				GM.G["personsturn"] = 2.0
																			else:
																				if ((GM.eq(GM.G["personsturn"], 5.0) and (absf((GM.f_instance_number(249.0)) - 1.0) < 0.00001))):
																					GM.G["personsturn"] = 3.0
																				else:
																					if ((GM.eq(GM.G["personsturn"], 5.0) and (absf((GM.f_instance_number(250.0)) - 1.0) < 0.00001))):
																						GM.G["personsturn"] = 4.0
		if (GM.eq(GM.G["personsturn"], 1.0)):
			GM.vset(self, "v_pos", 243.0)
		if (GM.eq(GM.G["personsturn"], 2.0)):
			GM.vset(self, "v_pos", 248.0)
		if (GM.eq(GM.G["personsturn"], 3.0)):
			GM.vset(self, "v_pos", 249.0)
		if (GM.eq(GM.G["personsturn"], 4.0)):
			GM.vset(self, "v_pos", 250.0)
		if (GM.eq(GM.G["personsturn"], 5.0)):
			GM.vset(self, "v_pos", 251.0)
		GM.view_yview[0] = (GM.vb(GM.vget(self, "v_pos"), "y") - (768.0 / 2.0))
		if ((GM.view_yview[0] > (GM.room_height - 768.0))):
			GM.view_yview[0] = (GM.room_height - 768.0)
		if ((GM.view_yview[0] < 0.0)):
			GM.view_yview[0] = 0.0
		GM.view_xview[0] = (GM.vb(GM.vget(self, "v_pos"), "x") - (1024.0 / 2.0))
		if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
			GM.view_xview[0] = (GM.room_width - 1024.0)
		if ((GM.view_xview[0] < 0.0)):
			GM.view_xview[0] = 0.0
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if (((GM.eq(GM.G["yourplayer"], 1.0) and GM.eq(GM.G["personsturn"], 1.0)) and ((GM.f_instance_number(243.0)) > 0.0))):
				GM.vb(243.0, "alarm")[int(3.0)] = 1.0
			if (((GM.eq(GM.G["yourplayer"], 2.0) and GM.eq(GM.G["personsturn"], 2.0)) and ((GM.f_instance_number(248.0)) > 0.0))):
				GM.vb(248.0, "alarm")[int(3.0)] = 1.0
			if (((GM.eq(GM.G["yourplayer"], 3.0) and GM.eq(GM.G["personsturn"], 3.0)) and ((GM.f_instance_number(249.0)) > 0.0))):
				GM.vb(249.0, "alarm")[int(3.0)] = 1.0
			if (((GM.eq(GM.G["yourplayer"], 4.0) and GM.eq(GM.G["personsturn"], 4.0)) and ((GM.f_instance_number(250.0)) > 0.0))):
				GM.vb(250.0, "alarm")[int(3.0)] = 1.0
			if (((GM.eq(GM.G["yourplayer"], 5.0) and GM.eq(GM.G["personsturn"], 5.0)) and ((GM.f_instance_number(251.0)) > 0.0))):
				GM.vb(251.0, "alarm")[int(3.0)] = 1.0
	return 0.0
func script_crc16(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_i = 0.0
	var l_j = 0.0
	var l_crc = 0.0
	l_crc = 0.0
	l_i = 1.0
	while (l_i <= (GM.f_string_length(argument0))):
		l_crc = GM.bxor(l_crc, (GM.shl((GM.f_ord((GM.f_string_char_at(argument0, l_i)))), 8.0)))
		l_j = 0.0
		while (l_j < 8.0):
			if ((absf((GM.band(l_crc, 32768.0)) - 0.0) >= 0.00001)):
				l_crc = (GM.bxor((GM.shl(l_crc, 1.0)), 32773.0))
			else:
				l_crc = GM.shl(l_crc, 1.0)
			l_crc = GM.band(l_crc, 65535.0)
			l_j = GM.add(l_j, 1.0)
		l_i = GM.add(l_i, 1.0)
	return l_crc
	return 0.0
func script_dec_to_hex(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_dec", argument0)
	var l_hexval = 0.0
	var l_digits = 0.0
	l_hexval = ""
	l_digits = "0123456789ABCDEF"
	while ((GM.vget(self, "v_dec") > 0.0)):
		l_hexval = GM.add((GM.f_string_char_at(l_digits, ((GM.band(GM.vget(self, "v_dec"), 15.0)) + 1.0))), l_hexval)
		GM.vset(self, "v_dec", GM.shr(GM.vget(self, "v_dec"), 4.0))
	if ((l_hexval == "")):
		l_hexval = "0"
	return l_hexval
	return 0.0
func script_url_encode(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_str", argument0)
	var l_out = 0.0
	var l_i = 0.0
	l_out = ""
	l_i = 1.0
	while (l_i <= (GM.f_string_length(GM.vget(self, "v_str")))):
		l_out = GM.add(l_out, GM.add("%", (self.script_dec_to_hex((GM.f_ord((GM.f_string_char_at(GM.vget(self, "v_str"), l_i))))))))
		l_i = GM.add(l_i, 1.0)
	return l_out
	return 0.0
func script_submit_score(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_sc", argument0)
	GM.vset(self, "v_name", argument1)
	GM.vset(self, "v_sub", argument2)
	GM.vset(self, "v_game", "443689")
	GM.vset(self, "v_pwd", "slsl3")
	GM.vset(self, "v_url", "shawn64.com/highscores/submit.php")
	var l_auth_code = 0.0
	var l_glob = 0.0
	var l_url_string = 0.0
	l_glob = GM.add(GM.add(GM.add(GM.add((GM.f_string(GM.vget(self, "v_sc"))), GM.vget(self, "v_name")), GM.vget(self, "v_game")), GM.vget(self, "v_sub")), GM.vget(self, "v_pwd"))
	l_auth_code = (GM.f_string((self.script_crc16(l_glob))))
	l_url_string = GM.vget(self, "v_url")
	l_url_string = GM.add(l_url_string, ("?score=" + (GM.f_string(GM.vget(self, "v_sc")))))
	l_url_string = GM.add(l_url_string, GM.add("&player_name=", (self.script_url_encode(GM.vget(self, "v_name")))))
	l_url_string = GM.add(l_url_string, GM.add("&game_id=", GM.vget(self, "v_game")))
	l_url_string = GM.add(l_url_string, GM.add("&sub_id=", GM.vget(self, "v_sub")))
	l_url_string = GM.add(l_url_string, GM.add("&auth_code=", l_auth_code))
	(GM.f_execute_shell(GM.add("http://", l_url_string), ""))
	return 0.0
func script_resetgame(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if not ((((GM.f_registry_exists("swissc_main3")))) >= 0.5):
		(GM.f_registry_write_real("swissc_main3", 1.0))
	if ((absf((GM.f_registry_read_real("swissc_main3")) - 1.0) < 0.00001)):
		(GM.f_registry_write_real("swissc_main3", 0.0))
		(GM.f_registry_write_real("swissc_score1", 500.0))
		(GM.f_registry_write_real("swissc_score2", 500.0))
		(GM.f_registry_write_real("swissc_score3", 500.0))
		(GM.f_registry_write_real("swissc_score4", 500.0))
		(GM.f_registry_write_real("swissc_score5", 500.0))
		(GM.f_registry_write_real("swissc_score6", 500.0))
		(GM.f_registry_write_real("swissc_score7", 500.0))
		(GM.f_registry_write_real("swissc_score8", 500.0))
	GM.G["highscore1"] = (GM.f_registry_read_real("swissc_score1"))
	GM.G["highscore2"] = (GM.f_registry_read_real("swissc_score2"))
	GM.G["highscore3"] = (GM.f_registry_read_real("swissc_score3"))
	GM.G["highscore4"] = (GM.f_registry_read_real("swissc_score4"))
	GM.G["highscore5"] = (GM.f_registry_read_real("swissc_score5"))
	GM.G["highscore6"] = (GM.f_registry_read_real("swissc_score6"))
	GM.G["highscore7"] = (GM.f_registry_read_real("swissc_score7"))
	GM.G["highscore8"] = (GM.f_registry_read_real("swissc_score8"))
	GM.G["swisscreg"] = 1.0
	return 0.0
func script_spriteload(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_sprHandle = 0.0
	l_sprHandle = (GM.f_sprite_add(GM.add(GM.add(GM.working_directory, "\\Balls\\"), argument1), argument2, 1.0, 1.0, 1.0, 0.0, 12.0, 12.0))
	if ((((GM.f_sprite_exists(l_sprHandle))) >= 0.5 and (not GM.eq(l_sprHandle, 0.0)))):
		(GM.f_sprite_merge(argument0, l_sprHandle))
		(GM.f_sprite_delete(l_sprHandle))
		return 1.0
	return 0.0
	return 0.0
func script_receivemessage(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_messid", (GM.f_mplay_message_id()))
	GM.vset(self, "v_val", (GM.f_mplay_message_value()))
	if (GM.eq(GM.vget(self, "v_messid"), 7.0)):
		(self.script_script_addline(GM.add(GM.add((GM.f_mplay_message_name()), ": "), (GM.f_mplay_message_value())), 65535.0))
		(GM.f_sound_play(2.0))
	if (GM.eq(GM.vget(self, "v_messid"), 8.0)):
		(self.script_script_addline((GM.f_mplay_message_value()), 255.0))
		(GM.f_sound_play(2.0))
	if ((GM.eq(GM.vget(self, "v_messid"), 10.0) and ((GM.f_instance_number(243.0)) > 0.0))):
		GM.vsetb(243.0, "x", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 0.0)))))
		GM.vsetb(243.0, "y", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 1.0)))))
		GM.vsetb(243.0, "speed", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 2.0)))))
		GM.vsetb(243.0, "direction", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 3.0)))))
	if ((GM.eq(GM.vget(self, "v_messid"), 14.0) and ((GM.f_instance_number(248.0)) > 0.0))):
		GM.vsetb(248.0, "x", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 0.0)))))
		GM.vsetb(248.0, "y", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 1.0)))))
		GM.vsetb(248.0, "speed", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 2.0)))))
		GM.vsetb(248.0, "direction", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 3.0)))))
	if ((GM.eq(GM.vget(self, "v_messid"), 18.0) and ((GM.f_instance_number(249.0)) > 0.0))):
		GM.vsetb(249.0, "x", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 0.0)))))
		GM.vsetb(249.0, "y", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 1.0)))))
		GM.vsetb(249.0, "speed", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 2.0)))))
		GM.vsetb(249.0, "direction", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 3.0)))))
	if ((GM.eq(GM.vget(self, "v_messid"), 22.0) and ((GM.f_instance_number(250.0)) > 0.0))):
		GM.vsetb(250.0, "x", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 0.0)))))
		GM.vsetb(250.0, "y", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 1.0)))))
		GM.vsetb(250.0, "speed", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 2.0)))))
		GM.vsetb(250.0, "direction", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 3.0)))))
	if ((GM.eq(GM.vget(self, "v_messid"), 26.0) and ((GM.f_instance_number(251.0)) > 0.0))):
		GM.vsetb(251.0, "x", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 0.0)))))
		GM.vsetb(251.0, "y", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 1.0)))))
		GM.vsetb(251.0, "speed", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 2.0)))))
		GM.vsetb(251.0, "direction", (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 3.0)))))
	if (GM.eq(GM.vget(self, "v_messid"), 30.0)):
		GM.G["player1shots"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 31.0)):
		GM.G["player2shots"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 32.0)):
		GM.G["player3shots"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 33.0)):
		GM.G["player4shots"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 34.0)):
		GM.G["player5shots"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 40.0)):
		GM.G["p1xxx"] = GM.vget(self, "v_val")
		GM.view_object[int(0.0)] = 243.0
	if (GM.eq(GM.vget(self, "v_messid"), 41.0)):
		GM.G["p1yyy"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 42.0)):
		GM.G["p2xxx"] = GM.vget(self, "v_val")
		GM.view_object[int(0.0)] = 248.0
	if (GM.eq(GM.vget(self, "v_messid"), 43.0)):
		GM.G["p2yyy"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 44.0)):
		GM.G["p3xxx"] = GM.vget(self, "v_val")
		GM.view_object[int(0.0)] = 249.0
	if (GM.eq(GM.vget(self, "v_messid"), 45.0)):
		GM.G["p3yyy"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 46.0)):
		GM.G["p4xxx"] = GM.vget(self, "v_val")
		GM.view_object[int(0.0)] = 250.0
	if (GM.eq(GM.vget(self, "v_messid"), 47.0)):
		GM.G["p4yyy"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 48.0)):
		GM.G["p5xxx"] = GM.vget(self, "v_val")
		GM.view_object[int(0.0)] = 251.0
	if (GM.eq(GM.vget(self, "v_messid"), 49.0)):
		GM.G["p5yyy"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 50.0)):
		GM.G["p1hole"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 51.0)):
		GM.G["p2hole"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 52.0)):
		GM.G["p3hole"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 53.0)):
		GM.G["p4hole"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 54.0)):
		GM.G["p5hole"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 55.0)):
		GM.G["p1holetrans1"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 56.0)):
		GM.G["p2holetrans1"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 57.0)):
		GM.G["p3holetrans1"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 58.0)):
		GM.G["p4holetrans1"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 59.0)):
		GM.G["p5holetrans1"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 60.0)):
		GM.G["p1holetrans2"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 61.0)):
		GM.G["p2holetrans2"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 62.0)):
		GM.G["p3holetrans2"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 63.0)):
		GM.G["p4holetrans2"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 64.0)):
		GM.G["p5holetrans2"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 65.0)):
		GM.G["p1holetrans3"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 66.0)):
		GM.G["p2holetrans3"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 67.0)):
		GM.G["p3holetrans3"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 68.0)):
		GM.G["p4holetrans3"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 69.0)):
		GM.G["p5holetrans3"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 80.0)):
		if not ((GM.eq(GM.G["holeon"], GM.vget(self, "v_val")))):
			(self.script_donextlevel())
	if (GM.eq(GM.vget(self, "v_messid"), 81.0)):
		for _w67 in GM.with_list((243.0), self):
			if _w67._dead:
				continue
			_w67.other = self
			(GM.f_instance_destroy(_w67))
	if (GM.eq(GM.vget(self, "v_messid"), 82.0)):
		for _w68 in GM.with_list((248.0), self):
			if _w68._dead:
				continue
			_w68.other = self
			(GM.f_instance_destroy(_w68))
	if (GM.eq(GM.vget(self, "v_messid"), 83.0)):
		for _w69 in GM.with_list((249.0), self):
			if _w69._dead:
				continue
			_w69.other = self
			(GM.f_instance_destroy(_w69))
	if (GM.eq(GM.vget(self, "v_messid"), 84.0)):
		for _w70 in GM.with_list((250.0), self):
			if _w70._dead:
				continue
			_w70.other = self
			(GM.f_instance_destroy(_w70))
	if (GM.eq(GM.vget(self, "v_messid"), 85.0)):
		for _w71 in GM.with_list((251.0), self):
			if _w71._dead:
				continue
			_w71.other = self
			(GM.f_instance_destroy(_w71))
	if (GM.eq(GM.vget(self, "v_messid"), 700.0)):
		GM.G["p1name"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 701.0)):
		GM.G["p2name"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 702.0)):
		GM.G["p3name"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 703.0)):
		GM.G["p4name"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 704.0)):
		GM.G["p5name"] = GM.vget(self, "v_val")
	if (GM.eq(GM.vget(self, "v_messid"), 929.0)):
		(self.script_restartroom())
	if (GM.eq(GM.vget(self, "v_messid"), 35.0)):
		GM.view_object[int(0.0)] = 201.0
		GM.G["personsturn"] = GM.vget(self, "v_val")
		GM.vset(self, "v_pos", 148.0)
		if ((GM.eq(GM.G["personsturn"], 1.0) and (absf((GM.f_instance_number(243.0)) - 1.0) < 0.00001))):
			GM.vset(self, "v_pos", 243.0)
		if ((GM.eq(GM.G["personsturn"], 2.0) and (absf((GM.f_instance_number(248.0)) - 1.0) < 0.00001))):
			GM.vset(self, "v_pos", 248.0)
		if ((GM.eq(GM.G["personsturn"], 3.0) and (absf((GM.f_instance_number(249.0)) - 1.0) < 0.00001))):
			GM.vset(self, "v_pos", 249.0)
		if ((GM.eq(GM.G["personsturn"], 4.0) and (absf((GM.f_instance_number(250.0)) - 1.0) < 0.00001))):
			GM.vset(self, "v_pos", 250.0)
		if ((GM.eq(GM.G["personsturn"], 5.0) and (absf((GM.f_instance_number(251.0)) - 1.0) < 0.00001))):
			GM.vset(self, "v_pos", 251.0)
		GM.view_xview[0] = (GM.vb(GM.vget(self, "v_pos"), "x") - (1024.0 / 2.0))
		GM.view_yview[0] = (GM.vb(GM.vget(self, "v_pos"), "y") - (768.0 / 2.0))
		if ((GM.view_yview[0] > (GM.room_height - 768.0))):
			GM.view_yview[0] = (GM.room_height - 768.0)
		if ((GM.view_yview[0] < 0.0)):
			GM.view_yview[0] = 0.0
		if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
			GM.view_xview[0] = (GM.room_width - 1024.0)
		if ((GM.view_xview[0] < 0.0)):
			GM.view_xview[0] = 0.0
	if (GM.eq(GM.vget(self, "v_messid"), 301.0)):
		GM.vset(42.0, "v_wee", GM.vget(self, "v_val"))
		GM.vset(104.0, "v_wee", GM.vget(self, "v_val"))
	if (GM.eq(GM.vget(self, "v_messid"), 401.0)):
		GM.G["player1ready"] = 0.0
		if ((GM.G["players"] >= 2.0)):
			GM.G["player2ready"] = 0.0
		if ((GM.G["players"] >= 3.0)):
			GM.G["player3ready"] = 0.0
		if ((GM.G["players"] >= 4.0)):
			GM.G["player4ready"] = 0.0
		if ((GM.G["players"] >= 5.0)):
			GM.G["player5ready"] = 0.0
	if (GM.eq(GM.vget(self, "v_messid"), 600.0)):
		if (GM.eq(GM.G["yourplayer"], 3.0)):
			GM.G["yourplayer"] = 2.0
		if (GM.eq(GM.G["yourplayer"], 4.0)):
			GM.G["yourplayer"] = 3.0
		if (GM.eq(GM.G["yourplayer"], 5.0)):
			GM.G["yourplayer"] = 4.0
	if (GM.eq(GM.vget(self, "v_messid"), 601.0)):
		if (GM.eq(GM.G["yourplayer"], 4.0)):
			GM.G["yourplayer"] = 3.0
		if (GM.eq(GM.G["yourplayer"], 5.0)):
			GM.G["yourplayer"] = 4.0
	if (GM.eq(GM.vget(self, "v_messid"), 610.0)):
		if (GM.eq(GM.G["yourplayer"], 2.0)):
			GM.G["yourplayer"] = 1.0
		if (GM.eq(GM.G["yourplayer"], 3.0)):
			GM.G["yourplayer"] = 2.0
		if (GM.eq(GM.G["yourplayer"], 4.0)):
			GM.G["yourplayer"] = 3.0
		if (GM.eq(GM.G["yourplayer"], 5.0)):
			GM.G["yourplayer"] = 4.0
	if (GM.eq(GM.vget(self, "v_messid"), 602.0)):
		if (GM.eq(GM.G["yourplayer"], 5.0)):
			GM.G["yourplayer"] = 4.0
	if (GM.eq(GM.vget(self, "v_messid"), 603.0)):
		(GM.f_instance_create((GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 0.0)))), (GM.f_real((self.script_multgo(GM.vget(self, "v_val"), 1.0)))), 301.0))
	if (GM.eq(GM.vget(self, "v_messid"), 605.0)):
		(GM.f_instance_create(x, y, 208.0))
	if (GM.eq(GM.vget(self, "v_messid"), 606.0)):
		(GM.f_instance_create(x, y, 252.0))
	if (GM.eq(GM.vget(self, "v_messid"), 607.0)):
		(GM.f_instance_create(x, y, 253.0))
	if (GM.eq(GM.vget(self, "v_messid"), 608.0)):
		(GM.f_instance_create(x, y, 254.0))
	if (GM.eq(GM.vget(self, "v_messid"), 609.0)):
		(GM.f_instance_create(x, y, 255.0))
	if (GM.eq(GM.vget(self, "v_messid"), 402.0)):
		GM.G["player1ready"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 403.0)):
		GM.G["player2ready"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 404.0)):
		GM.G["player3ready"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 405.0)):
		GM.G["player4ready"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 406.0)):
		GM.G["player5ready"] = 1.0
	if (GM.eq(GM.vget(self, "v_messid"), 105.0)):
		(GM.f_room_goto(31.0))
	if (GM.eq(GM.vget(self, "v_messid"), 302.0)):
		GM.vset(146.0, "v_wee", GM.vget(self, "v_val"))
	if (GM.eq(GM.vget(self, "v_messid"), 303.0)):
		GM.vset(204.0, "v_wee", GM.vget(self, "v_val"))
	if (GM.eq(GM.vget(self, "v_messid"), 304.0)):
		GM.vsetb(213.0, "x", GM.vget(self, "v_val"))
	if (GM.eq(GM.vget(self, "v_messid"), 305.0)):
		GM.vsetb(213.0, "hspeed", GM.vget(self, "v_val"))
	if (GM.eq(GM.vget(self, "v_messid"), 550.0)):
		(GM.f_sound_play(47.0))
	if (GM.eq(GM.vget(self, "v_messid"), 551.0)):
		(GM.f_sound_play(48.0))
	if (GM.eq(GM.vget(self, "v_messid"), 552.0)):
		(GM.f_sound_play(49.0))
	if (GM.eq(GM.vget(self, "v_messid"), 553.0)):
		(GM.f_sound_play(50.0))
	if (GM.eq(GM.vget(self, "v_messid"), 554.0)):
		(GM.f_sound_play(51.0))
	if (GM.eq(GM.vget(self, "v_messid"), 556.0)):
		(GM.f_sound_play(52.0))
	if (GM.eq(GM.vget(self, "v_messid"), 557.0)):
		(GM.f_sound_play(53.0))
	if (GM.eq(GM.vget(self, "v_messid"), 558.0)):
		(GM.f_sound_play(54.0))
	if (GM.eq(GM.vget(self, "v_messid"), 559.0)):
		(GM.f_sound_play(55.0))
	if (GM.eq(GM.vget(self, "v_messid"), 555.0)):
		GM.vset(self, "v_wee3", (GM.f_instance_create(x, y, 237.0)))
		GM.vset(GM.vget(self, "v_wee3"), "v_showtext", GM.vget(self, "v_val"))
		(GM.f_sound_play(36.0))
	return 0.0
func script_donextlevel(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf((GM.f_instance_number(95.0)) - 0.0) < 0.00001)):
		for _w72 in GM.with_list((243.0), self):
			if _w72._dead:
				continue
			_w72.other = self
			(GM.f_instance_destroy(_w72))
		for _w73 in GM.with_list((248.0), self):
			if _w73._dead:
				continue
			_w73.other = self
			(GM.f_instance_destroy(_w73))
		for _w74 in GM.with_list((249.0), self):
			if _w74._dead:
				continue
			_w74.other = self
			(GM.f_instance_destroy(_w74))
		for _w75 in GM.with_list((250.0), self):
			if _w75._dead:
				continue
			_w75.other = self
			(GM.f_instance_destroy(_w75))
		for _w76 in GM.with_list((251.0), self):
			if _w76._dead:
				continue
			_w76.other = self
			(GM.f_instance_destroy(_w76))
		(GM.f_instance_create(0.0, 0.0, 95.0))
	return 0.0
func script_restartroom(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.G["player1ready"] = 1.0
	GM.G["player2ready"] = 1.0
	GM.G["player3ready"] = 1.0
	GM.G["player4ready"] = 1.0
	GM.G["player5ready"] = 1.0
	GM.G["player1shots"] = 0.0
	GM.G["player2shots"] = 0.0
	GM.G["player3shots"] = 0.0
	GM.G["player4shots"] = 0.0
	GM.G["player5shots"] = 0.0
	GM.G["personsturn"] = 1.0
	(GM.f_sound_play(13.0))
	(GM.f_room_restart())
	return 0.0
func script_multgo(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_count = 0.0
	l_count = 0.0
	argument0 = GM.add(argument0, "|")
	while ((l_count < argument1)):
		argument0 = (GM.f_string_delete(argument0, 1.0, (GM.f_string_pos("|", argument0))))
		l_count = GM.add(l_count, 1.0)
	return (GM.f_string_delete(argument0, (GM.f_string_pos("|", argument0)), (GM.f_string_length(argument0))))
	return 0.0
func script_effectss(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.G["effects"] - 0.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return 0.0
	return 0.0
func script_map_load(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SC Map Files|*.*", "*.scmap"))
	if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
		return 0.0
	if (((self.script_console_map_properties(argument0)))) >= 0.5:
		if ((GM.aget(GM.vget(318.0, "v_array"), 4.0) == "s64golf")):
			(self.script_console_map_size(argument0))
			if ((GM.aget(GM.vget(318.0, "v_array"), 0.0) < 1024.0)):
				GM.aset(GM.vget(318.0, "v_array"), 0.0, 1024.0)
			if ((GM.aget(GM.vget(318.0, "v_array"), 1.0) < 768.0)):
				GM.aset(GM.vget(318.0, "v_array"), 1.0, 768.0)
			(GM.f_room_set_width(65.0, GM.aget(GM.vget(318.0, "v_array"), 0.0)))
			(GM.f_room_set_height(65.0, GM.aget(GM.vget(318.0, "v_array"), 1.0)))
			GM.aset(GM.vget(318.0, "v_array"), 0.0, argument0)
			(GM.f_room_goto(65.0))
	return 0.0
func script_map_designer(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	for _w77 in GM.with_list((271.0), self):
		if _w77._dead:
			continue
		_w77.other = self
		_w77.visible = 0.0
	(self.script_console_map_designer("s64golf"))
	return 0.0
func script_N_Menu_AddItem(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_string(argument2)) == (GM.f_string(0.0)))):
		return (GM.f_external_call(GM.G["_N_Menu_AddItem"], argument0, (GM.f_string(argument1))))
	else:
		return (GM.f_external_call(GM.G["_N_Menu_AddItem"], argument0, (((GM.f_string(argument1)) + (GM.f_chr(9.0))) + (GM.f_string(argument2)))))
	return 0.0
func script_N_Menu_AddMenu(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_AddMenu"], argument0, argument1, argument2))
	return 0.0
func script_N_Menu_AddSeparator(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_AddSeparator"], argument0))
	return 0.0
func script_N_Menu_AttachMenuBar(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_AttachMenuBar"], argument0, argument1))
	return 0.0
func script_N_Menu_CheckMenus(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_CheckMenus"]))
	return 0.0
func script_N_Menu_CleanUp(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_external_call(GM.G["_N_Menu_CleanUp"]))
	(GM.f_external_free(GM.G["_N_Menu_Dll"]))
	return 0.0
func script_N_Menu_CreateMenuBar(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_CreateMenuBar"]))
	return 0.0
func script_N_Menu_CreatePopupMenu(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_CreatePopupMenu"]))
	return 0.0
func script_N_Menu_CreateToolWindow(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_external_call(GM.G["_N_Menu_CreateToolWindow1"], argument0, argument1, argument2, argument3))
	return (GM.f_external_call(GM.G["_N_Menu_CreateToolWindow2"], argument4, argument5))
	return 0.0
func script_N_Menu_DestroyBitmap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_DestroyBitmap"], argument0))
	return 0.0
func script_N_Menu_DestroyMenu(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_DestroyMenu"], argument0))
	return 0.0
func script_N_Menu_DestroyToolWindow(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_DestroyToolWindow"], argument0))
	return 0.0
func script_N_Menu_GetMenuBarHeight(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_GetMenuBarHeight"]))
	return 0.0
func script_N_Menu_GetToolWindowDragStyle(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_GetToolWindowDragStyle"], argument0))
	return 0.0
func script_N_Menu_Init(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.G["_N_Menu_Dll"] = GM.add(GM.vget(318.0, "v_directory"), "N_Menu.dll")
	GM.G["_N_Menu_AddItem"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_AddItem", 0.0, 0.0, 2.0, 0.0, 1.0))
	GM.G["_N_Menu_AddMenu"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_AddMenu", 0.0, 0.0, 3.0, 0.0, 0.0, 1.0))
	GM.G["_N_Menu_AddSeparator"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_AddSeparator", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_AttachMenuBar"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_AttachMenuBar", 0.0, 0.0, 2.0, 0.0, 0.0))
	GM.G["_N_Menu_CheckMenus"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_CheckMenus", 0.0, 0.0, 0.0))
	GM.G["_N_Menu_CleanUp"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_CleanUp", 0.0, 0.0, 0.0))
	GM.G["_N_Menu_CreateMenuBar"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_CreateMenuBar", 0.0, 0.0, 0.0))
	GM.G["_N_Menu_CreatePopupMenu"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_CreatePopupMenu", 0.0, 0.0, 0.0))
	GM.G["_N_Menu_CreateToolWindow1"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_CreateToolWindow1", 0.0, 0.0, 4.0, 1.0, 0.0, 0.0, 0.0))
	GM.G["_N_Menu_CreateToolWindow2"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_CreateToolWindow2", 0.0, 0.0, 2.0, 0.0, 0.0))
	GM.G["_N_Menu_DestroyMenu"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_DestroyMenu", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_DestroyBitmap"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_DestroyBitmap", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_DestroyToolWindow"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_DestroyToolWindow", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_GetMenuBarHeight"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_GetMenuBarHeight", 0.0, 0.0, 0.0))
	GM.G["_N_Menu_GetToolWindowDragStyle"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_GetToolWindowDragStyle", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_Init"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_Init", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_ItemGetChecked"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemGetChecked", 0.0, 0.0, 2.0, 0.0, 0.0))
	GM.G["_N_Menu_ItemGetDefault"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemGetDefault", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_ItemGetDisabled"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemGetDisabled", 0.0, 0.0, 2.0, 0.0, 0.0))
	GM.G["_N_Menu_ItemGetText"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemGetText", 0.0, 1.0, 2.0, 0.0, 0.0))
	GM.G["_N_Menu_ItemSetChecked"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemSetChecked", 0.0, 0.0, 3.0, 0.0, 0.0, 0.0))
	GM.G["_N_Menu_ItemSetDefault"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemSetDefault", 0.0, 0.0, 2.0, 0.0, 0.0))
	GM.G["_N_Menu_ItemSetDisabled"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemSetDisabled", 0.0, 0.0, 3.0, 0.0, 0.0, 0.0))
	GM.G["_N_Menu_ItemSetText"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ItemSetText", 0.0, 1.0, 3.0, 0.0, 0.0, 1.0))
	GM.G["_N_Menu_LoadBitmap"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_LoadBitmap", 0.0, 0.0, 1.0, 1.0))
	GM.G["_N_Menu_RemoveItem"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_RemoveItem", 0.0, 0.0, 2.0, 0.0, 0.0))
	GM.G["_N_Menu_SetItemBitmap"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_SetItemBitmap", 0.0, 0.0, 3.0, 0.0, 0.0, 0.0))
	GM.G["_N_Menu_SetGmWindowHandle"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_SetGmWindowHandle", 0.0, 0.0, 1.0, 0.0))
	GM.G["_N_Menu_ShowPopupMenu"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_ShowPopupMenu", 0.0, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0))
	GM.G["_N_Menu_SetToolWindowDragStyle"] = (GM.f_external_define(GM.G["_N_Menu_Dll"], "N_Menu_SetToolWindowDragStyle", 0.0, 0.0, 2.0, 0.0, 0.0))
	return (GM.f_external_call(GM.G["_N_Menu_Init"], (GM.f_window_handle())))
	return 0.0
func script_N_Menu_ItemGetChecked(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemGetChecked"], argument0, argument1))
	return 0.0
func script_N_Menu_ItemGetDefault(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemGetDefault"], argument0))
	return 0.0
func script_N_Menu_ItemGetDisabled(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemGetDisabled"], argument0, argument1))
	return 0.0
func script_N_Menu_ItemGetText(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemGetText"], argument0, argument1))
	return 0.0
func script_N_Menu_ItemSetChecked(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemSetChecked"], argument0, argument1, argument2))
	return 0.0
func script_N_Menu_ItemSetDefault(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemSetDefault"], argument0, argument1))
	return 0.0
func script_N_Menu_ItemSetDisabled(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemSetDisabled"], argument0, argument1, argument2))
	return 0.0
func script_N_Menu_ItemSetText(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ItemSetText"], argument0, argument1, argument2))
	return 0.0
func script_N_Menu_LoadBitmap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_LoadBitmap"], argument0))
	return 0.0
func script_N_Menu_RemoveItem(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_RemoveItem"], argument0, argument1))
	return 0.0
func script_N_Menu_SetGmWindowHandle(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_SetGmWindowHandle"], argument0))
	return 0.0
func script_N_Menu_SetItemBitmap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_SetItemBitmap"], argument0, argument1, argument2))
	return 0.0
func script_N_Menu_ShowPopupMenu(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_ShowPopupMenu"], argument0, argument1, argument2, argument3, argument4))
	return 0.0
func script_N_Menu_SetToolWindowDragStyle(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.G["_N_Menu_SetToolWindowDragStyle"], argument0, argument1))
	return 0.0
func script_cc(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_commands())
	return 0.0
func script_cd(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_display())
	return 0.0
func script_cdc(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_dll_commands())
	return 0.0
func script_ce(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_error())
	return 0.0
func script_cec(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_error_clear())
	return 0.0
func script_ch(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_help(argument0))
	return 0.0
func script_cl(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_log(argument0, argument1))
	return 0.0
func script_cls(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_clear())
	return 0.0
func script_cr(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_run(argument0))
	return 0.0
func script_crf(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_run_file(argument0))
	return 0.0
func script_crp(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_run_program(argument0, argument1, argument2))
	return 0.0
func script_cs(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_step())
	return 0.0
func script_csa(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_step_add(argument0))
	return 0.0
func script_csc(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_step_clear())
	return 0.0
func script_cse(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_step_edit(argument0, argument1))
	return 0.0
func script_csr(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (self.script_console_step_remove(argument0))
	return 0.0
func script_console_dll_about(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_about")))
	return 0.0
func script_console_dll_commands(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(self.script_console_log("Console DLL Commands"))
	(self.script_console_log("Use console_help() for information on each command"))
	var l_array = 0.0
	var l_countMain = 0.0
	var l_count = 0.0
	var l_t = 0.0
	var l_name = 0.0
	var l_line = 0.0
	l_t = 0.0
	GM.aset(l_array, l_t, "console_dll_about")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_commands")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_getDialog")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_getFileDrop")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_init")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_messageBox")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_mouseWheel")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_openFileDialog")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_pack")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_setDragAccept")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_systemParametersInfo")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_systrayGetInput")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_systrayLoadIcon")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_systrayNotify")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_systraySetToolTip")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_unpack")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowExists")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowFind")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowGetClassName")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowGetForeground")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowMinimized")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowProcedure")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowSetForeground")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowSetPos")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_windowShow")
	l_t = GM.add(l_t, 1.0)
	l_countMain = 0.0
	l_line = 3.0
	while ((l_countMain < l_t)):
		l_count = 0.0
		l_name = ""
		while (((l_count < l_line) and (l_countMain < l_t))):
			l_name = GM.add(l_name, GM.add(GM.aget(l_array, l_countMain), "(); "))
			l_count = GM.add(l_count, 1.0)
			l_countMain = GM.add(l_countMain, 1.0)
		if ((l_name != "")):
			(self.script_console_log(l_name, 7.0))
	return 0.0
	return 0.0
func script_console_dll_getDialog(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_getDialog"), (GM.f_window_handle()), argument0, argument1, argument2))
	return 0.0
func script_console_dll_getFileDrop(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_drop = 0.0
	l_drop = (GM.f_external_call(GM.vget(318.0, "v_dll_getFileDrop")))
	if ((l_drop != "")):
		var l_count = 0.0
		var l_fileTotal = 0.0
		l_fileTotal = (GM.f_string_count("|", l_drop))
		l_count = 0.0
		while ((l_count < l_fileTotal)):
			GM.aset(GM.vget(318.0, "v_dll_array"), l_count, (GM.f_string_copy(l_drop, 1.0, ((GM.f_string_pos("|", l_drop)) - 1.0))))
			l_drop = (GM.f_string_delete(l_drop, 1.0, (GM.f_string_pos("|", l_drop))))
			l_count = GM.add(l_count, 1.0)
		GM.aset(GM.vget(318.0, "v_dll_array"), l_count, (GM.f_string_copy(l_drop, 1.0, ((GM.f_string_length(l_drop)) + 1.0))))
		return (GM.add(l_fileTotal, 1.0))
	else:
		return 0.0
	return 0.0
func script_console_dll_init(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_dll = 0.0
	l_dll = GM.add(GM.vget(318.0, "v_directory"), "SCconsole.dll")
	if (not (((GM.f_file_exists(l_dll))) >= 0.5)):
		return 0.0
	GM.vset(318.0, "v_dll", l_dll)
	GM.vset(318.0, "v_dll_init", (GM.f_external_define(l_dll, "init", 0.0, 0.0, 3.0, 0.0, 1.0, 1.0)))
	GM.vset(318.0, "v_dll_refresh", (GM.f_external_define(l_dll, "refresh", 0.0, 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_windowProcedure", (GM.f_external_define(l_dll, "windowProcedure", 0.0, 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_windowFind", (GM.f_external_define(l_dll, "windowFind", 0.0, 0.0, 2.0, 1.0, 1.0)))
	GM.vset(318.0, "v_dll_windowMinimized", (GM.f_external_define(l_dll, "windowMinimized", 0.0, 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_windowShow", (GM.f_external_define(l_dll, "windowShow", 0.0, 0.0, 2.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_windowSetPos", (GM.f_external_define(l_dll, "windowSetPos", 0.0, 0.0, 7.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_windowGetClassName", (GM.f_external_define(l_dll, "windowGetClassName", 0.0, 1.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_windowSetForeground", (GM.f_external_define(l_dll, "windowSetForeground", 0.0, 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_windowGetForeground", (GM.f_external_define(l_dll, "windowGetForeground", 0.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_windowSetText", (GM.f_external_define(l_dll, "windowSetText", 0.0, 0.0, 2.0, 0.0, 1.0)))
	GM.vset(318.0, "v_dll_windowExists", (GM.f_external_define(l_dll, "windowExists", 0.0, 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_openFileDialog", (GM.f_external_define(l_dll, "openFileDialog", 0.0, 1.0, 4.0, 1.0, 1.0, 0.0, 1.0)))
	GM.vset(318.0, "v_dll_pack", (GM.f_external_define(l_dll, "pack", 0.0, 0.0, 2.0, 1.0, 1.0)))
	GM.vset(318.0, "v_dll_unpack", (GM.f_external_define(l_dll, "unpack", 0.0, 0.0, 4.0, 1.0, 1.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_setDragAccept", (GM.f_external_define(l_dll, "setDragAccept", 0.0, 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_getFileDrop", (GM.f_external_define(l_dll, "getFileDrop", 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_mouseWheel", (GM.f_external_define(l_dll, "mouseWheel", 0.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_messageBox", (GM.f_external_define(l_dll, "messageBox", 0.0, 0.0, 4.0, 1.0, 1.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_systrayLoadIcon", (GM.f_external_define(l_dll, "systrayLoadIcon", 0.0, 0.0, 1.0, 1.0)))
	GM.vset(318.0, "v_dll_systraySetToolTip", (GM.f_external_define(l_dll, "systraySetToolTip", 0.0, 0.0, 1.0, 1.0)))
	GM.vset(318.0, "v_dll_systrayNotify", (GM.f_external_define(l_dll, "systrayNotify", 0.0, 0.0, 1.0, 0.0)))
	GM.vset(318.0, "v_dll_systrayGetInput", (GM.f_external_define(l_dll, "systrayGetInput", 0.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_systemParametersInfo", (GM.f_external_define(l_dll, "systemParametersInfo", 0.0, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_about", (GM.f_external_define(l_dll, "about", 0.0, 0.0, 0.0)))
	GM.vset(318.0, "v_dll_killProcess", (GM.f_external_define(l_dll, "KillProcess", 0.0, 0.0, 1.0, 1.0)))
	GM.vset(318.0, "v_dll_getDialog", (GM.f_external_define(l_dll, "DialogGetString", 0.0, 1.0, 4.0, 0.0, 1.0, 1.0, 1.0)))
	GM.vset(318.0, "v_dll_use", 1.0)
	GM.vset(318.0, "v_windowHandleAlt", (GM.f_external_call(GM.vget(318.0, "v_dll_init"), (GM.f_window_handle()), (GM.f_filename_change_ext((GM.f_filename_name((GM.f_parameter_string(0.0)))), "")), (GM.f_filename_name(l_dll)))))
	return GM.vget(318.0, "v_windowHandleAlt")
	return 0.0
func script_console_dll_killProcess(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_killProcess"), argument0))
	return 0.0
func script_console_dll_messageBox(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_messageBox"), argument0, argument1, argument2, argument3))
	return 0.0
func script_console_dll_mouseWheel(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_mouseWheel")))
	return 0.0
func script_console_dll_openFileDialog(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_fileRet = 0.0
	l_fileRet = (GM.f_external_call(GM.vget(318.0, "v_dll_openFileDialog"), GM.add(argument0, "|"), argument1, argument2, ""))
	if (((GM.f_string_count("|", l_fileRet)) > 1.0)):
		var l_fileDir = 0.0
		var l_fileTotal = 0.0
		var l_count = 0.0
		l_fileDir = GM.add((GM.f_filename_dir((GM.f_string_replace(l_fileRet, "|", "\\")))), "\\")
		l_fileRet = (GM.f_string_delete(l_fileRet, (GM.f_string_length(l_fileRet)), 1.0))
		l_fileTotal = (GM.f_string_count("|", l_fileRet))
		l_count = 0.0
		while ((l_count < l_fileTotal)):
			l_fileRet = (GM.f_string_delete(l_fileRet, 1.0, (GM.f_string_pos("|", l_fileRet))))
			GM.aset(GM.vget(318.0, "v_dll_array"), l_count, GM.add(l_fileDir, (GM.f_string_delete(l_fileRet, (GM.f_string_pos("|", l_fileRet)), ((GM.f_string_length(l_fileRet)) + 1.0)))))
			l_count = GM.add(l_count, 1.0)
		return l_fileTotal
	else:
		if ((l_fileRet != "")):
			if ((absf((GM.f_string_count("|", l_fileRet)) - 1.0) < 0.00001)):
				l_fileRet = (GM.f_string_delete(l_fileRet, (GM.f_string_length(l_fileRet)), 1.0))
			GM.aset(GM.vget(318.0, "v_dll_array"), 0.0, l_fileRet)
			return 1.0
	return 0.0
	return 0.0
func script_console_dll_pack(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_pack"), argument0, argument1))
	var l_ifp = 0.0
	var l_ofp = 0.0
	var l_loc = 0.0
	var l_size = 0.0
	l_ifp = (GM.f_file_bin_open(argument0, 0.0))
	l_ofp = (GM.f_file_bin_open(argument1, 1.0))
	(GM.f_file_bin_seek(l_ofp, (GM.f_file_bin_size(l_ofp))))
	l_loc = 0.0
	l_size = (GM.f_file_bin_size(l_ifp))
	while ((l_loc < l_size)):
		(GM.f_file_bin_write_byte(l_ofp, (GM.f_file_bin_read_byte(l_ifp))))
		l_loc = GM.add(l_loc, 1.0)
	(GM.f_file_bin_close(l_ofp))
	(GM.f_file_bin_close(l_ifp))
	return l_size
	return 0.0
func script_console_dll_setDragAccept(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_setDragAccept"), argument0))
	return 0.0
func script_console_dll_systemParametersInfo(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_systemParametersInfo"), argument0, argument1, argument2, argument3, argument4))
	return 0.0
func script_console_dll_systrayGetInput(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_systrayGetInput")))
	return 0.0
func script_console_dll_systrayLoadIcon(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_define(GM.vget(318.0, "v_dll_systrayLoadIcon"), argument0))
	return 0.0
func script_console_dll_systrayNotify(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_systrayNotify"), argument0))
	return 0.0
func script_console_dll_systraySetToolTip(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_systraySetToolTip"), argument0))
	return 0.0
func script_console_dll_unpack(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_unpack"), argument0, argument1, argument2, argument3))
	var l_ifp = 0.0
	var l_ofp = 0.0
	var l_loc = 0.0
	l_loc = 0.0
	if (not (((GM.f_file_exists(argument1))) >= 0.5)):
		l_ofp = (GM.f_file_text_open_write(argument1))
		(GM.f_file_text_close(l_ofp))
	l_ifp = (GM.f_file_bin_open(argument0, 0.0))
	l_ofp = (GM.f_file_bin_open(argument1, 1.0))
	(GM.f_file_bin_seek(l_ifp, argument2))
	while ((l_loc < argument3)):
		(GM.f_file_bin_write_byte(l_ofp, (GM.f_file_bin_read_byte(l_ifp))))
		l_loc = GM.add(l_loc, 1.0)
	(GM.f_file_bin_close(l_ifp))
	(GM.f_file_bin_close(l_ofp))
	return GM.add(l_loc, argument2)
	return 0.0
func script_console_dll_windowExists(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowExists"), argument0))
	return 0.0
func script_console_dll_windowFind(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowFind"), argument0, (GM.f_string(argument1))))
	return 0.0
func script_console_dll_windowGetClassName(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowGetClassName"), argument0))
	return 0.0
func script_console_dll_windowGetForeground(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowGetForeground")))
	return 0.0
func script_console_dll_windowMinimized(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowMinimized"), argument0))
	return 0.0
func script_console_dll_windowProcedure(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowProcedure"), argument0))
	return 0.0
func script_console_dll_windowSetForeground(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowSetForeground"), argument0))
	return 0.0
func script_console_dll_windowSetPos(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowSetPos"), argument0, argument1, argument2, argument3, argument4, argument5, argument6))
	return 0.0
func script_console_dll_windowShow(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_windowShow"), argument0, argument1))
	return 0.0
func script_console_dll_windowSetText(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_external_call(GM.vget(318.0, "v_dll_windowSetText"), argument0, argument1))
	return 0.0
func script_console_dll_refresh(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	return (GM.f_external_call(GM.vget(318.0, "v_dll_refresh"), (GM.f_window_handle())))
	return 0.0
func script_console_color(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(318.0, "v_headColor"), GM.k2(argument0, 0.0), (GM.f_make_color_hsv(argument1, argument2, 255.0)))
	GM.aset(GM.vget(318.0, "v_headColor"), GM.k2(argument0, 1.0), (GM.f_make_color_hsv(argument1, argument2, 128.0)))
	return 0.0
func script_console_draw(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.view_current - 0.0) < 0.00001)):
		for _w78 in GM.with_list((GM.vget(self, "v_DISPLAY")), self):
			if _w78._dead:
				continue
			_w78.other = self
			_w78.image_alpha = GM.vget(318.0, "v_alpha")
			_w78.image_blend = GM.vget(318.0, "v_bgcolor")
		GM.vset(self, "v_logItem", (GM.f_floor((((GM.mouse_y - (((GM.vb(GM.vget(self, "v_display_id"), "y") + GM.vget(self, "v_displayOffsetY")) + GM.vget(self, "v_logItemOffset"))))) / GM.vget(self, "v_displayVert")))))
		if ((GM.vget(self, "v_logItem") < 0.0)):
			GM.vset(self, "v_logItem", 0.0)
		else:
			if ((GM.vget(self, "v_logItem") >= GM.vget(self, "v_displayLines"))):
				GM.vset(self, "v_logItem", (GM.vget(self, "v_displayLines") - 1.0))
		(GM.f_draw_set_alpha(GM.vget(self, "v_alpha")))
		(GM.f_draw_line_color(GM.vb(GM.vget(self, "v_display_id"), "x"), ((((GM.vb(GM.vget(self, "v_display_id"), "y") + GM.vget(self, "v_displayOffsetY"))) + ((GM.vget(self, "v_displayVert") * GM.vget(self, "v_logItem")))) + GM.vget(self, "v_logItemOffset")), (GM.vb(GM.vget(self, "v_display_id"), "x") + 800.0), ((((GM.vb(GM.vget(self, "v_display_id"), "y") + GM.vget(self, "v_displayOffsetY"))) + ((GM.vget(self, "v_displayVert") * GM.vget(self, "v_logItem")))) + GM.vget(self, "v_logItemOffset")), GM.vget(self, "v_logItemColor"), GM.vget(self, "v_logItemColor")))
		(GM.f_draw_line_color(GM.vb(GM.vget(self, "v_display_id"), "x"), (((((GM.vb(GM.vget(self, "v_display_id"), "y") + GM.vget(self, "v_displayOffsetY"))) + ((GM.vget(self, "v_displayVert") * GM.vget(self, "v_logItem")))) + GM.vget(self, "v_displayVert")) + GM.vget(self, "v_logItemOffset")), (GM.vb(GM.vget(self, "v_display_id"), "x") + 800.0), (((((GM.vb(GM.vget(self, "v_display_id"), "y") + GM.vget(self, "v_displayOffsetY"))) + ((GM.vget(self, "v_displayVert") * GM.vget(self, "v_logItem")))) + GM.vget(self, "v_displayVert")) + GM.vget(self, "v_logItemOffset")), GM.vget(self, "v_logItemColor"), GM.vget(self, "v_logItemColor")))
		(GM.f_draw_set_alpha(1.0))
		GM.vset(self, "v_flash", (1.0 if not ((GM.vget(self, "v_flash")) >= 0.5) else 0.0))
		(GM.f_draw_set_font(GM.vget(318.0, "v_font")))
		(GM.f_draw_set_halign(0.0))
		(GM.f_draw_set_valign(0.0))
		(GM.f_draw_text_color((GM.vb(GM.vget(self, "v_display_id"), "x") + 6.0), (GM.vb(GM.vget(self, "v_display_id"), "y") + 220.0), GM.add(GM.add(GM.add(">> ", GM.keyboard_string), GM.aget(GM.vget(self, "v_cursor"), GM.vget(self, "v_flash"))), (GM.f_string_delete(GM.vget(self, "v_text"), 1.0, GM.vget(self, "v_flash")))), GM.aget(GM.vget(self, "v_color"), 0.0), GM.aget(GM.vget(self, "v_color"), 0.0), GM.aget(GM.vget(self, "v_color"), 1.0), GM.aget(GM.vget(self, "v_color"), 1.0), GM.vget(self, "v_alpha")))
		var l_count = 0.0
		var l_colorCount = 0.0
		var l_done = 0.0
		l_count = 0.0
		while ((l_count < GM.vget(self, "v_displayLines"))):
			l_colorCount = 0.0
			l_done = 0.0
			while (not (GM.truth(l_done))):
				if ((absf((GM.f_string_pos(GM.aget(GM.vget(self, "v_head"), l_colorCount), GM.aget(GM.vget(self, "v_log"), GM.add(GM.vget(self, "v_windowLine"), l_count)))) - 1.0) < 0.00001)):
					l_done = 1.0
				else:
					l_colorCount = GM.add(l_colorCount, 1.0)
				if (GM.eq(GM.vget(self, "v_headTotal"), l_colorCount)):
					l_done = 1.0
			(GM.f_draw_text_color((GM.vb(GM.vget(self, "v_display_id"), "x") + GM.vget(self, "v_displayOffsetX")), ((GM.vb(GM.vget(self, "v_display_id"), "y") + GM.vget(self, "v_displayOffsetY")) + ((l_count * GM.vget(self, "v_displayVert")))), GM.aget(GM.vget(self, "v_log"), GM.add(GM.vget(self, "v_windowLine"), l_count)), GM.aget(GM.vget(self, "v_headColor"), GM.k2(l_colorCount, 0.0)), GM.aget(GM.vget(self, "v_headColor"), GM.k2(l_colorCount, 0.0)), GM.aget(GM.vget(self, "v_headColor"), GM.k2(l_colorCount, 1.0)), GM.aget(GM.vget(self, "v_headColor"), GM.k2(l_colorCount, 1.0)), GM.vget(self, "v_alpha")))
			l_count = GM.add(l_count, 1.0)
	return 0.0
func script_console_entry(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_count = 0.0
	l_count = 0.0
	while ((l_count < GM.vget(318.0, "v_displayLines"))):
		if ((GM.aget(GM.vget(318.0, "v_logEntry"), l_count) == "")):
			GM.aset(GM.vget(318.0, "v_logEntry"), l_count, argument0)
		if (GM.eq(GM.aget(GM.vget(318.0, "v_logEntry"), l_count), argument0)):
			return 0.0
		l_count = GM.add(l_count, 1.0)
	l_count = 1.0
	while ((l_count < GM.vget(318.0, "v_displayLines"))):
		GM.aset(GM.vget(318.0, "v_logEntry"), (l_count - 1.0), GM.aget(GM.vget(318.0, "v_logEntry"), l_count))
		l_count = GM.add(l_count, 1.0)
	GM.aset(GM.vget(318.0, "v_logEntry"), (l_count - 1.0), argument0)
	return 0.0
	return 0.0
func script_console_init(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_scautoLoad", (GM.f_real(argument0)))
	GM.vset(self, "v_secureMode", 0.0)
	GM.vset(self, "v_mplayName", "")
	GM.vset(self, "v_unpackShow", 1.0)
	GM.vset(self, "v_deleteNumber", 0.0)
	GM.vset(self, "v_displaySprite", (self.script_console_sprite()))
	GM.vset(self, "v_directory", GM.add(GM.working_directory, "\\"))
	GM.vset(self, "v_directoryLast", GM.vget(self, "v_directory"))
	GM.vset(self, "v_dll_use", 0.0)
	GM.vset(self, "v_roomResize", (GM.f_room_add()))
	(GM.f_room_set_code(GM.vget(self, "v_roomResize"), "console_room();"))
	GM.vset(self, "v_roomMapDesigner", (-1.0))
	var l_count = 0.0
	l_count = 0.0
	GM.vset(self, "v_displayLines", 19.0)
	GM.vset(self, "v_displayVert", 11.0)
	GM.vset(self, "v_displayOffsetX", 2.0)
	GM.vset(self, "v_displayOffsetXFix", GM.vget(self, "v_displayOffsetX"))
	GM.vset(self, "v_displayOffsetY", 2.0)
	GM.vset(self, "v_currentLine", 19.0)
	GM.vset(self, "v_windowLine", 0.0)
	while ((l_count < GM.vget(self, "v_displayLines"))):
		GM.aset(GM.vget(self, "v_log"), l_count, "")
		GM.aset(GM.vget(self, "v_logStep"), l_count, "")
		GM.aset(GM.vget(self, "v_logEntry"), l_count, "")
		GM.aset(GM.vget(self, "v_file"), l_count, 0.0)
		GM.aset(GM.vget(self, "v_fileDone"), l_count, 0.0)
		GM.aset(GM.vget(self, "v_fileLineCount"), l_count, 0.0)
		GM.aset(GM.vget(self, "v_fileString"), l_count, "")
		GM.aset(GM.vget(self, "v_scriptReturn"), l_count, 0.0)
		l_count = GM.add(l_count, 1.0)
	GM.vset(self, "v_logItemOffset", 2.0)
	GM.vset(self, "v_logItem", 0.0)
	GM.vset(self, "v_logItemColor", (GM.f_make_color_hsv(0.0, 0.0, 60.0)))
	GM.vset(self, "v_fileNumber", (-1.0))
	GM.vset(self, "v_scriptNumber", (-1.0))
	GM.aset(GM.vget(self, "v_logStep"), 0.0, "fps;")
	GM.aset(GM.vget(self, "v_logStep"), 1.0, "instance_count;")
	GM.vset(self, "v_packFile", "")
	GM.vset(self, "v_packFileNumber", 0.0)
	GM.vset(self, "v_lastEntry", 13.0)
	GM.vset(self, "v_display", 0.0)
	GM.vset(self, "v_display_step", 0.0)
	GM.vset(self, "v_stepNumber", 2.0)
	GM.vset(self, "v_font", 10.0)
	GM.aset(GM.vget(self, "v_head"), 0.0, "-)LOG")
	GM.aset(GM.vget(self, "v_head"), 1.0, ">>RUN")
	GM.aset(GM.vget(self, "v_head"), 2.0, "!!ERR")
	GM.aset(GM.vget(self, "v_head"), 3.0, "--COM")
	GM.aset(GM.vget(self, "v_head"), 4.0, "][FOP")
	GM.aset(GM.vget(self, "v_head"), 5.0, "[]FCL")
	GM.aset(GM.vget(self, "v_head"), 6.0, "$ VAR")
	GM.aset(GM.vget(self, "v_head"), 7.0, "%%MIS")
	GM.aset(GM.vget(self, "v_head"), 8.0, "==ONL")
	GM.vset(self, "v_headTotal", 8.0)
	(self.script_console_color(0.0, 45.0, 255.0))
	(self.script_console_color(1.0, 170.0, 255.0))
	(self.script_console_color(2.0, 0.0, 255.0))
	(self.script_console_color(3.0, 80.0, 255.0))
	(self.script_console_color(4.0, 132.0, 255.0))
	(self.script_console_color(5.0, 150.0, 255.0))
	(self.script_console_color(6.0, 200.0, 255.0))
	(self.script_console_color(7.0, 0.0, 0.0))
	(self.script_console_color(8.0, 20.0, 255.0))
	GM.vset(self, "v_externalLogging", 0.0)
	GM.vset(self, "v_externalLoggingDate", 1.0)
	GM.vset(self, "v_externalLoggingStep", 0.0)
	GM.vset(self, "v_timestamp", 0.0)
	GM.aset(GM.vget(self, "v_cursor"), 0.0, "")
	GM.aset(GM.vget(self, "v_cursor"), 1.0, (GM.f_chr(127.0)))
	GM.vset(self, "v_flash", 0.0)
	GM.aset(GM.vget(self, "v_color"), 0.0, 16777215.0)
	GM.aset(GM.vget(self, "v_color"), 1.0, 8421504.0)
	GM.vset(self, "v_display_id", 0.0)
	GM.vset(self, "v_alpha", 0.8)
	GM.vset(self, "v_bgcolor", 16777215.0)
	GM.vset(self, "v_text", "")
	GM.vset(self, "v_mouse", 0.0)
	GM.vset(self, "v_clipboard", 0.0)
	GM.vset(self, "v_fullError", 0.0)
	GM.vset(self, "v_enable", 1.0)
	GM.aset(GM.vget(self, "v_month"), 1.0, "Jan")
	GM.aset(GM.vget(self, "v_month"), 2.0, "Feb")
	GM.aset(GM.vget(self, "v_month"), 3.0, "Mar")
	GM.aset(GM.vget(self, "v_month"), 4.0, "Apr")
	GM.aset(GM.vget(self, "v_month"), 5.0, "May")
	GM.aset(GM.vget(self, "v_month"), 6.0, "Jun")
	GM.aset(GM.vget(self, "v_month"), 7.0, "Jul")
	GM.aset(GM.vget(self, "v_month"), 8.0, "Aug")
	GM.aset(GM.vget(self, "v_month"), 9.0, "Sep")
	GM.aset(GM.vget(self, "v_month"), 10.0, "Oct")
	GM.aset(GM.vget(self, "v_month"), 11.0, "Nov")
	GM.aset(GM.vget(self, "v_month"), 12.0, "Dec")
	GM.vset(self, "v_DISPLAY", (GM.f_object_add()))
	(GM.f_object_set_depth(GM.vget(self, "v_DISPLAY"), (-9999.0)))
	(GM.f_object_set_sprite(GM.vget(self, "v_DISPLAY"), GM.vget(self, "v_displaySprite")))
	(GM.f_object_set_persistent(GM.vget(self, "v_DISPLAY"), 1.0))
	(GM.f_object_event_add(GM.vget(self, "v_DISPLAY"), 0.0, 0.0, "image_speed = 0; image_index = 0; image_alpha = console.alpha; x = view_xview[0]; y = view_yview[0]; offset_x = 0; offset_y = 0;"))
	(GM.f_object_event_add(GM.vget(self, "v_DISPLAY"), 3.0, GM.vget(self, "v_ev_step_end"), "display_step_end();"))
	(GM.f_object_event_add(GM.vget(self, "v_DISPLAY"), 2.0, 0.0, "display_alarm();"))
	(GM.f_object_event_add(GM.vget(self, "v_DISPLAY"), 6.0, GM.vget(self, "v_ev_left_press"), "old_mouse_x = mouse_x - x; old_mouse_y = mouse_y - y; old_displayOffsetX = console.displayOffsetX; old_windowLine = console.windowLine; alarm[0] = 1;"))
	(GM.f_object_event_add(GM.vget(self, "v_DISPLAY"), 6.0, GM.vget(self, "v_ev_right_release"), "display_right_release();"))
	(self.script_console_about())
	(self.script_console_log("For help using the console, type console_help();", 3.0))
	(self.script_console_log("Type console_commands(); for a list of console commands.", 3.0))
	GM.vset(self, "v_SCRIPT", (GM.f_object_add()))
	(GM.f_object_set_visible(GM.vget(self, "v_SCRIPT"), 0.0))
	(GM.f_object_set_persistent(GM.vget(self, "v_SCRIPT"), 1.0))
	(GM.f_instance_create(0.0, 0.0, GM.vget(self, "v_SCRIPT")))
	GM.vset(self, "v_MAPDESIGNER", (-1.0))
	GM.vset(self, "v_TEXTEDITOR", (-1.0))
	GM.vset(self, "v_OBJECTBUILDER", (-1.0))
	GM.vset(self, "v_RUNNER", (GM.f_object_add()))
	(GM.f_object_set_visible(GM.vget(self, "v_RUNNER"), 0.0))
	(GM.f_object_set_persistent(GM.vget(self, "v_RUNNER"), 1.0))
	(GM.f_object_event_add(GM.vget(self, "v_RUNNER"), 0.0, 0.0, "runner_create();"))
	(GM.f_object_event_add(GM.vget(self, "v_RUNNER"), 10.0, 13.0, "runner_enter();"))
	(GM.f_object_event_add(GM.vget(self, "v_RUNNER"), 2.0, 0.0, "if (mplay_connect_status() != 0) { console_mplay_receive(); alarm[0] = 1; };"))
	(GM.f_instance_create(0.0, 0.0, GM.vget(self, "v_RUNNER")))
	return 0.0
func script_console_room(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var _s79 = (GM.vget(318.0, "v_roomSet"))
	var _s79_m = false
	for _sw80 in range(1):
		if _s79_m or GM.eq(_s79, (-2.0)):
			_s79_m = true
		if _s79_m:
			break
		if _s79_m or GM.eq(_s79, (-1.0)):
			_s79_m = true
		if _s79_m:
			(GM.f_room_set_width(GM.vget(318.0, "v_roomLast"), GM.vget(318.0, "v_roomWidth")))
			(GM.f_room_set_height(GM.vget(318.0, "v_roomLast"), GM.vget(318.0, "v_roomHeight")))
			break
		_s79_m = true
		if _s79_m:
			(GM.f_room_set_view_enabled(GM.vget(318.0, "v_roomLast"), 1.0))
			(GM.f_room_set_view(GM.vget(318.0, "v_roomLast"), GM.vget(318.0, "v_roomSet"), 1.0, 0.0, 0.0, GM.vget(318.0, "v_roomWidth"), GM.vget(318.0, "v_roomHeight"), 0.0, 0.0, GM.vget(318.0, "v_roomWidth"), GM.vget(318.0, "v_roomHeight"), 0.0, 0.0, 0.0, 0.0, -4.0))
			break
	(GM.f_room_goto(GM.vget(318.0, "v_roomLast")))
	return 0.0
func script_console_sprite(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_g60 = 0.0
	var l_g181 = 0.0
	var l_g120 = 0.0
	var l_g42 = 0.0
	var l_g30 = 0.0
	var l_sprite = 0.0
	var l_temp = 0.0
	l_g60 = (GM.f_make_color_hsv(160.0, 0.0, 60.0))
	l_g181 = (GM.f_make_color_hsv(160.0, 0.0, 181.0))
	l_g120 = (GM.f_make_color_hsv(160.0, 0.0, 120.0))
	l_g42 = (GM.f_make_color_hsv(160.0, 0.0, 42.0))
	l_g30 = (GM.f_make_color_hsv(160.0, 0.0, 30.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_rectangle_color(0.0, 0.0, 799.0, 239.0, 0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_draw_rectangle_color(0.0, 0.0, 799.0, 239.0, l_g60, l_g60, l_g60, l_g60, 1.0))
	(GM.f_draw_rectangle_color(1.0, 1.0, 798.0, 238.0, l_g181, l_g181, l_g181, l_g181, 1.0))
	(GM.f_draw_rectangle_color(4.0, 218.0, 795.0, 237.0, l_g60, l_g60, l_g60, l_g60, 1.0))
	(GM.f_draw_rectangle_color(2.0, 2.0, 797.0, 237.0, l_g120, l_g120, l_g120, l_g120, 1.0))
	(GM.f_draw_rectangle_color(5.0, 219.0, 795.0, 237.0, l_g42, l_g42, l_g42, l_g42, 0.0))
	(GM.f_draw_rectangle_color(0.0, 3.0, 800.0, 217.0, 0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_draw_line_color(0.0, 217.0, 3.0, 217.0, l_g60, l_g60))
	(GM.f_draw_line_color(797.0, 217.0, 799.0, 217.0, l_g60, l_g60))
	(GM.f_draw_line_color(1.0, 2.0, 799.0, 2.0, l_g120, l_g120))
	l_sprite = (GM.f_sprite_create_from_screen(0.0, 0.0, 800.0, 240.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_draw_rectangle_color(0.0, 0.0, 799.0, 239.0, l_g30, l_g30, l_g30, l_g30, 0.0))
	(GM.f_draw_rectangle_color(0.0, 0.0, 799.0, 239.0, l_g60, l_g60, l_g60, l_g60, 1.0))
	(GM.f_draw_rectangle_color(1.0, 1.0, 798.0, 238.0, l_g181, l_g181, l_g181, l_g181, 1.0))
	(GM.f_draw_rectangle_color(2.0, 2.0, 797.0, 237.0, l_g120, l_g120, l_g120, l_g120, 1.0))
	l_temp = (GM.f_sprite_create_from_screen(0.0, 0.0, 800.0, 240.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_sprite_merge(l_sprite, l_temp))
	(GM.f_sprite_delete(l_temp))
	return l_sprite
	return 0.0
func script_console_key_c(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((not ((GM.vget(self, "v_clipboard")) >= 0.5) and ((GM.f_keyboard_check(17.0))) >= 0.5)):
		if ((GM.add(GM.keyboard_string, GM.vget(self, "v_text")) != "")):
			(GM.f_clipboard_set_text(GM.add(GM.keyboard_string, GM.vget(self, "v_text"))))
			GM.vset(self, "v_clipboard", 1.0)
			alarm[int(0.0)] = GM.room_speed
	return 0.0
func script_console_key_down(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		GM.vset(self, "v_windowLine", GM.vget(self, "v_windowLine") + 4.0)
		if ((GM.vget(self, "v_windowLine") > (GM.vget(self, "v_currentLine") - GM.vget(self, "v_displayLines")))):
			GM.vset(self, "v_windowLine", (GM.vget(self, "v_currentLine") - GM.vget(self, "v_displayLines")))
	else:
		GM.keyboard_string = ""
		GM.vset(self, "v_text", "")
		GM.vset(self, "v_lastEntry", GM.vget(self, "v_lastEntry") + 1.0)
		if ((GM.vget(self, "v_lastEntry") > 12.0)):
			GM.vset(self, "v_lastEntry", 0.0)
		var l_done = 0.0
		l_done = 0.0
		while (not (GM.truth(l_done))):
			if ((GM.aget(GM.vget(self, "v_logEntry"), GM.vget(self, "v_lastEntry")) == "")):
				GM.vset(self, "v_lastEntry", GM.vget(self, "v_lastEntry") + 1.0)
			else:
				l_done = 1.0
			if ((GM.vget(self, "v_lastEntry") > 12.0)):
				l_done = 1.0
				GM.vset(self, "v_lastEntry", (-1.0))
		if ((absf(GM.vget(self, "v_lastEntry") - (-1.0)) >= 0.00001)):
			GM.keyboard_string = GM.aget(GM.vget(self, "v_logEntry"), GM.vget(self, "v_lastEntry"))
	return 0.0
func script_console_key_left(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_text", GM.add((GM.f_string_delete(GM.keyboard_string, 1.0, ((GM.f_string_length(GM.keyboard_string)) - 1.0))), GM.vget(self, "v_text")))
	GM.keyboard_string = (GM.f_string_delete(GM.keyboard_string, (GM.f_string_length(GM.keyboard_string)), 1.0))
	return 0.0
func script_console_key_right(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.keyboard_string = GM.add(GM.keyboard_string, (GM.f_string_delete(GM.vget(self, "v_text"), 2.0, (GM.f_string_length(GM.vget(self, "v_text"))))))
	GM.vset(self, "v_text", (GM.f_string_delete(GM.vget(self, "v_text"), 1.0, 1.0)))
	return 0.0
func script_console_key_up(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		GM.vset(self, "v_windowLine", GM.vget(self, "v_windowLine") - 4.0)
		if ((GM.vget(self, "v_windowLine") < 0.0)):
			GM.vset(self, "v_windowLine", 0.0)
	else:
		GM.keyboard_string = ""
		GM.vset(self, "v_text", "")
		GM.vset(self, "v_lastEntry", GM.vget(self, "v_lastEntry") - 1.0)
		if ((GM.vget(self, "v_lastEntry") < 0.0)):
			GM.vset(self, "v_lastEntry", 12.0)
		var l_done = 0.0
		l_done = 0.0
		while (not (GM.truth(l_done))):
			if ((GM.aget(GM.vget(self, "v_logEntry"), GM.vget(self, "v_lastEntry")) == "")):
				GM.vset(self, "v_lastEntry", GM.vget(self, "v_lastEntry") - 1.0)
			else:
				l_done = 1.0
			if ((GM.vget(self, "v_lastEntry") < 0.0)):
				l_done = 1.0
				GM.vset(self, "v_lastEntry", 13.0)
		if ((absf(GM.vget(self, "v_lastEntry") - 13.0) >= 0.00001)):
			GM.keyboard_string = GM.aget(GM.vget(self, "v_logEntry"), GM.vget(self, "v_lastEntry"))
	return 0.0
func script_console_key_v(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((not ((GM.vget(self, "v_clipboard")) >= 0.5) and ((GM.f_keyboard_check(17.0))) >= 0.5)):
		if (((GM.f_clipboard_has_text()))) >= 0.5:
			GM.keyboard_string = GM.add(GM.keyboard_string, GM.vget(self, "v_text"))
			GM.vset(self, "v_text", "")
			GM.keyboard_string = GM.add(GM.keyboard_string, (GM.f_clipboard_get_text()))
			GM.vset(self, "v_clipboard", 1.0)
			alarm[int(0.0)] = GM.room_speed
	return 0.0
func script_console_key_x(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((not ((GM.vget(self, "v_clipboard")) >= 0.5) and ((GM.f_keyboard_check(17.0))) >= 0.5)):
		if ((GM.add(GM.keyboard_string, GM.vget(self, "v_text")) != "")):
			(GM.f_clipboard_set_text(GM.add(GM.keyboard_string, GM.vget(self, "v_text"))))
			GM.keyboard_string = ""
			GM.vset(self, "v_text", "")
			GM.vset(self, "v_clipboard", 1.0)
			alarm[int(0.0)] = GM.room_speed
	return 0.0
func script_console_key_z(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((not ((GM.vget(self, "v_clipboard")) >= 0.5) and ((GM.f_keyboard_check(17.0))) >= 0.5)):
		if ((GM.add(GM.keyboard_string, GM.vget(self, "v_text")) != "")):
			GM.keyboard_string = ""
			GM.vset(self, "v_text", "")
			GM.vset(self, "v_clipboard", 1.0)
			alarm[int(0.0)] = GM.room_speed
	return 0.0
func script_string_time(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((argument0 < 10.0)):
		return ("0" + (GM.f_string(argument0)))
	else:
		return (GM.f_string(argument0))
	return 0.0
func script_display_right_release(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_keyboard_check(16.0)))) >= 0.5:
		GM.keyboard_string = GM.add(GM.keyboard_string, GM.add(GM.vget(318.0, "v_text"), GM.aget(GM.vget(318.0, "v_log"), (GM.vget(318.0, "v_windowLine") + GM.vget(318.0, "v_logItem")))))
	else:
		GM.keyboard_string = GM.add(GM.keyboard_string, GM.add(GM.vget(318.0, "v_text"), (GM.f_string_delete(GM.aget(GM.vget(318.0, "v_log"), (GM.vget(318.0, "v_windowLine") + GM.vget(318.0, "v_logItem"))), 1.0, ((GM.f_string_pos(":", GM.aget(GM.vget(318.0, "v_log"), (GM.vget(318.0, "v_windowLine") + GM.vget(318.0, "v_logItem"))))) + 1.0)))))
	GM.vset(318.0, "v_text", "")
	return 0.0
func script_display_step_end(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	x = (GM.view_xview[int(0.0)] + GM.vget(self, "v_offset_x"))
	y = (GM.view_yview[int(0.0)] + GM.vget(self, "v_offset_y"))
	if ((GM.vget(318.0, "v_dll_use"))) >= 0.5:
		GM.vset(318.0, "v_windowLine", GM.vget(318.0, "v_windowLine") - (((self.script_console_dll_mouseWheel()) / 120.0)))
		if ((GM.vget(318.0, "v_windowLine") < 0.0)):
			GM.vset(318.0, "v_windowLine", 0.0)
		else:
			if ((GM.vget(318.0, "v_windowLine") > ((GM.vget(318.0, "v_currentLine") - GM.vget(318.0, "v_displayLines"))))):
				GM.vset(318.0, "v_windowLine", (GM.vget(318.0, "v_currentLine") - GM.vget(318.0, "v_displayLines")))
	return 0.0
func script_display_alarm(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(GM.vget(self, "v_mouse_button"), 1.0)):
		if (((GM.f_keyboard_check(18.0)))) >= 0.5:
			GM.vset(318.0, "v_displayOffsetX", (GM.add(GM.vget(self, "v_old_displayOffsetX"), ((GM.mouse_x - GM.vget(self, "v_old_mouse_x")))) - x))
			if ((GM.vget(318.0, "v_displayOffsetX") > GM.vget(318.0, "v_displayOffsetXFix"))):
				GM.vset(318.0, "v_displayOffsetX", GM.vget(318.0, "v_displayOffsetXFix"))
			GM.vset(318.0, "v_windowLine", (GM.vget(self, "v_old_windowLine") - (GM.f_floor((((((GM.mouse_y - GM.vget(self, "v_old_mouse_y"))) - y)) / GM.vget(318.0, "v_displayVert"))))))
			if ((GM.vget(318.0, "v_windowLine") < 0.0)):
				GM.vset(318.0, "v_windowLine", 0.0)
		else:
			if (((GM.f_keyboard_check(16.0)))) >= 0.5:
				GM.vset(self, "v_offset_x", (((GM.mouse_x - GM.vget(self, "v_old_mouse_x"))) - GM.view_xview[int(0.0)]))
				GM.vset(self, "v_offset_y", (((GM.mouse_y - GM.vget(self, "v_old_mouse_y"))) - GM.view_yview[int(0.0)]))
			else:
				GM.keyboard_string = GM.add(GM.keyboard_string, GM.vget(318.0, "v_text"))
				var l_spot = 0.0
				l_spot = (GM.f_floor((((((GM.mouse_x - (((x + 6.0) + (GM.f_string_width(">> ")))))) / (GM.f_string_width(GM.keyboard_string)))) * (GM.f_string_length(GM.keyboard_string)))))
				if ((l_spot < 0.0)):
					l_spot = 0.0
				GM.vset(318.0, "v_text", (GM.f_string_delete(GM.keyboard_string, 1.0, l_spot)))
				GM.keyboard_string = (GM.f_string_delete(GM.keyboard_string, GM.add(l_spot, 1.0), (GM.f_string_length(GM.keyboard_string))))
		alarm[int(0.0)] = 1.0
	return 0.0
func script_runner_create(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_scr", GM.vget(318.0, "v_SCRIPT"))
	if ((((GM.f_file_exists(GM.add(GM.vget(318.0, "v_directory"), "scauto.sccom")))) >= 0.5 and (GM.vget(318.0, "v_scautoLoad")) >= 0.5)):
		(self.script_console_run_file(GM.add(GM.vget(318.0, "v_directory"), "scauto.sccom")))
	else:
		if ((GM.vget(318.0, "v_scautoLoad"))) >= 0.5:
			(self.script_console_log("Unable to Locate SCAUTO.SCCOM: (Continuing Without)", 2.0))
	return 0.0
func script_runner_enter(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((GM.vget(318.0, "v_display"))) >= 0.5:
		(self.script_console_run(GM.add(GM.keyboard_string, GM.vget(318.0, "v_text"))))
		GM.keyboard_string = ""
		GM.vset(318.0, "v_text", "")
	return 0.0
func script_console_scan(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_scans = 0.0
	var l_count = 0.0
	var l_t = 0.0
	var l_ret = 0.0
	l_ret = 0.0
	l_count = 0.0
	l_t = 0.0
	GM.aset(l_scans, l_t, "registry_")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_scans, l_t, "file_")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_scans, l_t, "external_")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_scans, l_t, "secureMode")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_scans, l_t, "mplay_")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_scans, l_t, "console_dll_window")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_scans, l_t, "console_dll_killProcess")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_scans, l_t, "swisscreg")
	l_t = GM.add(l_t, 1.0)
	while (((l_count < l_t) and GM.eq(l_ret, 0.0))):
		l_ret = (GM.f_string_count(GM.aget(l_scans, l_count), argument0))
		l_count = GM.add(l_count, 1.0)
	if ((l_ret > 0.0)):
		return 1.0
	else:
		return 0.0
	return 0.0
func script_console_clean(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_count = 0.0
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_deleteNumber"))):
		var _s81 = (GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 0.0)))
		var _s81_m = false
		for _sw82 in range(1):
			if _s81_m or GM.eq(_s81, 0.0):
				_s81_m = true
			if _s81_m:
				for _w83 in GM.with_list((GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))), self):
					if _w83._dead:
						continue
					_w83.other = self
					if (GM.eq(_w83.sprite_index, GM.aget(GM.vget(318.0, "v_deleteItem"), GM.k2(l_count, 1.0)))):
						(GM.f_instance_destroy(_w83))
				(GM.f_sprite_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
			if _s81_m or GM.eq(_s81, 1.0):
				_s81_m = true
			if _s81_m:
				(GM.f_sound_stop(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				(GM.f_sound_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
			if _s81_m or GM.eq(_s81, 2.0):
				_s81_m = true
			if _s81_m:
				GM.vset(self, "v_subcount", 0.0)
				while ((GM.vget(self, "v_subcount") < 8.0)):
					if (GM.eq(GM.background_index[int(GM.vget(self, "v_subcount"))], GM.aget(GM.vget(318.0, "v_deleteItem"), GM.k2(l_count, 1.0)))):
						GM.background_index[int(GM.vget(self, "v_subcount"))] = (-1.0)
					GM.vset(self, "v_subcount", GM.vget(self, "v_subcount") + 1.0)
				(GM.f_background_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
			if _s81_m or GM.eq(_s81, 3.0):
				_s81_m = true
			if _s81_m:
				(GM.f_font_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
			if _s81_m or GM.eq(_s81, 4.0):
				_s81_m = true
			if _s81_m:
				(GM.f_path_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
			if _s81_m or GM.eq(_s81, 5.0):
				_s81_m = true
			if _s81_m:
				(self.script_console_script_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
			if _s81_m or GM.eq(_s81, 6.0):
				_s81_m = true
			if _s81_m:
				(GM.f_timeline_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
			if _s81_m or GM.eq(_s81, 7.0):
				_s81_m = true
			if _s81_m:
				for _w84 in GM.with_list((GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))), self):
					if _w84._dead:
						continue
					_w84.other = self
					(GM.f_instance_destroy(_w84))
				(GM.f_object_delete(GM.aget(GM.vget(self, "v_deleteItem"), GM.k2(l_count, 1.0))))
				break
		l_count = GM.add(l_count, 1.0)
	GM.vset(self, "v_deleteNumber", 0.0)
	return 0.0
	return 0.0
func script_realString(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_count = 0.0
	l_count = 32.0
	while ((l_count < 127.0)):
		argument0 = (GM.f_string_replace_all(argument0, (GM.f_chr(l_count)), ""))
		l_count = GM.add(l_count, 1.0)
		var _s85 = (l_count)
		var _s85_m = false
		for _sw86 in range(1):
			if _s85_m or GM.eq(_s85, 45.0):
				_s85_m = true
			if _s85_m:
				l_count = 47.0
				break
			if _s85_m or GM.eq(_s85, 48.0):
				_s85_m = true
			if _s85_m:
				l_count = 58.0
				break
			if _s85_m or GM.eq(_s85, 94.0):
				_s85_m = true
			if _s85_m:
				l_count = 95.0
				break
	return (GM.f_real(argument0))
	return 0.0
func script_console_introEnd(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_object_delete(GM.vget(318.0, "v_introObj")))
	(self.script_console_enable())
	(GM.f_room_goto(GM.vget(318.0, "v_introRoom")))
	return 0.0
func script_console_about(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(self.script_console_log("          Shaltif's Command Console", 7.0))
	(self.script_console_log("-----------------------------------------------", 7.0))
	(self.script_console_log("Brandon Rohrer (c) 2004-2005", 7.0))
	(self.script_console_log("Version: 2.0.0.0", 7.0))
	(self.script_console_log("Developed in Game Maker 6.0 and Dev-C++ 4.9.9.2", 7.0))
	(self.script_console_log("-----------------------------------------------", 7.0))
	return 0.0
func script_console_clear(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(self.script_console_log("Console Cleared"))
	var l_count = 0.0
	l_count = 0.0
	while ((l_count < GM.vget(318.0, "v_currentLine"))):
		GM.aset(GM.vget(318.0, "v_log"), l_count, "")
		l_count = GM.add(l_count, 1.0)
	GM.vset(318.0, "v_currentLine", GM.vget(318.0, "v_displayLines"))
	GM.vset(318.0, "v_windowLine", 0.0)
	return 0.0
func script_console_commands(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(self.script_console_log("Console Commands"))
	(self.script_console_log("Use console_help() for information on each command"))
	var l_array = 0.0
	var l_countMain = 0.0
	var l_count = 0.0
	var l_t = 0.0
	var l_name = 0.0
	var l_line = 0.0
	l_t = 0.0
	GM.aset(l_array, l_t, "console_about")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_clear")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_color")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_commands")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_create")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_destroy")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_disable")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_display")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_draw")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_enable")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_entry")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_error")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_error_clear")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_event_set")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_external_command")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_help")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_init")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_log")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_run")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_run_file")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_run_program")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_mplay_close")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_mplay_open")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_mplay_parse")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_mplay_receive")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_pack_add")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_pack_close")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_pack_contents")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_pack_open")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_pack_unpack")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_script")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_script_set")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_script_gml")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_script_delete")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_step")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_step_draw")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_step_remove")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_step_add")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_step_edit")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_step_clear")
	l_t = GM.add(l_t, 1.0)
	GM.aset(l_array, l_t, "console_dll_commands")
	l_t = GM.add(l_t, 1.0)
	l_countMain = 0.0
	l_line = 4.0
	while ((l_countMain < l_t)):
		l_count = 0.0
		l_name = ""
		while (((l_count < l_line) and (l_countMain < l_t))):
			l_name = GM.add(l_name, GM.add(GM.aget(l_array, l_countMain), "(); "))
			l_count = GM.add(l_count, 1.0)
			l_countMain = GM.add(l_countMain, 1.0)
		if ((l_name != "")):
			(self.script_console_log(l_name, 7.0))
	return 0.0
	return 0.0
func script_console_create(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_instance_exists(318.0)))) >= 0.5:
		return 0.0
	if (((GM.room_width < 800.0) or (GM.room_height < 240.0))):
		return 0.0
	(GM.f_object_set_persistent(318.0, 1.0))
	(GM.f_object_set_depth(318.0, (-10000.0)))
	(GM.f_object_event_add(318.0, 0.0, 0.0, (("console_init(" + (GM.f_string(argument0))) + ");")))
	(GM.f_object_event_add(318.0, 2.0, 0.0, "clipboard = 0;"))
	(GM.f_object_event_add(318.0, 2.0, 1.0, "console_introEnd();"))
	(GM.f_object_event_add(318.0, 1.0, 0.0, "if (dll_use) { external_free(dll_filename); };"))
	(GM.f_object_event_add(318.0, 5.0, 37.0, "if (display) { console_key_left(); };"))
	(GM.f_object_event_add(318.0, 5.0, 39.0, "if (display) { console_key_right(); };"))
	(GM.f_object_event_add(318.0, 5.0, (GM.f_ord("C")), "if (display) { console_key_c(); };"))
	(GM.f_object_event_add(318.0, 5.0, (GM.f_ord("V")), "if (display) { console_key_v(); };"))
	(GM.f_object_event_add(318.0, 5.0, (GM.f_ord("X")), "if (display) { console_key_x(); };"))
	(GM.f_object_event_add(318.0, 5.0, (GM.f_ord("Z")), "if (display) { console_key_z(); };"))
	(GM.f_object_event_add(318.0, 5.0, 115.0, "if (keyboard_check(vk_alt)) { game_end(); };"))
	(GM.f_object_event_add(318.0, 3.0, GM.vget(self, "v_ev_step_end"), "if (dll_use and keyboard_check_direct(vk_f11)) { console_dll_windowShow(9,0); console_dll_windowSetForeground(console.windowHandleAlt); };"))
	(GM.f_object_event_add(318.0, 8.0, 0.0, "if (display) { console_draw(); }; if (display_step) { console_step_draw(); };"))
	(GM.f_object_event_add(318.0, 9.0, 38.0, "if (display) { console_key_up(); };"))
	(GM.f_object_event_add(318.0, 9.0, 40.0, "if (display) { console_key_down(); };"))
	(GM.f_object_event_add(318.0, 9.0, 123.0, "console_display();"))
	(GM.f_object_event_add(318.0, 7.0, GM.vget(self, "v_ev_room_end"), "if (deleteNumber > 0) { console_clean(); };"))
	(GM.f_object_event_add(318.0, 7.0, GM.vget(self, "v_ev_game_end"), "if (mplay_connect_status() != 0) { console_mplay_close(); };"))
	return (GM.f_instance_create(0.0, 0.0, 318.0))
	return 0.0
func script_console_destroy(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	for _w87 in GM.with_list((GM.vget(318.0, "v_RUNNER")), self):
		if _w87._dead:
			continue
		_w87.other = self
		(GM.f_instance_destroy(_w87))
	for _w88 in GM.with_list((GM.vget(318.0, "v_DISPLAY")), self):
		if _w88._dead:
			continue
		_w88.other = self
		(GM.f_instance_destroy(_w88))
	for _w89 in GM.with_list((GM.vget(318.0, "v_SCRIPT")), self):
		if _w89._dead:
			continue
		_w89.other = self
		(GM.f_instance_destroy(_w89))
	(GM.f_object_delete(GM.vget(318.0, "v_RUNNER")))
	(GM.f_object_delete(GM.vget(318.0, "v_DISPLAY")))
	(GM.f_object_delete(GM.vget(318.0, "v_SCRIPT")))
	if ((GM.vget(318.0, "v_dll_use"))) >= 0.5:
		(self.script_console_dll_setDragAccept(0.0))
		(self.script_console_dll_windowProcedure(0.0))
		(GM.f_external_free(GM.vget(318.0, "v_dll")))
	(GM.f_sprite_delete(GM.vget(318.0, "v_displaySprite")))
	for _w90 in GM.with_list((318.0), self):
		if _w90._dead:
			continue
		_w90.other = self
		(GM.f_instance_destroy(_w90))
	(GM.f_object_set_persistent(318.0, 0.0))
	(GM.f_object_set_depth(318.0, 0.0))
	(GM.f_object_event_clear(318.0, 0.0, 0.0))
	(GM.f_object_event_clear(318.0, 2.0, 0.0))
	(GM.f_object_event_clear(318.0, 1.0, 0.0))
	(GM.f_object_event_clear(318.0, 5.0, 37.0))
	(GM.f_object_event_clear(318.0, 5.0, 39.0))
	(GM.f_object_event_clear(318.0, 5.0, (GM.f_ord("C"))))
	(GM.f_object_event_clear(318.0, 5.0, (GM.f_ord("V"))))
	(GM.f_object_event_clear(318.0, 5.0, (GM.f_ord("X"))))
	(GM.f_object_event_clear(318.0, 5.0, (GM.f_ord("Z"))))
	(GM.f_object_event_clear(318.0, 5.0, 115.0))
	(GM.f_object_event_clear(318.0, 8.0, 0.0))
	(GM.f_object_event_clear(318.0, 9.0, 38.0))
	(GM.f_object_event_clear(318.0, 9.0, 40.0))
	(GM.f_object_event_clear(318.0, 9.0, 123.0))
	(GM.f_object_event_clear(318.0, 7.0, GM.vget(self, "v_ev_game_end")))
	return 0.0
func script_console_disable(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((GM.vget(318.0, "v_display"))) >= 0.5:
		(self.script_console_display())
	GM.vset(318.0, "v_enable", 0.0)
	return 0.0
func script_console_display(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((GM.vget(318.0, "v_enable"))) >= 0.5:
		if (not ((GM.vget(318.0, "v_display")) >= 0.5)):
			GM.vset(318.0, "v_display_id", (GM.f_instance_create(0.0, 0.0, GM.vget(318.0, "v_DISPLAY"))))
			if (GM.eq((GM.f_window_get_cursor()), -1.0)):
				GM.vset(318.0, "v_mouse", 1.0)
				(GM.f_window_set_cursor(0.0))
		else:
			if ((GM.vget(318.0, "v_mouse"))) >= 0.5:
				GM.vset(318.0, "v_mouse", 0.0)
				(GM.f_window_set_cursor(-1.0))
			GM.vset(318.0, "v_display_step", 0.0)
			for _w91 in GM.with_list((GM.vget(318.0, "v_DISPLAY")), self):
				if _w91._dead:
					continue
				_w91.other = self
				(GM.f_instance_destroy(_w91))
		GM.vset(318.0, "v_display", (1.0 if not ((GM.vget(318.0, "v_display")) >= 0.5) else 0.0))
		GM.keyboard_string = ""
		GM.vset(318.0, "v_text", "")
	return 0.0
func script_console_enable(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(318.0, "v_enable", 1.0)
	return 0.0
func script_console_error(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_error = 0.0
	l_error = GM.error_last
	while (((GM.f_string_count((GM.f_chr(13.0)), l_error)) > 0.0)):
		(self.script_console_log((GM.f_string_delete(l_error, (GM.f_string_pos((GM.f_chr(13.0)), l_error)), (GM.f_string_length(l_error)))), 7.0))
		l_error = (GM.f_string_delete(l_error, 1.0, (GM.f_string_pos((GM.f_chr(13.0)), l_error))))
	(self.script_console_log(l_error, 7.0))
	return 0.0
func script_console_error_clear(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.error_last = ""
	GM.error_occurred = 0.0
	return 0.0
func script_console_event_set(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_done = 0.0
	var l_linecount = 0.0
	var l_temp = 0.0
	l_done = 0.0
	l_linecount = 0.0
	while (not (GM.truth(l_done))):
		l_linecount = GM.add(l_linecount, 1.0)
		(GM.f_file_text_readln(GM.vget(318.0, "v_fileEvent")))
		l_temp = (GM.f_string_replace_all((GM.f_file_text_read_string(GM.vget(318.0, "v_fileEvent"))), (GM.f_chr(9.0)), ""))
		if ((absf((GM.f_string_count("console_event_end()", l_temp)) - 1.0) < 0.00001)):
			l_done = 1.0
		else:
			while (((GM.f_string_count("/*", l_temp)) > (GM.f_string_count("*/", l_temp)))):
				l_linecount = GM.add(l_linecount, 1.0)
				(GM.f_file_text_readln(GM.vget(318.0, "v_fileEvent")))
				l_temp = GM.add(l_temp, (GM.f_string_replace_all((GM.f_file_text_read_string(GM.vget(318.0, "v_fileEvent"))), (GM.f_chr(9.0)), "")))
			while (((GM.f_string_count("{", l_temp)) > (GM.f_string_count("}", l_temp)))):
				l_linecount = GM.add(l_linecount, 1.0)
				(GM.f_file_text_readln(GM.vget(318.0, "v_fileEvent")))
				l_temp = GM.add(l_temp, (GM.f_string_replace_all((GM.f_file_text_read_string(GM.vget(318.0, "v_fileEvent"))), (GM.f_chr(9.0)), "")))
				if (((GM.f_string_pos("//", l_temp)) > 0.0)):
					l_temp = (GM.f_string_delete(l_temp, (GM.f_string_pos("//", l_temp)), (GM.f_string_length(l_temp))))
			(GM.f_object_event_add(argument0, argument1, argument2, l_temp))
	return l_linecount
	return 0.0
func script_console_external_command(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_file_exists(GM.add(GM.vget(318.0, "v_directory"), "external_command.sccom"))))) >= 0.5:
		(self.script_console_run_file(GM.add(GM.vget(318.0, "v_directory"), "external_command.sccom")))
		(GM.f_file_delete(GM.add(GM.vget(318.0, "v_directory"), "external_command.sccom")))
		return 1.0
	else:
		return 0.0
	return 0.0
func script_console_help(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var _s92 = ((GM.f_string_replace_all((GM.f_string_replace_all((GM.f_string_replace_all(argument0, ")", "")), "(", "")), ";", "")))
	var _s92_m = false
	for _sw93 in range(1):
		if _s92_m or GM.eq(_s92, "controls"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("Basic keyboard and mouse controls for the console"))
			(self.script_console_log("Left/Right Arrows : Moves the text cursor on the typing field", 3.0))
			(self.script_console_log("Up/Down Arrows : Scrolls through previous console entries.", 3.0))
			(self.script_console_log("Ctrl+Up/Down Arrows : Scrolls the console log text up or down.", 3.0))
			(self.script_console_log("Mouse Wheel: Also scrolls the console log text up or down.", 3.0))
			(self.script_console_log("Alt+Left-Click (Hold): Scrolls the console log text left/right or up/down.", 3.0))
			(self.script_console_log("Shift+Left-Click (Hold) : Allows dragging of the console display area", 3.0))
			(self.script_console_log("Ctrl+X, Ctrl+C, and Ctrl+V : Clipboard shortcut operations (cut, copy, paste)", 3.0))
			(self.script_console_log("Ctrl+Z : Clears the console typing field", 3.0))
			(self.script_console_log("Right-Click : Copies the right-clicked text into the typing field", 3.0))
			(self.script_console_log("Shift+Right-Click : Same as right-click, but copies all line information (including header and timestamp)", 3.0))
			(self.script_console_log("F11 : Sets the application into focus, shown and active. (requires DLL support)", 3.0))
			(self.script_console_log("F12 : Toggles the display of the console window.", 3.0))
			(self.script_console_log("Alt+F4 : Causes the console to close.  Same as entering game_end(); in console.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_about"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_about();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Displays information about Shaltif's Command Console", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_clear"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cls"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_clear(); - Abbrev: cls();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Clears the current command console display.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_color"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_color();"))
			(self.script_console_log("Argument0: REAL - The console header to color.", 7.0))
			(self.script_console_log("Argument1: REAL - The hue of the color", 7.0))
			(self.script_console_log("Argument2: REAL - The saturation of the color", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This command is used to set the header colors used by the console log", 3.0))
			(self.script_console_log("Argument0 is the header type to effect color data.  Check console_log(); for more info", 3.0))
			(self.script_console_log("Argument1 is the hue (0-255) of the color to set.", 3.0))
			(self.script_console_log("Argument2 is the saturation value (0-255).  Usually, this should be 255.", 3.0))
			(self.script_console_log("Any changes take effect immediately.  All previous entries will also have there color changed.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_commands"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cc"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_commands(); - Abbrev: cc();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Displays a list of most of the console commands available.", 3.0))
			(self.script_console_log("All commands listed here can be found in the console_help() function for more information.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_create"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_create();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Used to create the console in a GM application.", 3.0))
			(self.script_console_log("Should only be called only when there is currently no console created.", 3.0))
			(self.script_console_log("Usually, this is at the very beginning of a GM application, in a room create event.", 3.0))
			(self.script_console_log("NEVER enter this function directly into the console.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_destroy"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_destroy();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Used to destroy all parts of a created console and remove it from memory.", 3.0))
			(self.script_console_log("This will clear the dummy console object, but not remove it so that the console could be re-created if needed.", 3.0))
			(self.script_console_log("All script handles will be cleared, but not the actual scripts.  So make sure to remove them before calling this.", 3.0))
			(self.script_console_log("NEVER enter this function directly into the console.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_disable"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_disable();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This will disable access to the console via the F12 key or console_display();", 3.0))
			(self.script_console_log("To re-enable, you will need to call console_enable(); somwhere in your program.", 3.0))
			(self.script_console_log("You can still call console commands within your program.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_display"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cd"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_display(); - Abbrev: cd();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Toggles the display of the console window either on or off.", 3.0))
			(self.script_console_log("As an alternative, you can use press F12 on the keyboard.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_draw"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_draw();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Draws the console.  This is used internally by the console.", 3.0))
			(self.script_console_log("You should NEVER call this function, anywhere.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_enable"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_enable();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("If the console is disabled, this function will re-enable it.", 3.0))
			(self.script_console_log("Read up on console_disable() for more information.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_entry"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_entry();"))
			(self.script_console_log("Argument0: STRING - Text to add to the entry list.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Whenever you enter text directly into the console window or console_run(), it saves the text on this list.", 3.0))
			(self.script_console_log("This allows you to press the up or down keys to recall previous entries.", 3.0))
			(self.script_console_log("The text entered as the argument will be placed on the list, which can then later be recalled by the console user.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_error"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "ce"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_error(); - Abbrev: ce();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("If an error occurred, this will display (or log) the full error message.", 3.0))
			(self.script_console_log("This will NOT clear the error_last state or variable, for that use console_error_clear();", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_error_clear"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cec"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_error_clear(); - Abbrev: cec();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("If an error occurred, this can be used to clear the last error message.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_event_set"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_event_set();"))
			(self.script_console_log("Argument0: REAL - Index to an object.", 7.0))
			(self.script_console_log("Argument1: REAL - The main event to set.", 7.0))
			(self.script_console_log("Argument2: REAL - The sub event to set.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("In SCCOM's, this can be used to have code be inserted in an object's event, rather then directly executed.", 3.0))
			(self.script_console_log("Works similar to the GML function object_event_add();", 3.0))
			(self.script_console_log("Any code between a console_event_set() and console_event_end() block will be included in the object event specified.", 3.0))
			(self.script_console_log("For event codes, check the GM Manual under event_perform().", 3.0))
			(self.script_console_log("NEVER use this directly in the console window.  Only for SCCOM purposes.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_external_command"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_external_command();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: REAL - Whether the external_commands.sccom file was detected (1) or not (0).", 7.0))
			(self.script_console_log("This code should be used in a step, draw or alarm event.", 3.0))
			(self.script_console_log("Checks to see if external_commands.sccom exists, and if so, to execute it.", 3.0))
			(self.script_console_log("After the file has been executed, it will delete the external_commands.sccom.", 3.0))
			(self.script_console_log("This gives the user the ability to remotely control the console from another appliaction", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_init"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_init();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Initializes all internal variables after the console was created.", 3.0))
			(self.script_console_log("console_create() automatically calls this function.", 3.0))
			(self.script_console_log("So, you NEVER should have to use this script manually.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_log"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cl"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_log(); - Abbrev: cl();"))
			(self.script_console_log("Argument0: STRING - Text to add to the console log", 7.0))
			(self.script_console_log("Argument1: REAL - The header type for the log", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This adds text to the console log (or the console window).", 3.0))
			(self.script_console_log("The first argument is the text entry you wish to add.", 3.0))
			(self.script_console_log("The second argument is the type of header you want to represent the message.", 3.0))
			(self.script_console_log("Values are: 0 = LOG; 1 = RUN; 2 = ERR; 3 = COM; 4 = VAR; 5 = FOP; 6 = FCL; 7 = MIS; 8 = ONL;", 3.0))
			(self.script_console_log("Note that the second argument is optional, the default value is 0.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_run"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cr"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_run(); - Abbrev: cr();"))
			(self.script_console_log("Argument0: STRING - The code segment you want to execute.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This will execute the sent code and update the console log.", 3.0))
			(self.script_console_log("Similar to execute_string, except it has a different parsing setup.", 3.0))
			(self.script_console_log("Note that any code directly entered into the console is passed through this function.", 3.0))
			(self.script_console_log("So, you only need to use this if you wish to directly pass code through the console without directly entering it yourself.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_run_file"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "crf"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_run_file(); - Abbrev: crf();"))
			(self.script_console_log("Argument0: STRING - The filename of an SCCOM to execute.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This function allows you to execute code from an external SCCOM file.", 3.0))
			(self.script_console_log("You can either pass the filename directly, or pass c_dialog as your argument to bring up a browse window.", 3.0))
			(self.script_console_log("This will only accept files with the .sccom extention.  Also, you can use it anytime, even inside .sccom files.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_run_program"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "crp"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_run_program(); - Abbrev: crp();"))
			(self.script_console_log("Argument0: STRING - The program (or file) to run.", 7.0))
			(self.script_console_log("Argument1: STRING - The parameters to send to the program.", 7.0))
			(self.script_console_log("Argument2: REAL - Whether to wait for finishing (1) or not (0).", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Call this function when you want to run an outside program.", 3.0))
			(self.script_console_log("Essentially, this works just like the GML functions execute_program() and execute_shell().", 3.0))
			(self.script_console_log("If you pass a -1 for Argument2, then this function uses execute_shell() internally.", 3.0))
			(self.script_console_log("Otherwise, it uses execute_program() to get the job done.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_mplay_open"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_mplay_open();"))
			(self.script_console_log("Argument0: REAL - Whether to use TCP/IP (1) or IPX (0)", 7.0))
			(self.script_console_log("Argument1: STRING - The ip address for TCP/IP connections", 7.0))
			(self.script_console_log("Argument2: STRING - A screen name to use (spaces, * and / chars not allowed)", 7.0))
			(self.script_console_log("Return: REAL - Successful (1) or Failed (0)", 7.0))
			(self.script_console_log("This allows multiple console users to connect to each other.", 3.0))
			(self.script_console_log("If your hosting, argument1 should be a blank string.", 3.0))
			(self.script_console_log("If joining and using IPX, just enter any non-blank string as argument1.", 3.0))
			(self.script_console_log("For the screen name, you can't use spaces, * or / characters.", 3.0))
			(self.script_console_log("If an error occurs, it will log it in the console log.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_mplay_close"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_mplay_close();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Closes a current mplay connection.", 3.0))
			(self.script_console_log("Should be used after an mplay connection has been established.", 3.0))
			(self.script_console_log("Designed to work only if mplay connection was made using console_mplay_open();", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_mplay_parse"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_mplay_parse();"))
			(self.script_console_log("Argument0: STRING - The console mplay command to parse.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Used internally by the console to parse console mplay commands.", 3.0))
			(self.script_console_log("Console run will automtically call this is needed.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_mplay_receive"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_mplay_receive();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Used internally by the console for receiving online commands", 3.0))
			(self.script_console_log("Should never be used outside of the internal workings of the console.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_pack_add"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_pack_add();"))
			(self.script_console_log("Argument0: STRING - A filename to a file to add to the currently open pack file.", 7.0))
			(self.script_console_log("Return: REAL - 1 if successful, 0 if failed, or -1 if there isn't currently an open pack", 7.0))
			(self.script_console_log("Adds a file into an open pack file.", 3.0))
			(self.script_console_log("For argument0, you may pass c_dialog to bring up a dialog window for selecting a file.", 3.0))
			(self.script_console_log("You can add as many files as you want to a pack file.  Just remember that the more you store, the longer it takes to open.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_pack_close"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_pack_close();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: REAL - Whether successful (1) or failed (0)", 7.0))
			(self.script_console_log("When your done adding files to a pack file, use this function to actually close the pack.", 3.0))
			(self.script_console_log("MAKE SURE to call this, otherwise your pack fill fail to unpack later on.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_pack_contents"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_pack_contents();"))
			(self.script_console_log("Argument0: STRING - A filename to a pack file.", 7.0))
			(self.script_console_log("Argument1: REAL - Whether to display the pack's contents in the console window.", 7.0))
			(self.script_console_log("Return: REAL - The number of files found in the pack", 7.0))
			(self.script_console_log("Used to check the file contents stored inside a pack file.", 3.0))
			(self.script_console_log("If you pass a 1 for argument1, it will display the contents in the console window.", 3.0))
			(self.script_console_log("The filenames are stored in the console.array[] array.", 3.0))
			(self.script_console_log("Make sure to use the return value when checking the console.array[] so you don't accidently go out-of-bounds on the array.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_pack_open"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_pack_open();"))
			(self.script_console_log("Argument0: STRING - A filename to save as an .scpak file.", 7.0))
			(self.script_console_log("Return: REAL - 1 if successful, 0 if invalid filename, and -1 if the console dll isn't found.", 7.0))
			(self.script_console_log("These functions allow you to pack multiple files together into a single pack file.", 3.0))
			(self.script_console_log("This creates the pack file for packing other files into.", 3.0))
			(self.script_console_log("DO NOT get this confused with opening an existing pack.  Use console_pack_unpack() for that.", 3.0))
			(self.script_console_log("The extention must be .scpak for pack functions.", 3.0))
			(self.script_console_log("You may pass c_dialog to bring up a dialog box for entering a pack filename.", 3.0))
			(self.script_console_log("Once you open a pack file, use console_pack_add() to actually add files to the pack.", 3.0))
			(self.script_console_log("When you are done making the pack file, MAKE SURE to close it using console_pack_close();", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_pack_unpack"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_pack_unpack();"))
			(self.script_console_log("Argument0: STRING - A filename of a pack file.", 7.0))
			(self.script_console_log("Argument1: STRING - Either a specific filename to unpack, or 0 to unpack all files contained.", 7.0))
			(self.script_console_log("Return: REAL - 1 if successful, 0 if failed, or -1 if the console dll isn't found.", 7.0))
			(self.script_console_log("This is used to unpack files from a pack file.", 3.0))
			(self.script_console_log("Files that are unpacked will be stored in the same directory as the pack file.", 3.0))
			(self.script_console_log("Using argument1, you can unpack specific files or everything that's in the pack.", 3.0))
			(self.script_console_log("Unpacking larger files may take some time, so be patient.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_script"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_script();"))
			(self.script_console_log("Argument0: REAL - A console script index", 7.0))
			(self.script_console_log("Argument1-15: REAL/STRING/NULL - The arguments to pass to the script", 7.0))
			(self.script_console_log("Return: REAL/STRING/NULL - Depends on the script specified.", 7.0))
			(self.script_console_log("This will execute a user defined console script set by console_script_set();", 3.0))
			(self.script_console_log("All indexes must start with the scr. prefix.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_script_delete"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_script_delete();"))
			(self.script_console_log("Argument0: REAL - A console script index", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This will clear and remove a console script from memory.", 3.0))
			(self.script_console_log("Once a console script is removed, it can't be used anymore unless re-set by console_script_set();", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_script_set"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_script_set();"))
			(self.script_console_log("Argument0: REAL - A variable name which will store the script index.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("In SCCOM's, this can be used to have code be inserted in a console script, rather then directly executed.", 3.0))
			(self.script_console_log("Any code between a console_script_set() and console_script_end() block will be included in the script specified.", 3.0))
			(self.script_console_log("All indexes must start with the scr. prefix.", 3.0))
			(self.script_console_log("NEVER use this directly in the console window.  Only for SCCOM purposes.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_step"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cs"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_step(); - Abbrev: cs();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Used to toggle the console step window display.", 3.0))
			(self.script_console_log("The console step allows you to check the value of variables and expressions in real time.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_step_add"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "csa"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_step_add(); - Abbrev: csa();"))
			(self.script_console_log("Argument0: STRING - A variable or expression to add to the console step.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This can be used to add variable or expressions into the console step for analysis", 3.0))
			(self.script_console_log("If you want to check a non-formula expression (like one that uses if's) then you can do so", 3.0))
			(self.script_console_log("Just start the string with a 0; then make sure that you set the variable sret to the desired values you want to see.", 3.0))
			(self.script_console_log("ex: '0; if (fps = room_speed) { sret = 1; } else { sret = 0; };' would set sret to 1 or 0 depending on the conditional.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_step_clear"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "csc"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_step_clear(); - Abbrev: csc();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Clears all entries in the console step.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_step_draw"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_step_draw();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This draws the step console.  Used internally by the console.", 3.0))
			(self.script_console_log("You NEVER should need to call this directly.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_step_edit"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cse"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_step_edit(); - Abbrev: cse();"))
			(self.script_console_log("Argument0: REAL - The console slot to edit.", 7.0))
			(self.script_console_log("Argument1: STRING - The variable or expression to edit", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This allows you to edit the value stored in a console step slot.", 3.0))
			(self.script_console_log("You should only select slots that currently store information.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_step_remove"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "csr"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_step_remove(); - Abbrev: csr();"))
			(self.script_console_log("Argument0: REAL - The console step slot to remove", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Use this when you want to remove the evaluation of an expression from the console step window.", 3.0))
			(self.script_console_log("The argument is the slot you want to remove.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_about"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_about();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Displays an about dialog for the command console dll.", 3.0))
			(self.script_console_log("Nothing fancy, just a 'for your information' type deal.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_commands"):
			_s92_m = true
		if _s92_m:
			pass
		if _s92_m or GM.eq(_s92, "cdc"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_commands(); - Abbrev: cdc();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Shows a list of all the dll console commands.", 3.0))
			(self.script_console_log("You can also get more information on each command by using console_help().", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_getDialog"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_getDialog();"))
			(self.script_console_log("Argument0: STRING - The label text for dialog box.", 7.0))
			(self.script_console_log("Argument1: STRING - Message text for dialog box.", 7.0))
			(self.script_console_log("Argument2: STRING - Default text in the typing field.", 7.0))
			(self.script_console_log("Return: STRING - The value entered by the user.  '' or blank if canceled.", 7.0))
			(self.script_console_log("Similar to the GML function get_string();", 3.0))
			(self.script_console_log("Display's a WinAPI get string message box for getting user input.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_getFileDrop"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_getFileDrop();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: REAL - The number of files dropped.", 7.0))
			(self.script_console_log("Typically, this is used in a step, draw or alarm event.", 3.0))
			(self.script_console_log("Used to check if files were dragged into the GM application window.", 3.0))
			(self.script_console_log("When it returns that files have been dropped, check the console.array[] for the filenames.", 3.0))
			(self.script_console_log("This will only work if you set the GM application drag accept to true first.", 3.0))
			(self.script_console_log("Also, the windowProcedure needs to be turned on as well.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_init"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_init();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: REAL - Alternate window handle", 7.0))
			(self.script_console_log("This must be called before you can use any of the console_dll_ functions.", 3.0))
			(self.script_console_log("It initializes the DLL and external calling functions.", 3.0))
			(self.script_console_log("This is seperate from the normal console_init() function as the DLL support is generally optional.", 3.0))
			(self.script_console_log("The console will still operate normally if the DLL isn't present.", 3.0))
			(self.script_console_log("It returns the global or alternate window handle (this isn't the same as window_handle())", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_messageBox"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_messageBox();"))
			(self.script_console_log("Argument0: STRING - Message contained inside the message dialog.", 7.0))
			(self.script_console_log("Argument1: STRING - Message box label or caption.", 7.0))
			(self.script_console_log("Argument2: REAL - Button Style to display. (0-6)", 7.0))
			(self.script_console_log("Argument3: REAL - Icon to display with the message. (0-4)", 7.0))
			(self.script_console_log("Return: REAL - Button pressed.", 7.0))
			(self.script_console_log("This displays a message box.", 3.0))
			(self.script_console_log("Arg2: 0 = OK; 1 = OK CANCEL; 2 = YES NO; 3 = YES NO CANCEL; 4 = RETRY CANCEL; 5 = ABORT RETRY IGNORE", 3.0))
			(self.script_console_log("Arg3: 0 = No Icon; 1 = Information; 2 = Error; 3 = Exclamation; 4 = Question", 3.0))
			(self.script_console_log("Returns: 0 = No Button; 1 = OK; 2 = CANCEL; 3 = YES; 4 = NO; 5 = RETRY; 6 = ABORT; 7 = IGNORE", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_mouseWheel"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_mouseWheel();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: REAL - How many 'clicks' the mouse wheel moved.", 7.0))
			(self.script_console_log("This function returns how much and in which direction the mouse wheel moved.", 3.0))
			(self.script_console_log("The return is in multiple of 120...meaning, a single 'click' of movement will return 120.  Two clicks will return 240, etc", 3.0))
			(self.script_console_log("If the mouse is pulled toward the user, it will be negative.  If pushed away from the user, it will be positive.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_openFileDialog"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_openFileDialog();"))
			(self.script_console_log("Argument0: STRING - The file filter(s) to use.", 7.0))
			(self.script_console_log("Argument1: STRING - The default filename.", 7.0))
			(self.script_console_log("Argument2: REAL - Whether to allow for loading multiple filenames at once.", 7.0))
			(self.script_console_log("Return: REAL - The number of filenames selected.", 7.0))
			(self.script_console_log("This function works just like the GML function get_open_filename() except for the last argument.", 3.0))
			(self.script_console_log("Argument2 set to true allows for users to select multiple files in which to load.", 3.0))
			(self.script_console_log("The return value is the number of files select (0 if none).", 3.0))
			(self.script_console_log("You can get the actual filenames loaded from the console.array[].", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_pack"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_pack();"))
			(self.script_console_log("Argument0: STRING - Filename (and path) to pack into another file.", 7.0))
			(self.script_console_log("Argument1: STRING - Filename (and path) to save Argument0 into.", 7.0))
			(self.script_console_log("Return: REAL - Filesize of file in Argument0.", 7.0))
			(self.script_console_log("This function allows you to pack multiple files together into a single continuous file.", 3.0))
			(self.script_console_log("Argument1 is the filename (and path) to pack the files into.  You can pack as many files as you want info a file.", 3.0))
			(self.script_console_log("Note that this doesn't make any seperation between files.  You will need to come up with a method for this on your own.", 3.0))
			(self.script_console_log("Once a file is packed, it cannot be changed, modified, or removed.", 3.0))
			(self.script_console_log("You can unpack the files inside a packed filed using console_dll_unpack();", 3.0))
			(self.script_console_log("The functions console_pack_open(); console_pack_add(); console_pack_close(); and console_pack_unpack(); were created to make this process easier.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_setDragAccept"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_setDragAccept();"))
			(self.script_console_log("Argument0: REAL - Whether the GM application accepts drag and dropped files on the window.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Use this to set whether the GM window allows for file dragging.", 3.0))
			(self.script_console_log("You should set the console_dll_windowProcedure(); before calling this function.", 3.0))
			(self.script_console_log("Once set, use console_dll_getFileDrop(); to get any dropped files.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_systemParametersInfo"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_systemParametersInfo();"))
			(self.script_console_log("Argument0: REAL - Whether to pull information (0) or set information (1).", 7.0))
			(self.script_console_log("Argument1: REAL - When pulling info, this sets which side to return.  Otherwise, this sets the left portion of the work area.", 7.0))
			(self.script_console_log("Argument2: REAL - When setting, this is the top of the work area rectangle.", 7.0))
			(self.script_console_log("Argument3: REAL - When setting, this is the right (or width) of the work area rectangle.", 7.0))
			(self.script_console_log("Argument4: REAL - When setting, this is the bottom (or height) of the work area rectangle.", 7.0))
			(self.script_console_log("Return: REAL - When pulling, the length of the specified side.  Otherwise, NULL", 7.0))
			(self.script_console_log("This function is used to get or set the size of the work area rectangle for a computer.", 3.0))
			(self.script_console_log("The 'work area' is the part of the desktop not covered by the taskbar.", 3.0))
			(self.script_console_log("When pulling, Argument1 is the side (0 - 3) of the rectangle.  0 = left (x); 1 = top (y); 2 = width; 3 = height;", 3.0))
			(self.script_console_log("When setting, Argument1-4 set the dimentions of the work area.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_systrayGetInput"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_systrayGetInput();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: REAL - The mouse input pressed.", 7.0))
			(self.script_console_log("Returns the input placed on the taskbar system tray icon.", 3.0))
			(self.script_console_log("-1, Left mouse button Down.  -2, Left mouse button up.  -3, Left mouse button double clicked.", 3.0))
			(self.script_console_log("1, Right mouse button down.  2, Right mouse button down.  3, Right mouse button double clicked.", 3.0))
			(self.script_console_log("A value of 0 means that no button was pressed.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_systrayLoadIcon"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_systrayLoadIcon();"))
			(self.script_console_log("Argument0: STRING - Filename (and path) to an icon file.", 7.0))
			(self.script_console_log("Return: REAL - Whether successful (1) or not (0)", 7.0))
			(self.script_console_log("Loads an icon which will display in the system tray.", 3.0))
			(self.script_console_log("This should be used before console_dll_systemNotify();", 3.0))
			(self.script_console_log("You can load a new icon at anytime, however, it won't display until you notify the systray again.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_systrayNotify"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_systrayNotify();"))
			(self.script_console_log("Argument0: REAL - Message to notify system tray.", 7.0))
			(self.script_console_log("Return: REAL - Whether successful (1) or not (0)", 7.0))
			(self.script_console_log("This is used to notify the system tray with any changes.", 3.0))
			(self.script_console_log("To update an icon or tooltip, you need to set them first.  Then, call this function to update the tray.", 3.0))
			(self.script_console_log("The Argument specifies how the system tray is notified.", 3.0))
			(self.script_console_log("When you first created the system tray icon, you should pass a 1.", 3.0))
			(self.script_console_log("When modifing an existing system tray icon (for your application) pass a 0.", 3.0))
			(self.script_console_log("To remove your system tray icon from the system tray, pass a -1.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_systraySetToolTip"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_systraySetToolTip();"))
			(self.script_console_log("Argument0: STRING - Text to display in the system tray tooltip.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("This will set the system tray tooltip to the text placed as Argument0.", 3.0))
			(self.script_console_log("You will need to call console_dll_systrayNotify(); to actually update the system tray icon with the new information.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_unpack"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_unpack();"))
			(self.script_console_log("Argument0: STRING - The filename (and path) to a packed file for opening.", 7.0))
			(self.script_console_log("Argument1: STRING - Filename (and path) to save unpacked contents into.", 7.0))
			(self.script_console_log("Argument2: REAL - The byte position to start unpacking from.", 7.0))
			(self.script_console_log("Argument3: REAL - The number of bytes to unpack (or length).", 7.0))
			(self.script_console_log("Return: REAL - The current byte position when finished.", 7.0))
			(self.script_console_log("This is used to pull data from a 'packed' file and store it into another file.", 3.0))
			(self.script_console_log("The information pulled starts at the byte position, and goes a number of bytes specified.", 3.0))
			(self.script_console_log("Generally, when you pack a file, you store the byte positions and sizes somewhere for later unpacking.", 3.0))
			(self.script_console_log("The functions console_pack_open(); console_pack_add(); console_pack_close(); and console_pack_unpack(); were created to make this process easier.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowExists"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowExists();"))
			(self.script_console_log("Argument0: REAL - A window handle", 7.0))
			(self.script_console_log("Return: REAL - Whether a window with the specified handle exists (1) or not (0).", 7.0))
			(self.script_console_log("It's recommended that you check to make sure a window actually exists before you use it's handle in the various other functions.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowFind"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowFind();"))
			(self.script_console_log("Argument0: STRING - A classname for finding a window handle.", 7.0))
			(self.script_console_log("Argument1: STRING - The window title (optional).", 7.0))
			(self.script_console_log("Return: REAL - The window handle, or 0 if no window with specified arguments was found.", 7.0))
			(self.script_console_log("This can be useful for finding window handles to programs.  All you really need is a classname.", 3.0))
			(self.script_console_log("Argument1 is optional, and mainly allows for narrowing your search (if, for some reason, there are multiple windows with the same classname).", 3.0))
			(self.script_console_log("If you don't want to use Argument1, just pass a 0", 3.0))
			(self.script_console_log("Ex:  windowHandle = console_dll_windowFind('TApplication',filename_change_ext(filename_name(parameter_string(0)),''));", 3.0))
			(self.script_console_log("Btw, the above example is how you get the 'alternate' window  handle for your GM application.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowGetClassName"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowGetClassName();"))
			(self.script_console_log("Argument0: REAL - A window handle", 7.0))
			(self.script_console_log("Return: STRING - The classname of the specified window.", 7.0))
			(self.script_console_log("When you need a classname, this is how you get it.  Requires that you know the window handle.", 3.0))
			(self.script_console_log("If you don't know the window handle of another application, try using console_dll_windowGetForeground() to get the window handle.", 3.0))
			(self.script_console_log("Then, just place the application you want to get the window handle from in focus.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowGetForeground"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowGetForeground();"))
			(self.script_console_log("No Arguments", 7.0))
			(self.script_console_log("Return: REAL - The window handle of the currently focused window.", 7.0))
			(self.script_console_log("This function is used to get the window handle of the currently active or focused window.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowMinimized"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowMinimized"))
			(self.script_console_log("Argument0: REAL - A window handle", 7.0))
			(self.script_console_log("Return: REAL - Whether the window is minimized (1) or not (0)", 7.0))
			(self.script_console_log("Will return the current minimized state of the passed window handle", 3.0))
			(self.script_console_log("If you pass nothing or 0, it will use the current application's window handle", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowProcedure"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowProcedure"))
			(self.script_console_log("Argument0: REAL - Whether to turn on (1) or off (0) the sub window procedure.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Some console_dll functions require that a sub-class window procedure be active.", 3.0))
			(self.script_console_log("These include console_dll_mouseWheel(), all the console_dll_systray_ functions, and the console_dll_getFileDrop() function.", 3.0))
			(self.script_console_log("Generally, this should be set to true after you initialize the DLL and then turned off on close.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowSetForeground"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowSetForeground();"))
			(self.script_console_log("Argument0: REAL - A window handle.", 7.0))
			(self.script_console_log("Return: REAL - If successful, a non-zero value will return.  Otherwise, it will return 0.", 7.0))
			(self.script_console_log("Used to set another, or the current window to the foreground or active window.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowSetPos"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowSetPos();"))
			(self.script_console_log("Argument0: REAL - The Zorder location of the window (0 - 3)", 7.0))
			(self.script_console_log("Argument1: REAL - X position of the window (in pixels)", 7.0))
			(self.script_console_log("Argument2: REAL - Y position of the window (in pixels)", 7.0))
			(self.script_console_log("Argument3: REAL - Width of the window (in pixels)", 7.0))
			(self.script_console_log("Argument4: REAL - Height of the window (in pixels)", 7.0))
			(self.script_console_log("Argument5: REAL - The window style or attribute (0-6)", 7.0))
			(self.script_console_log("Argument6: REAL - A window handle", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Allows you to set a window's position on the desktop.", 3.0))
			(self.script_console_log("For Arg0: 0 = Bottom; 1 = Removes OnTop Status; 2 = Top; 3 = Sets OnTop Status", 3.0))
			(self.script_console_log("For Arg5: 0 = Hide; 1 = Not Active; 2 = No Move; 3 = No Owner Z Order; 4 = No Size; 5 = No Z Order; 6 = Show Window", 3.0))
			(self.script_console_log("The last argument is optional.", 3.0))
			(self.script_console_log("If no handle is specified, the current GM application's handle will be used.", 3.0))
			break
		if _s92_m or GM.eq(_s92, "console_dll_windowShow"):
			_s92_m = true
		if _s92_m:
			(self.script_console_log("console_dll_windowShow();"))
			(self.script_console_log("Argument0: REAL - The method of showing the window (0 - 10)", 7.0))
			(self.script_console_log("Argument1: REAL - A window handle.", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("Allows one to set the show state for a window.", 3.0))
			(self.script_console_log("States are: 0 = Hide; 1 = Normal; 2 = Show Minimized; 3 = Maximize; 4 = Show Not Activate; 5 = Show;", 3.0))
			(self.script_console_log("6 = Minimize; 7 = Show minimized and Not Active; 8 = Show Not Active; 9 = Restore; 10 = Show Default / Max", 3.0))
			(self.script_console_log("Argument1 is optional.  If you don't pass a window handle, the current GM application's hande will be used.", 3.0))
			(self.script_console_log("DO NOT pass window_handle(), as this function doesn't work properly with that GM handle.", 3.0))
			break
		_s92_m = true
		if _s92_m:
			(self.script_console_log("Invalid argument, running help on console_help()", 2.0))
			(self.script_console_log("console_help(); - Abbrev: ch();"))
			(self.script_console_log("Argument0: STRING - Console Command to get help on", 7.0))
			(self.script_console_log("Return: NULL", 7.0))
			(self.script_console_log("You pass the name of the command you want to get help information on.", 3.0))
			(self.script_console_log("The argument must be entered as a string.  Passing the (); part of a function is optional.", 3.0))
			(self.script_console_log("An abbreviation to a console command may also be enterd as an argument.", 3.0))
			(self.script_console_log("Ex: console_help('console_commands'); or ch('cc'); or ch('cc();'); all do the same thing.", 3.0))
			(self.script_console_log("For console controls, enter console_help('controls');", 3.0))
			break
	return 0.0
func script_console_log(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_stamp = 0.0
	if ((GM.vget(318.0, "v_timestamp"))) >= 0.5:
		l_stamp = GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(" [", (self.script_string_time(GM.vget(self, "v_current_hour")))), ":"), (self.script_string_time(GM.vget(self, "v_current_minute")))), ":"), (self.script_string_time(GM.vget(self, "v_current_second")))), "]: ")
	else:
		l_stamp = ": "
	GM.aset(GM.vget(318.0, "v_log"), GM.vget(318.0, "v_currentLine"), GM.add(GM.add(GM.aget(GM.vget(318.0, "v_head"), argument1), l_stamp), (GM.f_string(argument0))))
	if ((GM.vget(318.0, "v_externalLogging"))) >= 0.5:
		var l_log = 0.0
		l_log = (GM.f_file_text_open_append(GM.add(GM.vget(318.0, "v_directory"), "console.log")))
		if ((GM.vget(318.0, "v_externalLoggingDate"))) >= 0.5:
			(GM.f_file_text_writeln(l_log))
			(GM.f_file_text_write_string(l_log, GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(((GM.f_string(GM.vget(self, "v_current_year"))) + " "), GM.aget(GM.vget(318.0, "v_month"), GM.vget(self, "v_current_month"))), ", "), (GM.f_string(GM.vget(self, "v_current_day")))), ": ["), (self.script_string_time(GM.vget(self, "v_current_hour")))), ":"), (self.script_string_time(GM.vget(self, "v_current_minute")))), ":"), (self.script_string_time(GM.vget(self, "v_current_second")))), "]")))
			(GM.f_file_text_writeln(l_log))
			GM.vset(318.0, "v_externalLoggingDate", 0.0)
		(GM.f_file_text_write_string(l_log, GM.aget(GM.vget(318.0, "v_log"), GM.vget(318.0, "v_currentLine"))))
		(GM.f_file_text_writeln(l_log))
		(GM.f_file_text_close(l_log))
	GM.vset(318.0, "v_currentLine", GM.vget(318.0, "v_currentLine") + 1.0)
	GM.vset(318.0, "v_windowLine", GM.vget(318.0, "v_windowLine") + 1.0)
	return 0.0
func script_console_run(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_value = 0.0
	l_value = argument0
	GM.vset(self, "v_ret", "")
	(self.script_console_entry(l_value))
	GM.vset(self, "v_lastEntry", GM.vget(318.0, "v_displayLines"))
	if ((GM.vget(318.0, "v_secureMode"))) >= 0.5:
		if (((self.script_console_scan(l_value)))) >= 0.5:
			(self.script_console_log("Scan found an invalid segment of code.  Execution Aborted.", 2.0))
			return 0.0
	if (((GM.f_string_count("script_get", l_value)) > 0.0)):
		(self.script_console_log("Invalid item 'script_get' was found", 2.0))
	else:
		if (((GM.f_string_count("execute_", l_value)) > 0.0)):
			(self.script_console_log("Invalid item 'execute_' was found", 2.0))
		else:
			if (((GM.f_string_count("console_enable", (GM.f_string_replace_all(l_value, ".", "_")))) > 0.0)):
				(self.script_console_log("Invalid item 'console_enable' was found", 2.0))
			else:
				if ((absf((GM.f_string_pos("//", l_value)) - 1.0) < 0.00001)):
					(self.script_console_log((GM.f_string_copy(l_value, 3.0, (GM.f_string_length(l_value)))), 3.0))
				else:
					if ((absf((GM.f_string_pos("step: ", l_value)) - 1.0) < 0.00001)):
						(self.script_console_step_add((GM.f_string_copy(l_value, 7.0, (GM.f_string_length(l_value))))))
					else:
						if ((absf((GM.f_string_pos("/", l_value)) - 1.0) < 0.00001)):
							(self.script_console_mplay_parse(l_value))
						else:
							(self.script_console_log(l_value, 1.0))
							(GM.f_execute_string(self, l_value))
							if ((GM.error_occurred)) >= 0.5:
								GM.error_occurred = 0.0
								(self.script_console_log("Invalid Syntax", 2.0))
								if ((GM.vget(318.0, "v_fullError"))) >= 0.5:
									(self.script_console_error())
							else:
								if (((GM.f_string(GM.vget(self, "v_ret"))) != "")):
									(self.script_console_log(GM.vget(self, "v_ret"), 6.0))
	return 0.0
func script_console_run_file(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.error_occurred = 0.0
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SC Commands|*.sccom", "*.sccom"))
	if ((argument0 == "")):
		(self.script_console_log("No Filename Specified...", 2.0))
	else:
		if (not (((GM.f_file_exists(argument0))) >= 0.5)):
			(self.script_console_log("Non-Existant Filename...", 2.0))
		else:
			if (not (((GM.f_string_count(".sccom", argument0))) >= 0.5)):
				(self.script_console_log("Invalid Filename Extention...", 2.0))
			else:
				GM.vset(318.0, "v_fileNumber", GM.vget(318.0, "v_fileNumber") + 1.0)
				GM.aset(GM.vget(318.0, "v_fileName"), GM.vget(318.0, "v_fileNumber"), (GM.f_filename_name(argument0)))
				GM.aset(GM.vget(318.0, "v_filePath"), GM.vget(318.0, "v_fileNumber"), (GM.f_filename_path(argument0)))
				(self.script_console_log(GM.aget(GM.vget(318.0, "v_fileName"), GM.vget(318.0, "v_fileNumber")), 4.0))
				GM.aset(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber"), (GM.f_file_text_open_read(argument0)))
				GM.aset(GM.vget(318.0, "v_fileDone"), GM.vget(318.0, "v_fileNumber"), 0.0)
				GM.aset(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber"), 0.0)
				while (not ((GM.aget(GM.vget(318.0, "v_fileDone"), GM.vget(318.0, "v_fileNumber"))) >= 0.5)):
					GM.aset(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber"), GM.add(GM.aget(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber")), 1.0))
					GM.aset(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber"), (GM.f_string_replace_all((GM.f_file_text_read_string(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber")))), (GM.f_chr(9.0)), "")))
					while (((GM.f_string_count("/*", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))) > (GM.f_string_count("*/", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))))):
						GM.aset(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber"), GM.add(GM.aget(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber")), 1.0))
						(GM.f_file_text_readln(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber"))))
						GM.aset(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber"), GM.add(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")), (GM.f_string_replace_all((GM.f_file_text_read_string(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber")))), (GM.f_chr(9.0)), ""))))
					while (((GM.f_string_count("{", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))) > (GM.f_string_count("}", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))))):
						GM.aset(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber"), GM.add(GM.aget(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber")), 1.0))
						(GM.f_file_text_readln(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber"))))
						GM.aset(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber"), GM.add(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")), (GM.f_string_replace_all((GM.f_file_text_read_string(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber")))), (GM.f_chr(9.0)), ""))))
						if (((GM.f_string_pos("//", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))) > 0.0)):
							GM.aset(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber"), (GM.f_string_delete(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")), (GM.f_string_pos("//", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))), (GM.f_string_length(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))))))
					while (((GM.f_string_char_at(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")), (GM.f_string_length(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))))) == ",")):
						(GM.f_file_text_readln(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber"))))
						GM.aset(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber"), GM.add(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")), (GM.f_file_text_read_string(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber"))))))
					GM.vset(318.0, "v_directoryCurrent", GM.aget(GM.vget(318.0, "v_filePath"), GM.vget(318.0, "v_fileNumber")))
					if ((GM.vget(318.0, "v_secureMode"))) >= 0.5:
						if (((self.script_console_scan(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))))) >= 0.5:
							GM.aset(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber"), "console_enable")
					if (((((GM.f_string_count("script_get", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))) > 0.0) or ((GM.f_string_count("execute_", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))) > 0.0)) or ((GM.f_string_count("console_enable", (GM.f_string_replace_all(GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")), ".", "_")))) > 0.0))):
						pass
					else:
						if ((absf((GM.f_string_count("console_event_set(", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))) - 1.0) < 0.00001)):
							GM.vset(318.0, "v_fileEvent", GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber")))
							(GM.f_execute_string(self, GM.add("console.fileLineCount[console.fileNumber] += ", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))))
						else:
							if ((absf((GM.f_string_count("console_script_set(", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))) - 1.0) < 0.00001)):
								GM.vset(318.0, "v_fileEvent", GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber")))
								(GM.f_execute_string(self, GM.add("console.fileLineCount[console.fileNumber] += ", GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber")))))
							else:
								(GM.f_execute_string(self, GM.aget(GM.vget(318.0, "v_fileString"), GM.vget(318.0, "v_fileNumber"))))
					if ((GM.error_occurred)) >= 0.5:
						(self.script_console_log(GM.add("With file: ", GM.aget(GM.vget(318.0, "v_fileName"), GM.vget(318.0, "v_fileNumber"))), 2.0))
						(self.script_console_error())
						(self.script_console_log(("True Error Line: " + (GM.f_string(GM.aget(GM.vget(318.0, "v_fileLineCount"), GM.vget(318.0, "v_fileNumber"))))), 7.0))
						(self.script_console_log(GM.add(GM.aget(GM.vget(318.0, "v_fileName"), GM.vget(318.0, "v_fileNumber")), " - Aborted"), 5.0))
						GM.aset(GM.vget(318.0, "v_fileDone"), GM.vget(318.0, "v_fileNumber"), 1.0)
					else:
						(GM.f_file_text_readln(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber"))))
						GM.aset(GM.vget(318.0, "v_fileDone"), GM.vget(318.0, "v_fileNumber"), (GM.f_file_text_eof(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber")))))
				(GM.f_file_text_close(GM.aget(GM.vget(318.0, "v_file"), GM.vget(318.0, "v_fileNumber"))))
				if ((GM.error_occurred)) >= 0.5:
					GM.error_occurred = 0.0
				else:
					(self.script_console_log(GM.add(GM.aget(GM.vget(318.0, "v_fileName"), GM.vget(318.0, "v_fileNumber")), " - Executed Successfully"), 5.0))
				GM.vset(318.0, "v_fileNumber", GM.vget(318.0, "v_fileNumber") - 1.0)
	return 0.0
func script_console_run_program(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("All Files|*.*", "*.*"))
	if ((((GM.f_file_exists(argument0))) >= 0.5 and (argument0 != ""))):
		if (GM.eq(argument2, (-1.0))):
			return (GM.f_execute_shell(argument0, argument1))
		else:
			return (GM.f_execute_program(argument0, argument1, argument2))
	return 0.0
func script_console_resize(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.vget(318.0, "v_MAPDESIGNER") - (-1.0)) >= 0.00001)):
		(self.script_console_log("Unable to resize while in SC Map Designer", 2.0))
		(self.script_console_log("Set a window size before using the designer or exit, resize, and then return.", 3.0))
		return 0.0
	GM.vset(318.0, "v_roomLast", GM.room)
	GM.vset(318.0, "v_roomSet", argument0)
	GM.vset(318.0, "v_roomWidth", argument1)
	GM.vset(318.0, "v_roomHeight", argument2)
	(GM.f_room_set_width(GM.vget(318.0, "v_roomResize"), (GM.f_window_get_width())))
	(GM.f_room_set_height(GM.vget(318.0, "v_roomResize"), (GM.f_window_get_height())))
	(GM.f_room_goto(GM.vget(318.0, "v_roomResize")))
	return 0.0
func script_console_deleteItem(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(318.0, "v_deleteItem"), GM.k2(GM.vget(318.0, "v_deleteNumber"), 0.0), argument0)
	GM.aset(GM.vget(318.0, "v_deleteItem"), GM.k2(GM.vget(318.0, "v_deleteNumber"), 1.0), argument1)
	GM.vset(318.0, "v_deleteNumber", GM.vget(318.0, "v_deleteNumber") + 1.0)
	return 0.0
func script_console_intro(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(318.0, "v_introRoom", argument0)
	(self.script_console_clear())
	(self.script_console_about())
	(self.script_console_log("console_display();", 1.0))
	if (not ((GM.vget(318.0, "v_display")) >= 0.5)):
		(self.script_console_display())
	GM.vset(318.0, "v_enable", 0.0)
	GM.vset(GM.vget(318.0, "v_display_id"), "v_offset_x", (((GM.f_round(((GM.f_window_get_width()) / 2.0))) - (GM.f_round(((GM.f_sprite_get_width(GM.vget(318.0, "v_displaySprite"))) / 2.0)))) + GM.view_xview[int(0.0)]))
	if ((GM.vget(GM.vget(318.0, "v_display_id"), "v_offset_x") < 0.0)):
		GM.vset(GM.vget(318.0, "v_display_id"), "v_offset_x", 0.0)
	GM.vset(GM.vget(318.0, "v_display_id"), "v_offset_y", (((GM.f_round(((GM.f_window_get_height()) / 2.0))) - (GM.f_round(((GM.f_sprite_get_height(GM.vget(318.0, "v_displaySprite"))) / 2.0)))) + GM.view_yview[int(0.0)]))
	if ((GM.vget(GM.vget(318.0, "v_display_id"), "v_offset_y") < 0.0)):
		GM.vset(GM.vget(318.0, "v_display_id"), "v_offset_y", 0.0)
	GM.vsetb(GM.vget(318.0, "v_display_id"), "x", (GM.view_xview[int(0.0)] + GM.vget(GM.vget(318.0, "v_display_id"), "v_offset_x")))
	GM.vsetb(GM.vget(318.0, "v_display_id"), "y", (GM.view_yview[int(0.0)] + GM.vget(GM.vget(318.0, "v_display_id"), "v_offset_y")))
	GM.aset(GM.vget(318.0, "v_array"), 0.0, "console_intro_sound();")
	GM.aset(GM.vget(318.0, "v_array"), 1.0, "room_speed = 999;")
	GM.aset(GM.vget(318.0, "v_array"), 2.0, "console.introObj = object_add();")
	GM.aset(GM.vget(318.0, "v_array"), 3.0, "object_set_sprite(console.introObj,sprConsoleIntro);")
	GM.aset(GM.vget(318.0, "v_array"), 4.0, "object_set_depth(console.introObj,console.display_id.depth-100);")
	GM.aset(GM.vget(318.0, "v_array"), 5.0, "object_event_add(console.introObj,ev_create,0,\"console_intro_create();\");")
	GM.aset(GM.vget(318.0, "v_array"), 6.0, "console_intro_alarmEvents(console.introObj);")
	GM.aset(GM.vget(318.0, "v_array"), 7.0, "object_event_add(console.introObj,ev_destroy,0,\"console.alarm[2] = 1;\");")
	GM.aset(GM.vget(318.0, "v_array"), 8.0, "instance_create(console.midX,console.midY,console.introObj);")
	GM.aset(GM.vget(318.0, "v_array"), 9.0, "room_speed = 60;")
	GM.aset(GM.vget(318.0, "v_array"), 10.0, "console.alpha -= 0.1;")
	GM.vset(318.0, "v_introObj", (GM.f_object_add()))
	(GM.f_sprite_set_offset(216.0, (GM.f_round(((GM.f_sprite_get_width(216.0)) / 2.0))), (GM.f_round(((GM.f_sprite_get_height(216.0)) / 2.0)))))
	(GM.f_object_set_sprite(GM.vget(318.0, "v_introObj"), 216.0))
	(GM.f_object_set_depth(GM.vget(318.0, "v_introObj"), (GM.vb(GM.vget(318.0, "v_display_id"), "depth") - 100.0)))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 0.0, 0.0, "image_alpha = 0; alarm[0] = 1; textMode = 0; count = 0; alpha = console.alpha; console.alpha = 0.8;"))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 2.0, 0.0, "if (count < string_length(console.array[textMode])) { keyboard_string += string_char_at(console.array[textMode],count+1) count += 1; alarm[0] = 1; } else { keyboard_string = console.array[textMode]; alarm[1] = 1; };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 2.0, 1.0, "console_log(console.array[textMode],1); sound_play(sndConsoleIntro); keyboard_string = ''; count = 0; textMode += 1; if (textMode = 2) { room_speed = 999; }; if (textMode = 10) { room_speed = 60; alarm[2] = 1; sound_play(sndConsoleIntro2); console_log('//Enjoy the game!',3); } else { alarm[0] = 1; };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 2.0, 2.0, "image_alpha += 0.02; if (image_alpha >= 1) { image_alpha = 1; alarm[3] = 30; } else { alarm[2] = 1; };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 2.0, 3.0, "if (count < string_length(console.array[textMode])) { keyboard_string += string_char_at(console.array[textMode],count+1) count += 1; alarm[3] = 1; } else { keyboard_string = console.array[textMode]; alarm[4] = 1; };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 2.0, 4.0, "console_log(console.array[textMode],1); keyboard_string = ''; count = 0; console.alpha -= 0.1; if (console.alpha <= 0) { console.enable = 1; console_disable(); console.alpha = alpha; alarm[5] = 30; } else { alarm[3] = 1; };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 2.0, 5.0, "image_alpha -= 0.01; if (image_alpha <= 0) { instance_destroy(); } else { alarm[5] = 1; };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_introObj"), 1.0, 0.0, (("room_speed = " + (GM.f_string(GM.room_speed))) + "; console.alarm[1] = 2;")))
	GM.room_speed = 60.0
	(GM.f_instance_create(((GM.f_round(((GM.f_window_get_width()) / 2.0))) + GM.view_xview[int(0.0)]), (((GM.f_round(((GM.f_window_get_height()) / 2.0))) + GM.view_yview[int(0.0)]) - 10.0), GM.vget(318.0, "v_introObj")))
	return 0.0
func script_console_mplay_close(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_mplay_data_write(1.0, GM.add(GM.add("///", GM.vget(318.0, "v_mplayName")), " has disconnected///")))
	(GM.f_mplay_session_end())
	(GM.f_mplay_end())
	GM.vb(GM.vget(318.0, "v_RUNNER"), "alarm")[int(0.0)] = (-1.0)
	return 0.0
	return 0.0
func script_console_mplay_open(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((not GM.eq((GM.f_mplay_connect_status()), 0.0))):
		(self.script_console_log("An online connection is already established", 7.0))
		return 0.0
	var l_connect = 0.0
	if GM.truth((argument0)):
		l_connect = (GM.f_mplay_init_tcpip(argument1))
	else:
		l_connect = (GM.f_mplay_init_ipx())
	argument2 = (GM.f_string_replace_all((GM.f_string_replace_all(argument2, "/", "")), "*", ""))
	if (not (GM.truth(l_connect))):
		(self.script_console_log("Failed to initialize connection", 2.0))
		return 0.0
	if ((argument1 == "")):
		l_connect = (GM.f_mplay_session_create("SCconsole", 0.0, argument2))
	else:
		(GM.f_mplay_session_find())
		l_connect = (GM.f_mplay_session_join(0.0, argument2))
	if (not (GM.truth(l_connect))):
		(self.script_console_log("Failed to create / join session", 2.0))
		(GM.f_mplay_end())
		return 0.0
	(GM.f_mplay_data_mode(0.0))
	(GM.f_mplay_data_write(1.0, GM.add(GM.add("///", argument2), " has connected///")))
	(self.script_console_log("Connection Successful"))
	(self.script_console_log("To talk to others, make sure to start the line with a forward slash and space '/ '", 3.0))
	(self.script_console_log("For help on commands, type /help", 3.0))
	GM.vset(318.0, "v_mplayName", argument2)
	GM.vb(GM.vget(318.0, "v_RUNNER"), "alarm")[int(0.0)] = 1.0
	GM.aset(GM.vget(318.0, "v_mplayLast"), 0.0, "")
	GM.aset(GM.vget(318.0, "v_mplayLast"), 1.0, "")
	GM.vset(318.0, "v_mplayBlock", 0.0)
	return 1.0
	return 0.0
func script_console_mplay_parse(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq((GM.f_mplay_connect_status()), 0.0)):
		(self.script_console_log("No connection detected.  Unable to process command.", 2.0))
		return 0.0
	var l_message = 0.0
	var l_title = 0.0
	l_title = (GM.f_string_delete(argument0, (GM.f_string_pos((GM.f_chr(32.0)), argument0)), (GM.f_string_length(argument0))))
	l_message = (GM.f_string_delete(argument0, 1.0, (GM.f_string_pos((GM.f_chr(32.0)), argument0))))
	var _s94 = (l_title)
	var _s94_m = false
	for _sw95 in range(1):
		if _s94_m or GM.eq(_s94, "/"):
			_s94_m = true
		if _s94_m:
			pass
		if _s94_m or GM.eq(_s94, "/say"):
			_s94_m = true
		if _s94_m:
			(GM.f_mplay_data_write(1.0, GM.add(GM.add(GM.vget(318.0, "v_mplayName"), ": "), l_message)))
			break
		if _s94_m or GM.eq(_s94, "/me"):
			_s94_m = true
		if _s94_m:
			(GM.f_mplay_data_write(1.0, GM.add(GM.add(GM.add(GM.add("*", GM.vget(318.0, "v_mplayName")), " "), l_message), "*")))
			break
		if _s94_m or GM.eq(_s94, "/kick"):
			_s94_m = true
		if _s94_m:
			(GM.f_mplay_data_write(0.0, GM.add(GM.add(GM.add((GM.f_chr(0.0)), l_message), (GM.f_chr(1.0))), GM.vget(318.0, "v_mplayName"))))
			break
		if _s94_m or GM.eq(_s94, "/run"):
			_s94_m = true
		if _s94_m:
			(self.script_console_log(argument0, 1.0))
			(GM.f_mplay_data_write(0.0, GM.add(GM.add(GM.add((GM.f_chr(1.0)), l_message), "//Run by "), GM.vget(318.0, "v_mplayName"))))
			break
		if _s94_m or GM.eq(_s94, "/ping"):
			_s94_m = true
		if _s94_m:
			(self.script_console_log(argument0, 1.0))
			(GM.f_mplay_data_write(0.0, GM.add(GM.add(GM.add(GM.add(GM.add((GM.f_chr(2.0)), l_message), (GM.f_chr(1.0))), GM.vget(318.0, "v_mplayName")), (GM.f_chr(2.0))), (GM.f_string(GM.current_time())))))
			break
		if _s94_m or GM.eq(_s94, "/list"):
			_s94_m = true
		if _s94_m:
			(self.script_console_log(argument0, 1.0))
			var l_count = 0.0
			var l_number = 0.0
			l_count = 0.0
			l_number = (GM.f_mplay_player_find())
			while ((l_count < l_number)):
				(self.script_console_log((GM.f_mplay_player_name(l_count)), 7.0))
				l_count = GM.add(l_count, 1.0)
			break
		if _s94_m or GM.eq(_s94, "/send"):
			_s94_m = true
		if _s94_m:
			(self.script_console_log(argument0, 1.0))
			(GM.f_mplay_data_write(0.0, GM.add(GM.add(GM.add((GM.f_chr(4.0)), l_message), (GM.f_chr(1.0))), GM.vget(318.0, "v_mplayName"))))
			break
		if _s94_m or GM.eq(_s94, "/code"):
			_s94_m = true
		if _s94_m:
			(GM.f_mplay_data_write(0.0, GM.add((GM.f_chr(5.0)), l_message)))
			break
		if _s94_m or GM.eq(_s94, "/date"):
			_s94_m = true
		if _s94_m:
			(GM.f_mplay_data_write(0.0, GM.add(GM.add(GM.add((GM.f_chr(6.0)), l_message), (GM.f_chr(1.0))), GM.vget(318.0, "v_mplayName"))))
			break
		if _s94_m or GM.eq(_s94, "/help"):
			_s94_m = true
		if _s94_m:
			(self.script_console_log("Console Online Commands"))
			(self.script_console_log("/ [MESSAGE] or /say [MESSAGE] - Show or say text to all users.", 7.0))
			(self.script_console_log("/run [NAME] [CODE] - Run code in another users' console.", 7.0))
			(self.script_console_log("/help - This help information for the online commands.", 7.0))
			(self.script_console_log("/ping [NAME] - Pings another user, returns time in milliseconds.", 7.0))
			(self.script_console_log("/list - Displays a list of all the currently connected users.", 7.0))
			(self.script_console_log("/send [NAME] [MESSAGE] - Sends a private message to the specified user.", 7.0))
			(self.script_console_log("/me [ACTION] - Shows text as if you performed the action.", 7.0))
			(self.script_console_log("/code [NAME] [CODE] - Sends code segment to specified user.  Saves in a text file called 'code.txt'.", 7.0))
			(self.script_console_log("/date [NAME] - Gets the current time for the specified user.", 7.0))
			(self.script_console_log("/kick [NAME] - Kicks the specified user off the connection.", 7.0))
			break
	return 0.0
func script_console_mplay_receive(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_message = 0.0
	var l_title = 0.0
	l_message = (GM.f_string((GM.f_mplay_data_read(0.0))))
	if ((not GM.eq(l_message, GM.aget(GM.vget(318.0, "v_mplayLast"), 0.0)))):
		GM.aset(GM.vget(318.0, "v_mplayLast"), 0.0, l_message)
		l_title = (GM.f_string_char_at(l_message, 1.0))
		l_message = (GM.f_string_delete(l_message, 1.0, 1.0))
		var _s96 = (l_title)
		var _s96_m = false
		for _sw97 in range(1):
			if _s96_m or GM.eq(_s96, (GM.f_chr(0.0))):
				_s96_m = true
			if _s96_m:
				if (((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(32.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName"))):
					(self.script_console_log(("Kicked by " + (GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(1.0)), l_message))))), 7.0))
					(self.script_console_mplay_close())
					return 0.0
				break
			if _s96_m or GM.eq(_s96, (GM.f_chr(1.0))):
				_s96_m = true
			if _s96_m:
				if ((((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(32.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName")) and not ((GM.vget(318.0, "v_mplayBlock")) >= 0.5))):
					(self.script_console_run((GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(32.0)), l_message))))))
				break
			if _s96_m or GM.eq(_s96, (GM.f_chr(2.0))):
				_s96_m = true
			if _s96_m:
				if (((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(1.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName"))):
					(GM.f_mplay_data_write(0.0, ((GM.f_chr(3.0)) + (GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(1.0)), l_message)))))))
				break
			if _s96_m or GM.eq(_s96, (GM.f_chr(3.0))):
				_s96_m = true
			if _s96_m:
				if (((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(2.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName"))):
					(self.script_console_log((GM.f_string((GM.current_time() - (GM.f_real((GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(2.0)), l_message))))))))), 7.0))
				break
			if _s96_m or GM.eq(_s96, (GM.f_chr(4.0))):
				_s96_m = true
			if _s96_m:
				if (((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(32.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName"))):
					var l_temp = 0.0
					l_temp = (GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(32.0)), l_message))))
					(self.script_console_log((((GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(1.0)), l_message)))) + " sends: ") + (GM.f_string_delete(l_temp, (GM.f_string_pos((GM.f_chr(1.0)), l_temp)), (GM.f_string_length(l_temp))))), 8.0))
				break
			if _s96_m or GM.eq(_s96, (GM.f_chr(5.0))):
				_s96_m = true
			if _s96_m:
				if (((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(32.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName"))):
					var l_file = 0.0
					l_file = (GM.f_file_text_open_write(GM.add(GM.vget(318.0, "v_directory"), "code.txt")))
					(GM.f_file_text_write_string(l_file, (GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(32.0)), l_message))))))
					(GM.f_file_text_close(l_file))
				break
			if _s96_m or GM.eq(_s96, (GM.f_chr(6.0))):
				_s96_m = true
			if _s96_m:
				if (((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(32.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName"))):
					(GM.f_mplay_data_write(0.0, GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add(GM.add((((((GM.f_chr(7.0)) + (GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(1.0)), l_message))))) + (GM.f_chr(2.0))) + (GM.f_string(GM.vget(self, "v_current_year")))) + " "), GM.aget(GM.vget(318.0, "v_month"), GM.vget(self, "v_current_month"))), ", "), (GM.f_string(GM.vget(self, "v_current_day")))), ": ["), (self.script_string_time(GM.vget(self, "v_current_hour")))), ":"), (self.script_string_time(GM.vget(self, "v_current_minute")))), ":"), (self.script_string_time(GM.vget(self, "v_current_second")))), "]")))
				break
			if _s96_m or GM.eq(_s96, (GM.f_chr(7.0))):
				_s96_m = true
			if _s96_m:
				if (((GM.f_string_delete(l_message, (GM.f_string_pos((GM.f_chr(2.0)), l_message)), (GM.f_string_length(l_message)))) == GM.vget(318.0, "v_mplayName"))):
					(self.script_console_log((GM.f_string_delete(l_message, 1.0, (GM.f_string_pos((GM.f_chr(2.0)), l_message)))), 7.0))
				break
	l_message = (GM.f_mplay_data_read(1.0))
	if ((not GM.eq(l_message, GM.aget(GM.vget(318.0, "v_mplayLast"), 1.0)))):
		GM.aset(GM.vget(318.0, "v_mplayLast"), 1.0, l_message)
		(self.script_console_log(l_message, 8.0))
	return 0.0
	return 0.0
func script_stringArray(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((argument1 < 0.0) or (argument1 >= (GM.f_string_count("|", argument0))))):
		return ""
	var l_count = 0.0
	l_count = 0.0
	while ((l_count < argument1)):
		argument0 = (GM.f_string_delete(argument0, 1.0, (GM.f_string_pos("|", argument0))))
		l_count = GM.add(l_count, 1.0)
	return (GM.f_string_delete(argument0, (GM.f_string_pos("|", argument0)), (GM.f_string_length(argument0))))
	return 0.0
func script_console_pack_add(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_directory"))):
		argument0 = (GM.f_get_directory_alt("Select Directory", ""))
		if ((not (GM.truth((GM.f_directory_exists(argument0)))) or (argument0 == ""))):
			return 0.0
		if (GM.eq(GM.vget(318.0, "v_packFileNumber"), 0.0)):
			return (-1.0)
		var l_temp = 0.0
		var l_file = 0.0
		l_temp = (GM.f_file_find_first(GM.add(argument0, "\\*.*"), 0.0))
		while ((l_temp != "")):
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 0.0), l_temp)
			l_file = (GM.f_file_bin_open(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0)), 0.0))
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 1.0), (GM.f_file_bin_size(l_file)))
			(GM.f_file_bin_close(l_file))
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 2.0), (self.script_console_dll_pack(GM.add(GM.add(argument0, "\\"), l_temp), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0)))))
			GM.vset(318.0, "v_packFileNumber", GM.add(GM.vget(318.0, "v_packFileNumber"), 1.0))
			l_temp = (GM.f_file_find_next())
		(GM.f_file_find_close())
		return 1.0
	else:
		if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
			argument0 = (GM.f_get_open_filename("All Files|*.*", ""))
		if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
			return 0.0
		if (GM.eq(GM.vget(318.0, "v_packFileNumber"), 0.0)):
			return (-1.0)
		var l_count = 0.0
		var l_check = 0.0
		l_count = 0.0
		l_check = 0.0
		while (((l_count < GM.vget(318.0, "v_packFileNumber")) and GM.eq(l_check, 0.0))):
			if (GM.eq(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(l_count, 0.0)), (GM.f_filename_name(argument0)))):
				l_check = 1.0
			l_count = GM.add(l_count, 1.0)
		if (not (GM.truth(l_check))):
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 0.0), (GM.f_filename_name(argument0)))
			var l_file = 0.0
			l_file = (GM.f_file_bin_open(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0)), 0.0))
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 1.0), (GM.f_file_bin_size(l_file)))
			(GM.f_file_bin_close(l_file))
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 2.0), (self.script_console_dll_pack(argument0, GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0)))))
			GM.vset(318.0, "v_packFileNumber", GM.add(GM.vget(318.0, "v_packFileNumber"), 1.0))
			return 1.0
		else:
			return 0.0
	return 0.0
func script_console_pack_close(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(GM.vget(318.0, "v_packFileNumber"), 0.0)):
		return 0.0
	var l_file = 0.0
	var l_size = 0.0
	var l_count = 0.0
	var l_subcount = 0.0
	l_file = (GM.f_file_bin_open(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0)), 0.0))
	l_size = (GM.f_file_bin_size(l_file))
	(GM.f_file_bin_close(l_file))
	l_file = (GM.f_file_text_open_append(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0))))
	l_count = 0.0
	while ((l_count < ((GM.vget(318.0, "v_packFileNumber") - 1.0)))):
		(GM.f_file_text_write_string(l_file, GM.add(GM.add(GM.add(GM.add(GM.add(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 0.0)), "|"), (GM.f_string(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 1.0))))), "|"), (GM.f_string(GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 2.0))))), (GM.f_chr(1.0)))))
		l_count = GM.add(l_count, 1.0)
	(GM.f_file_text_write_string(l_file, ("?" + (GM.f_string(l_size)))))
	(GM.f_file_text_close(l_file))
	GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0), "")
	GM.vset(318.0, "v_packFileNumber", 0.0)
	return 1.0
	return 0.0
func script_console_pack_contents(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SC Pack|*.scpak", ""))
	if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
		return 0.0
	var l_file = 0.0
	var l_location = 0.0
	var l_temp = 0.0
	var l_count = 0.0
	l_file = (GM.f_file_bin_open(argument0, 0.0))
	(GM.f_file_bin_seek(l_file, ((GM.f_file_bin_size(l_file)) - 1.0)))
	while ((not GM.eq((GM.f_file_bin_read_byte(l_file)), (GM.f_ord("?"))))):
		(GM.f_file_bin_seek(l_file, ((GM.f_file_bin_position(l_file)) - 2.0)))
	l_location = ""
	while (((GM.f_file_bin_position(l_file)) < (GM.f_file_bin_size(l_file)))):
		l_location = GM.add(l_location, (GM.f_chr((GM.f_file_bin_read_byte(l_file)))))
	(GM.f_file_bin_seek(l_file, (GM.f_real(l_location))))
	GM.vset(318.0, "v_packFileNumber", 1.0)
	l_temp = 0.0
	while ((not GM.eq(l_temp, (GM.f_ord("?"))))):
		l_location = ""
		l_temp = 0.0
		while (((not GM.eq(l_temp, 1.0)) and (not GM.eq(l_temp, (GM.f_ord("?")))))):
			l_temp = (GM.f_file_bin_read_byte(l_file))
			if (((not GM.eq(l_temp, 1.0)) and (not GM.eq(l_temp, (GM.f_ord("?")))))):
				l_location = GM.add(l_location, (GM.f_chr(l_temp)))
		if ((not GM.eq(l_temp, (GM.f_ord("?"))))):
			GM.aset(GM.vget(318.0, "v_array"), (GM.vget(318.0, "v_packFileNumber") - 1.0), (GM.f_string_delete(l_location, (GM.f_string_pos("|", l_location)), (GM.f_string_length(l_location)))))
			if (GM.eq(argument1, 1.0)):
				(self.script_console_log(GM.aget(GM.vget(318.0, "v_array"), (GM.vget(318.0, "v_packFileNumber") - 1.0))))
			GM.vset(318.0, "v_packFileNumber", GM.add(GM.vget(318.0, "v_packFileNumber"), 1.0))
	(GM.f_file_bin_close(l_file))
	l_temp = (GM.vget(318.0, "v_packFileNumber") - 1.0)
	GM.vset(318.0, "v_packFileNumber", 0.0)
	return l_temp
	return 0.0
func script_console_pack_open(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_save_filename("SC Pack Files|*.scpak", ""))
		if ((((GM.f_filename_ext(argument0)) != ".scpak") and (argument0 != ""))):
			argument0 = GM.add(argument0, ".scpak")
	if ((((GM.f_filename_ext(argument0)) != ".scpak") or (argument0 == ""))):
		return 0.0
	if ((absf(GM.vget(318.0, "v_dll_use") - 1.0) >= 0.00001)):
		return (-1.0)
	GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(0.0, 0.0), argument0)
	GM.vset(318.0, "v_packFileNumber", 1.0)
	if (not (((GM.f_file_exists(GM.vget(318.0, "v_packFile")))) >= 0.5)):
		var l_file = 0.0
		l_file = (GM.f_file_text_open_write(GM.vget(318.0, "v_packFile")))
		(GM.f_file_text_close(l_file))
	return 1.0
	return 0.0
func script_console_pack_unpack(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SC Pack|*.scpak", ""))
	if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
		return 0.0
	if (not ((GM.vget(318.0, "v_dll_use")) >= 0.5)):
		return (-1.0)
	var l_file = 0.0
	var l_location = 0.0
	var l_temp = 0.0
	var l_count = 0.0
	l_file = (GM.f_file_bin_open(argument0, 0.0))
	(GM.f_file_bin_seek(l_file, ((GM.f_file_bin_size(l_file)) - 1.0)))
	while ((not GM.eq((GM.f_file_bin_read_byte(l_file)), (GM.f_ord("?"))))):
		(GM.f_file_bin_seek(l_file, ((GM.f_file_bin_position(l_file)) - 2.0)))
	l_location = ""
	while (((GM.f_file_bin_position(l_file)) < (GM.f_file_bin_size(l_file)))):
		l_location = GM.add(l_location, (GM.f_chr((GM.f_file_bin_read_byte(l_file)))))
	(GM.f_file_bin_seek(l_file, (GM.f_real(l_location))))
	GM.vset(318.0, "v_packFileNumber", 1.0)
	l_temp = 0.0
	while ((not GM.eq(l_temp, (GM.f_ord("?"))))):
		l_location = ""
		l_temp = 0.0
		while (((not GM.eq(l_temp, 1.0)) and (not GM.eq(l_temp, (GM.f_ord("?")))))):
			l_temp = (GM.f_file_bin_read_byte(l_file))
			if (((not GM.eq(l_temp, 1.0)) and (not GM.eq(l_temp, (GM.f_ord("?")))))):
				l_location = GM.add(l_location, (GM.f_chr(l_temp)))
		if ((not GM.eq(l_temp, (GM.f_ord("?"))))):
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 0.0), (GM.f_string_delete(l_location, (GM.f_string_pos("|", l_location)), (GM.f_string_length(l_location)))))
			l_location = (GM.f_string_delete(l_location, 1.0, (GM.f_string_pos("|", l_location))))
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 1.0), (GM.f_real((GM.f_string_delete(l_location, (GM.f_string_pos("|", l_location)), (GM.f_string_length(l_location)))))))
			GM.aset(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 2.0), (GM.f_real((GM.f_string_delete(l_location, 1.0, (GM.f_string_pos("|", l_location)))))))
			GM.vset(318.0, "v_packFileNumber", GM.add(GM.vget(318.0, "v_packFileNumber"), 1.0))
	(GM.f_file_bin_close(l_file))
	if (((GM.f_string(argument1)) == "0")):
		l_count = 0.0
		var l_winX = 0.0
		var l_winY = 0.0
		var l_winS = 0.0
		l_winX = (GM.f_round(((GM.f_window_get_width()) / 2.0)))
		l_winY = (GM.f_round(((GM.f_window_get_height()) / 2.0)))
		(GM.f_draw_rectangle_color((l_winX - 100.0), (l_winY - 50.0), GM.add(l_winX, 100.0), GM.add(l_winY, 50.0), 16777215.0, 16777215.0, 16777215.0, 16777215.0, 0.0))
		(GM.f_draw_rectangle_color((l_winX - 100.0), (l_winY - 50.0), GM.add(l_winX, 100.0), GM.add(l_winY, 50.0), 0.0, 0.0, 0.0, 0.0, 1.0))
		(GM.f_draw_set_font(GM.vget(318.0, "v_font")))
		(GM.f_draw_set_halign(0.0))
		(GM.f_draw_set_valign(0.0))
		(GM.f_draw_text_color((l_winX - (GM.f_round(((GM.f_string_width("Unpacking...Please Wait")) / 2.0)))), (l_winY - (GM.f_string_height("Unpacking...Please Wait"))), "Unpacking...Please Wait", 0.0, 0.0, 0.0, 0.0, 1.0))
		while ((l_count < ((GM.vget(318.0, "v_packFileNumber") - 1.0)))):
			if (not (((GM.f_file_exists(GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 0.0)))))) >= 0.5)):
				(self.script_console_dll_unpack(argument0, GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 0.0))), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 1.0)), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 2.0))))
			(GM.f_draw_rectangle_color((l_winX - 80.0), GM.add(l_winY, 10.0), GM.add(l_winX, 80.0), GM.add(l_winY, 30.0), 16777215.0, 16777215.0, 16777215.0, 16777215.0, 0.0))
			(GM.f_draw_rectangle_color((l_winX - 80.0), GM.add(l_winY, 10.0), (((l_winX - 80.0)) + (GM.f_round(((((GM.add(l_count, 1.0)) / ((GM.vget(318.0, "v_packFileNumber") - 1.0)))) * 160.0)))), GM.add(l_winY, 30.0), 16711680.0, 16711680.0, 16711680.0, 16711680.0, 0.0))
			(GM.f_draw_rectangle_color((l_winX - 80.0), GM.add(l_winY, 10.0), GM.add(l_winX, 80.0), GM.add(l_winY, 30.0), 0.0, 0.0, 0.0, 0.0, 1.0))
			l_winS = ((GM.f_string((GM.f_round(((((GM.add(l_count, 1.0)) / ((GM.vget(318.0, "v_packFileNumber") - 1.0)))) * 100.0))))) + "%")
			(GM.f_draw_text_color((l_winX - (GM.f_round(((GM.f_string_width(l_winS)) / 2.0)))), ((GM.add(l_winY, 20.0)) - (GM.f_round(((GM.f_string_height(l_winS)) / 2.0)))), l_winS, 0.0, 0.0, 0.0, 0.0, 1.0))
			if ((GM.vget(318.0, "v_unpackShow"))) >= 0.5:
				(GM.f_screen_refresh())
			l_count = GM.add(l_count, 1.0)
		GM.vset(318.0, "v_packFileNumber", 0.0)
		return 1.0
	else:
		l_count = 0.0
		while ((l_count < ((GM.vget(318.0, "v_packFileNumber") - 1.0)))):
			if (GM.eq(argument1, GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.add(l_count, 1.0), 0.0)))):
				GM.vset(318.0, "v_packFileNumber", GM.add(l_count, 1.0))
				l_count = GM.vget(318.0, "v_packFileNumber")
			l_count = GM.add(l_count, 1.0)
		if ((GM.eq(argument1, GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 0.0))) and not (((GM.f_file_exists(GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 0.0)))))) >= 0.5))):
			(self.script_console_dll_unpack(argument0, GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 0.0))), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 1.0)), GM.aget(GM.vget(318.0, "v_packFile"), GM.k2(GM.vget(318.0, "v_packFileNumber"), 2.0))))
			GM.vset(318.0, "v_packFileNumber", 0.0)
			return 1.0
	return 0.0
	return 0.0
func script_console_script(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(318.0, "v_scriptNumber", GM.vget(318.0, "v_scriptNumber") + 1.0)
	GM.aset(GM.vget(318.0, "v_arg"), 0.0, argument1)
	GM.aset(GM.vget(318.0, "v_arg"), 1.0, argument2)
	GM.aset(GM.vget(318.0, "v_arg"), 2.0, argument3)
	GM.aset(GM.vget(318.0, "v_arg"), 3.0, argument4)
	GM.aset(GM.vget(318.0, "v_arg"), 4.0, argument5)
	GM.aset(GM.vget(318.0, "v_arg"), 5.0, argument6)
	GM.aset(GM.vget(318.0, "v_arg"), 6.0, argument7)
	GM.aset(GM.vget(318.0, "v_arg"), 7.0, argument8)
	GM.aset(GM.vget(318.0, "v_arg"), 8.0, argument9)
	GM.aset(GM.vget(318.0, "v_arg"), 9.0, argument10)
	GM.aset(GM.vget(318.0, "v_arg"), 10.0, argument11)
	GM.aset(GM.vget(318.0, "v_arg"), 11.0, argument12)
	GM.aset(GM.vget(318.0, "v_arg"), 12.0, argument13)
	GM.aset(GM.vget(318.0, "v_arg"), 13.0, argument14)
	GM.aset(GM.vget(318.0, "v_arg"), 14.0, argument15)
	GM.vset(self, "v_scr", GM.vget(318.0, "v_SCRIPT"))
	(GM.f_instance_create(0.0, 0.0, argument0))
	GM.vset(318.0, "v_scriptNumber", GM.vget(318.0, "v_scriptNumber") - 1.0)
	return GM.aget(GM.vget(318.0, "v_scriptReturn"), (GM.vget(318.0, "v_scriptNumber") + 1.0))
	return 0.0
func script_console_script_delete(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_scr", GM.vget(318.0, "v_SCRIPT"))
	(GM.f_object_delete(argument0))
	return 0.0
func script_console_script_gml(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("GML files|*.gml", "*.gml"))
	if ((argument0 == "")):
		(self.script_console_log("No Filename Specified...", 2.0))
	else:
		if (not (((GM.f_file_exists(argument0))) >= 0.5)):
			(self.script_console_log("Non-Existant Filename...", 2.0))
		else:
			if (not (((GM.f_string_count(".gml", argument0))) >= 0.5)):
				(self.script_console_log("Invalid Filename Extention...", 2.0))
			else:
				GM.vset(self, "v_scr", GM.vget(318.0, "v_SCRIPT"))
				var l_file = 0.0
				var l_fileString = 0.0
				l_file = (GM.f_file_text_open_read(argument0))
				l_fileString = (GM.f_file_text_read_string(l_file))
				while (not (((GM.f_file_text_eof(l_file))) >= 0.5)):
					if ((absf((GM.f_string_pos("#define ", l_fileString)) - 1.0) < 0.00001)):
						(GM.f_execute_string(self, (("scr." + (GM.f_string_delete(l_fileString, 1.0, (GM.f_string_pos((GM.f_chr(32.0)), l_fileString))))) + " = object_add();")))
						(GM.f_execute_string(self, ("object = scr." + (GM.f_string_delete(l_fileString, 1.0, (GM.f_string_pos((GM.f_chr(32.0)), l_fileString)))))))
						(GM.f_object_set_persistent(GM.vget(self, "v_object"), 1.0))
						(GM.f_object_set_visible(GM.vget(self, "v_object"), 0.0))
						(GM.f_object_event_add(GM.vget(self, "v_object"), 0.0, 0.0, "scr = console.SCRIPT; argument0 = console.arg[0]; argument1 = console.arg[1]; argument2 = console.arg[2]; argument3 = console.arg[3]; argument4 = console.arg[4]; argument5 = console.arg[5]; argument6 = console.arg[6]; argument7 = console.arg[7]; argument8 = console.arg[8]; argument9 = console.arg[9]; argument10 = console.arg[10]; argument11 = console.arg[11]; argument12 = console.arg[12]; argument13 = console.arg[13]; argument14 = console.arg[14];"))
						l_fileString = (GM.f_file_text_read_string(l_file))
						while ((not (((GM.f_file_text_eof(l_file))) >= 0.5) and (absf((GM.f_string_pos("#define ", l_fileString)) - 1.0) >= 0.00001))):
							while (((GM.f_string_count("/*", l_fileString)) > (GM.f_string_count("*/", l_fileString)))):
								(GM.f_file_text_readln(l_file))
								l_fileString = GM.add(l_fileString, (GM.f_file_text_read_string(l_file)))
							while (((GM.f_string_count("{", l_fileString)) > (GM.f_string_count("}", l_fileString)))):
								(GM.f_file_text_readln(l_file))
								l_fileString = GM.add(l_fileString, (GM.f_file_text_read_string(l_file)))
								if (((GM.f_string_pos("//", l_fileString)) > 0.0)):
									l_fileString = (GM.f_string_delete(l_fileString, (GM.f_string_pos("//", l_fileString)), (GM.f_string_length(l_fileString))))
							while (((GM.f_string_char_at(l_fileString, (GM.f_string_length(l_fileString)))) == ",")):
								(GM.f_file_text_readln(l_file))
								l_fileString = GM.add(l_fileString, (GM.f_file_text_read_string(l_file)))
							if (((absf((GM.f_string_count("script_get", l_fileString)) - 0.0) < 0.00001) and (absf((GM.f_string_count("execute_", l_fileString)) - 0.0) < 0.00001))):
								(GM.f_object_event_add(GM.vget(self, "v_object"), 0.0, 0.0, l_fileString))
							(GM.f_file_text_readln(l_file))
							l_fileString = (GM.f_file_text_read_string(l_file))
					else:
						(GM.f_file_text_readln(l_file))
						l_fileString = (GM.f_file_text_read_string(l_file))
				(GM.f_object_event_add(GM.vget(self, "v_object"), 0.0, 0.0, "instance_destroy();"))
	return 0.0
	return 0.0
func script_console_script_set(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_done = 0.0
	var l_linecount = 0.0
	var l_temp = 0.0
	l_done = 0.0
	l_linecount = 0.0
	GM.vset(self, "v_scr", GM.vget(318.0, "v_SCRIPT"))
	(GM.f_execute_string(self, GM.add(argument0, " = object_add();")))
	(GM.f_execute_string(self, GM.add("object = ", argument0)))
	(GM.f_object_set_persistent(GM.vget(self, "v_object"), 1.0))
	(GM.f_object_set_visible(GM.vget(self, "v_object"), 0.0))
	(GM.f_object_event_add(GM.vget(self, "v_object"), 0.0, 0.0, "scr = console.SCRIPT; argument0 = console.arg[0]; argument1 = console.arg[1]; argument2 = console.arg[2]; argument3 = console.arg[3]; argument4 = console.arg[4]; argument5 = console.arg[5]; argument6 = console.arg[6]; argument7 = console.arg[7]; argument8 = console.arg[8]; argument9 = console.arg[9]; argument10 = console.arg[10]; argument11 = console.arg[11]; argument12 = console.arg[12]; argument13 = console.arg[13]; argument14 = console.arg[14];"))
	while (not (GM.truth(l_done))):
		l_linecount = GM.add(l_linecount, 1.0)
		(GM.f_file_text_readln(GM.vget(318.0, "v_fileEvent")))
		l_temp = (GM.f_string_replace_all((GM.f_file_text_read_string(GM.vget(318.0, "v_fileEvent"))), (GM.f_chr(9.0)), ""))
		if ((absf((GM.f_string_count("console_script_end(", l_temp)) - 1.0) < 0.00001)):
			l_done = 1.0
		else:
			while (((GM.f_string_count("/*", l_temp)) > (GM.f_string_count("*/", l_temp)))):
				l_linecount = GM.add(l_linecount, 1.0)
				(GM.f_file_text_readln(GM.vget(318.0, "v_fileEvent")))
				l_temp = GM.add(l_temp, (GM.f_string_replace_all((GM.f_file_text_read_string(GM.vget(318.0, "v_fileEvent"))), (GM.f_chr(9.0)), "")))
			while (((GM.f_string_count("{", l_temp)) > (GM.f_string_count("}", l_temp)))):
				l_linecount = GM.add(l_linecount, 1.0)
				(GM.f_file_text_readln(GM.vget(318.0, "v_fileEvent")))
				l_temp = GM.add(l_temp, (GM.f_string_replace_all((GM.f_file_text_read_string(GM.vget(318.0, "v_fileEvent"))), (GM.f_chr(9.0)), "")))
				if (((GM.f_string_pos("//", l_temp)) > 0.0)):
					l_temp = (GM.f_string_delete(l_temp, (GM.f_string_pos("//", l_temp)), (GM.f_string_length(l_temp))))
			if (((absf((GM.f_string_count("script_get", l_temp)) - 0.0) < 0.00001) and (absf((GM.f_string_count("execute_", l_temp)) - 0.0) < 0.00001))):
				(GM.f_object_event_add(GM.vget(self, "v_object"), 0.0, 0.0, l_temp))
	(GM.f_object_event_add(GM.vget(self, "v_object"), 0.0, 0.0, "instance_destroy();"))
	return l_linecount
	return 0.0
func script_returns(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(318.0, "v_scriptReturn"), GM.vget(318.0, "v_scriptNumber"), argument0)
	return 0.0
func script_console_step(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((GM.vget(318.0, "v_display"))) >= 0.5:
		if ((GM.vget(318.0, "v_display_step"))) >= 0.5:
			for _w98 in GM.with_list((GM.vget(318.0, "v_display_step_id")), self):
				if _w98._dead:
					continue
				_w98.other = self
				(GM.f_instance_destroy(_w98))
		else:
			GM.vset(318.0, "v_display_step_id", (GM.f_instance_create(0.0, 0.0, GM.vget(318.0, "v_DISPLAY"))))
			GM.vsetb(GM.vget(318.0, "v_display_step_id"), "image_index", 1.0)
			GM.vset(GM.vget(318.0, "v_display_step_id"), "v_offset_y", 240.0)
		GM.vset(318.0, "v_display_step", (1.0 if not ((GM.vget(318.0, "v_display_step")) >= 0.5) else 0.0))
	return 0.0
func script_console_step_add(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(318.0, "v_logStep"), GM.vget(318.0, "v_stepNumber"), (GM.f_string(argument0)))
	GM.vset(318.0, "v_stepNumber", GM.vget(318.0, "v_stepNumber") + 1.0)
	return 0.0
func script_console_step_clear(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_count = 0.0
	l_count = 0.0
	while ((l_count < 13.0)):
		GM.aset(GM.vget(318.0, "v_logStep"), l_count, "0;")
		l_count = GM.add(l_count, 1.0)
	GM.vset(318.0, "v_stepNumber", 0.0)
	return 0.0
func script_console_step_draw(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vsetb(GM.vget(self, "v_display_step_id"), "image_alpha", GM.vget(self, "v_alpha"))
	(GM.f_draw_set_font(GM.vget(self, "v_font")))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_valign(0.0))
	var l_count = 0.0
	var l_temp = 0.0
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_stepNumber"))):
		(GM.f_execute_string(self, ("sret = " + (GM.f_string(GM.aget(GM.vget(self, "v_logStep"), l_count))))))
		if ((GM.error_occurred)) >= 0.5:
			(self.script_console_step_remove(GM.add(l_count, 1.0)))
			GM.error_occurred = 0.0
		else:
			(GM.f_draw_text_color((GM.vb(GM.vget(self, "v_display_step_id"), "x") + 6.0), ((GM.vb(GM.vget(self, "v_display_step_id"), "y") + 8.0) + ((l_count * 16.0))), GM.add(((((GM.f_string(GM.add(l_count, 1.0))) + ". ") + (GM.f_string(GM.vget(self, "v_sret")))) + " = "), GM.aget(GM.vget(self, "v_logStep"), l_count)), 16777215.0, 16777215.0, 8421504.0, 8421504.0, GM.vget(self, "v_alpha")))
			if ((GM.vget(318.0, "v_externalLoggingStep"))) >= 0.5:
				var l_log = 0.0
				l_log = (GM.f_file_text_open_append(GM.add(GM.vget(318.0, "v_directory"), "step.log")))
				(GM.f_file_text_write_string(l_log, GM.add(((((GM.f_string(GM.add(l_count, 1.0))) + ". ") + (GM.f_string(GM.vget(self, "v_sret")))) + " = "), GM.aget(GM.vget(self, "v_logStep"), l_count))))
				(GM.f_file_text_writeln(l_log))
				(GM.f_file_text_close(l_log))
		l_count = GM.add(l_count, 1.0)
	return 0.0
func script_console_step_edit(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(318.0, "v_logStep"), (argument0 - 1.0), (GM.f_string(argument1)))
	return 0.0
func script_console_step_remove(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(318.0, "v_logStep"), (argument0 - 1.0), "0;")
	if ((argument0 < GM.vget(318.0, "v_stepNumber"))):
		var l_count = 0.0
		l_count = argument0
		while ((l_count < GM.vget(318.0, "v_stepNumber"))):
			GM.aset(GM.vget(318.0, "v_logStep"), (l_count - 1.0), GM.aget(GM.vget(318.0, "v_logStep"), l_count))
			l_count = GM.add(l_count, 1.0)
	GM.vset(318.0, "v_stepNumber", GM.vget(318.0, "v_stepNumber") - 1.0)
	return 0.0
func script_console_map_designer(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (not (((GM.f_file_exists(GM.add(GM.vget(318.0, "v_directory"), "N_Menu.dll")))) >= 0.5)):
		(self.script_console_log("Unable to locate N_Menu.dll, which is required for the map designer.", 2.0))
		return 0.0
	if (not ((GM.vget(318.0, "v_dll_use")) >= 0.5)):
		(self.script_console_log("The SCconsole.dll needs to be initialized first, which is required for the map designer.", 2.0))
		return 0.0
	if ((absf(GM.vget(318.0, "v_MAPDESIGNER") - (-1.0)) >= 0.00001)):
		(self.script_console_log("The SC Map Designer is already active.", 3.0))
		return 0.0
	(self.script_N_Menu_Init())
	if ((GM.vget(318.0, "v_display"))) >= 0.5:
		(self.script_console_display())
	if (((GM.f_string(argument0)) == "0")):
		argument0 = ""
	GM.vset(318.0, "v_MAPDESIGNER", (GM.f_object_add()))
	(GM.f_object_set_persistent(GM.vget(318.0, "v_MAPDESIGNER"), 1.0))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 0.0, 0.0, (("console_map_create('" + (GM.f_string(argument0))) + "');")))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("1")), "if (keyboard_check(vk_control) and mode != 0) { console_map_menuCheck(menuView[1]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("2")), "if (keyboard_check(vk_control) and mode != 1) { console_map_menuCheck(menuView[2]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("3")), "if (keyboard_check(vk_control) and mode != 2) { console_map_menuCheck(menuView[3]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("G")), "if (keyboard_check(vk_control)) { console_map_menuCheck(menuView[4]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("L")), "if (keyboard_check(vk_control)) { console_map_menuCheck(menuSettings[1]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("N")), "if (keyboard_check(vk_control)) { console_map_menuCheck(menuFile[1]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("O")), "if (keyboard_check(vk_control)) { console_map_menuCheck(menuFile[2]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("S")), "if (keyboard_check(vk_control)) { console_map_menuCheck(menuFile[3]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 9.0, (GM.f_ord("Q")), "if (keyboard_check(vk_control)) { console_map_menuCheck(menuFile[4]); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 2.0, 0.0, "view_xview[0] = vx + (mx - display_mouse_get_x()); view_yview[0] = vy + (my - display_mouse_get_y()); if (view_yview[0] < 0) { view_yview[0] = 0; }; alarm[0] = 1;"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 2.0, 1.0, "view_xview[1] = vx + (mx - display_mouse_get_x()); view_yview[1] = vy + (my - display_mouse_get_y()); if (view_xview[1] < 0) { view_xview[1] = 0; }; if (view_yview[1] + view_hview[1] > -1) { view_yview[1] = -window_get_height(); }; alarm[1] = 1;"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 3.0, GM.vget(self, "v_ev_step_end"), "if (!mouse_check_button(mb_none)) { console_map_press(); } else if (mouse_check_button_released(mb_right)) { alarm[0] = -1; alarm[1] = -1; }; var temp; temp = N_Menu_CheckMenus(); if (temp != 0) { console_map_menuCheck(temp); };"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 8.0, 0.0, "console_map_draw();"))
	(GM.f_object_event_add(GM.vget(318.0, "v_MAPDESIGNER"), 1.0, 0.0, "N_Menu_CleanUp();"))
	GM.vset(318.0, "v_roomLastEditor", GM.room)
	var l_winH = 0.0
	var l_winW = 0.0
	l_winW = (GM.f_window_get_width())
	l_winH = (GM.f_window_get_height())
	if (((GM.f_window_get_fullscreen()))) >= 0.5:
		l_winH = l_winH - (self.script_N_Menu_GetMenuBarHeight())
	if ((absf(GM.vget(318.0, "v_roomMapDesigner") - (-1.0)) < 0.00001)):
		GM.vset(318.0, "v_roomMapDesigner", (GM.f_room_add()))
	(GM.f_room_set_width(GM.vget(318.0, "v_roomMapDesigner"), l_winW))
	(GM.f_room_set_height(GM.vget(318.0, "v_roomMapDesigner"), l_winH))
	(GM.f_room_set_view_enabled(GM.vget(318.0, "v_roomMapDesigner"), 1.0))
	(GM.f_room_set_view(GM.vget(318.0, "v_roomMapDesigner"), 0.0, 1.0, 0.0, 0.0, l_winW, l_winH, 0.0, 0.0, l_winW, l_winH, 0.0, 0.0, 0.0, 0.0, -4.0))
	(GM.f_room_set_view(GM.vget(318.0, "v_roomMapDesigner"), 1.0, 0.0, 0.0, (-l_winH), (GM.f_round((l_winW / 4.0))), l_winH, 0.0, 0.0, (GM.f_round((l_winW / 4.0))), l_winH, 0.0, 0.0, 0.0, 0.0, -4.0))
	(GM.f_room_set_code(GM.vget(318.0, "v_roomMapDesigner"), "room_speed = 30; if (!instance_exists(console.MAPDESIGNER)) { instance_create(0,0,console.MAPDESIGNER); }; if (!window_get_fullscreen()) { window_set_size(window_get_width(),window_get_height()+N_Menu_GetMenuBarHeight()); };"))
	(GM.f_room_goto(GM.vget(318.0, "v_roomMapDesigner")))
	return 0.0
func script_console_map_designerExit(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_count = 0.0
	var l_back = 0.0
	l_count = 0.0
	while ((l_count < 8.0)):
		if (((GM.f_background_exists(GM.background_index[int(l_count)])))) >= 0.5:
			l_back = GM.background_index[int(l_count)]
			GM.background_index[int(l_count)] = (-1.0)
			(GM.f_background_delete(l_back))
		l_count = GM.add(l_count, 1.0)
	if (((GM.f_background_exists(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_tileBack"))))) >= 0.5:
		(GM.f_background_delete(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_tileBack")))
	l_count = 0.0
	while ((l_count < GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectNumber"))):
		if (((GM.f_sprite_exists(GM.aget(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectList"), GM.k2(l_count, 1.0)))))) >= 0.5:
			(GM.f_sprite_delete(GM.aget(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectList"), GM.k2(l_count, 1.0))))
		l_count = GM.add(l_count, 1.0)
	for _w99 in GM.with_list((GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_grid")), self):
		if _w99._dead:
			continue
		_w99.other = self
		(GM.f_instance_destroy(_w99))
	(GM.f_sprite_delete(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridSprite")))
	(GM.f_object_delete(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_grid")))
	for _w100 in GM.with_list((GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_mouse")), self):
		if _w100._dead:
			continue
		_w100.other = self
		(GM.f_instance_destroy(_w100))
	(GM.f_object_delete(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_mouse")))
	for _w101 in GM.with_list((GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_marker")), self):
		if _w101._dead:
			continue
		_w101.other = self
		(GM.f_instance_destroy(_w101))
	(GM.f_object_delete(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_marker")))
	for _w102 in GM.with_list((GM.vget(318.0, "v_MAPDESIGNER")), self):
		if _w102._dead:
			continue
		_w102.other = self
		(GM.f_instance_destroy(_w102))
	(GM.f_object_delete(GM.vget(318.0, "v_MAPDESIGNER")))
	GM.vset(318.0, "v_MAPDESIGNER", (-1.0))
	if (GM.eq(argument0, (-1.0))):
		argument0 = GM.vget(318.0, "v_roomLastEditor")
	GM.vset(318.0, "v_roomLast", argument0)
	GM.vset(318.0, "v_roomSet", (-2.0))
	(GM.f_room_set_width(GM.vget(318.0, "v_roomResize"), (GM.f_window_get_width())))
	(GM.f_room_set_height(GM.vget(318.0, "v_roomResize"), (GM.f_window_get_height())))
	(GM.f_room_goto(GM.vget(318.0, "v_roomResize")))
	return 0.0
func script_console_map_create(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_menuBar", (self.script_N_Menu_CreateMenuBar()))
	GM.aset(GM.vget(self, "v_menuFile"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuSettings"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuSettings"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuSettings"), 0.0), (("Load" + (GM.f_chr(9.0))) + "Ctrl+L"))))
	GM.aset(GM.vget(self, "v_menuSettings"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuSettings"), 0.0), "Save As")))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuFile"), 0.0), GM.aget(GM.vget(self, "v_menuSettings"), 0.0), "Global Settings"))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuFile"), 0.0)))
	GM.aset(GM.vget(self, "v_menuFile"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuFile"), 0.0), (("New" + (GM.f_chr(9.0))) + "Ctrl+N"))))
	GM.aset(GM.vget(self, "v_menuFile"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuFile"), 0.0), (("Open" + (GM.f_chr(9.0))) + "Ctrl+0"))))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuFile"), 0.0)))
	GM.aset(GM.vget(self, "v_menuFile"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuFile"), 0.0), (("Save As" + (GM.f_chr(9.0))) + "Ctrl+S"))))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuFile"), 0.0)))
	GM.aset(GM.vget(self, "v_menuFile"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuFile"), 0.0), (("Quit" + (GM.f_chr(9.0))) + "Ctrl+Q"))))
	GM.aset(GM.vget(self, "v_menuObjects"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuObjects"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), "Add New")))
	GM.aset(GM.vget(self, "v_menuRemove"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), 0.0), "Remove..."))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuObjects"), 0.0)))
	GM.aset(GM.vget(self, "v_menuSelect"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), 0.0), "Currently Selected"))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "Name")))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "Sprite")))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "X Offset")))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "Y Offset")))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "Depth")))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 6.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "Parameters")))
	GM.aset(GM.vget(self, "v_menuObjectSet"), 7.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "Assign SCCOM")))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), "Set Object..."))
	GM.aset(GM.vget(self, "v_menuTiles"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuTiles"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuTiles"), 0.0), "Load Tileset")))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuTiles"), 0.0)))
	GM.aset(GM.vget(self, "v_menuTiles"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuTiles"), 0.0), "Tile Width")))
	GM.aset(GM.vget(self, "v_menuTiles"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuTiles"), 0.0), "Tile Height")))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuTiles"), 0.0)))
	GM.aset(GM.vget(self, "v_menuTiles"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuTiles"), 0.0), "Offset Value")))
	GM.aset(GM.vget(self, "v_menuTiles"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuTiles"), 0.0), "Current Depth")))
	GM.aset(GM.vget(self, "v_menuBackground"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuBackground"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), "Set Background Color")))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuBackground"), 0.0)))
	GM.aset(GM.vget(self, "v_menuLayer"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuLayer"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "0")))
	GM.aset(GM.vget(self, "v_menuLayer"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "1")))
	GM.aset(GM.vget(self, "v_menuLayer"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "2")))
	GM.aset(GM.vget(self, "v_menuLayer"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "3")))
	GM.aset(GM.vget(self, "v_menuLayer"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "4")))
	GM.aset(GM.vget(self, "v_menuLayer"), 6.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "5")))
	GM.aset(GM.vget(self, "v_menuLayer"), 7.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "6")))
	GM.aset(GM.vget(self, "v_menuLayer"), 8.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "7")))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), GM.aget(GM.vget(self, "v_menuLayer"), 0.0), "Set Current Layer"))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuBackground"), 0.0)))
	GM.aset(GM.vget(self, "v_menuBackImage"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuBackImage"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackImage"), 0.0), "Clear")))
	GM.aset(GM.vget(self, "v_menuBackImage"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackImage"), 0.0), "Load File")))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), GM.aget(GM.vget(self, "v_menuBackImage"), 0.0), "Background Image"))
	GM.aset(GM.vget(self, "v_menuBackground"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), "Visible")))
	GM.aset(GM.vget(self, "v_menuBackground"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), "Foreground")))
	GM.aset(GM.vget(self, "v_menuBackground"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), "Horizontally Tiled")))
	GM.aset(GM.vget(self, "v_menuBackground"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), "Vertically Tiled")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "X Position")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "Y Position")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "X Scale")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "Y Scale")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "Horizontal Speed")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 6.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "Vertical Speed")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 7.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "Blend Color")))
	GM.aset(GM.vget(self, "v_menuBackSettings"), 8.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "Alpha Value")))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), GM.aget(GM.vget(self, "v_menuBackSettings"), 0.0), "Advanced Settings"))
	GM.aset(GM.vget(self, "v_menuInclude"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuIncludeItem"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuInclude"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), "Add New")))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), "Remove..."))
	GM.aset(GM.vget(self, "v_menuView"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuView"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuView"), 0.0), (("Object Mode" + (GM.f_chr(9.0))) + "Ctrl+1"))))
	GM.aset(GM.vget(self, "v_menuView"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuView"), 0.0), (("Tile Mode" + (GM.f_chr(9.0))) + "Ctrl+2"))))
	GM.aset(GM.vget(self, "v_menuView"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuView"), 0.0), (("Background Mode" + (GM.f_chr(9.0))) + "Ctrl+3"))))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuView"), 0.0)))
	GM.aset(GM.vget(self, "v_menuView"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuView"), 0.0), (("Show Grid" + (GM.f_chr(9.0))) + "Ctrl+G"))))
	GM.aset(GM.vget(self, "v_menuGrid"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuGrid"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuGrid"), 0.0), "Color")))
	GM.aset(GM.vget(self, "v_menuGrid"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuGrid"), 0.0), "Border Color")))
	GM.aset(GM.vget(self, "v_menuGrid"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuGrid"), 0.0), "Alpha Value")))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuGrid"), 0.0)))
	GM.aset(GM.vget(self, "v_menuGrid"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuGrid"), 0.0), "HSnap Length")))
	GM.aset(GM.vget(self, "v_menuGrid"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuGrid"), 0.0), "VSnap Length")))
	(self.script_N_Menu_AddMenu(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuGrid"), 0.0), "Set Grid..."))
	GM.aset(GM.vget(self, "v_menuView"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuView"), 0.0), "Center Offset Grid")))
	(self.script_N_Menu_AddSeparator(GM.aget(GM.vget(self, "v_menuView"), 0.0)))
	GM.aset(GM.vget(self, "v_menuView"), 6.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuView"), 0.0), "Selection Color")))
	GM.aset(GM.vget(self, "v_menuProperties"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuProperties"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuProperties"), 0.0), "Name")))
	GM.aset(GM.vget(self, "v_menuProperties"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuProperties"), 0.0), "Version")))
	GM.aset(GM.vget(self, "v_menuProperties"), 3.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuProperties"), 0.0), "Designer")))
	GM.aset(GM.vget(self, "v_menuProperties"), 4.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuProperties"), 0.0), "Comments")))
	GM.aset(GM.vget(self, "v_menuProperties"), 5.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuProperties"), 0.0), "Game To Open With")))
	if ((argument0 != "")):
		(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuProperties"), 0.0), GM.aget(GM.vget(self, "v_menuProperties"), 5.0), 1.0))
	GM.aset(GM.vget(self, "v_menuAbout"), 0.0, (self.script_N_Menu_CreatePopupMenu()))
	GM.aset(GM.vget(self, "v_menuAbout"), 1.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuAbout"), 0.0), "Basic Controls")))
	GM.aset(GM.vget(self, "v_menuAbout"), 2.0, (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuAbout"), 0.0), "About")))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuFile"), 0.0), "File"))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuObjects"), 0.0), "Objects"))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuTiles"), 0.0), "Tiles"))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuBackground"), 0.0), "Backgrounds"))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuView"), 0.0), "View"))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuInclude"), 0.0), "Include"))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuProperties"), 0.0), "Map Properties"))
	(self.script_N_Menu_AddMenu(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuAbout"), 0.0), "Help"))
	(self.script_N_Menu_ItemSetDisabled(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuTiles"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuBackground"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 1.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 4.0), 1.0))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), GM.aget(GM.vget(self, "v_menuLayer"), 1.0), 1.0))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), 0.0))
	(self.script_N_Menu_AttachMenuBar((GM.f_window_handle()), GM.vget(self, "v_menuBar")))
	GM.vset(self, "v_mode", 0.0)
	GM.aset(GM.vget(self, "v_modeText"), 0.0, "Object")
	GM.aset(GM.vget(self, "v_modeText"), 1.0, "Tile")
	GM.aset(GM.vget(self, "v_modeText"), 2.0, "Background")
	GM.aset(GM.vget(self, "v_modeItem"), 0.0, GM.aget(GM.vget(self, "v_menuObjects"), 0.0))
	GM.aset(GM.vget(self, "v_modeItem"), 1.0, GM.aget(GM.vget(self, "v_menuTiles"), 0.0))
	GM.aset(GM.vget(self, "v_modeItem"), 2.0, GM.aget(GM.vget(self, "v_menuBackground"), 0.0))
	GM.vset(self, "v_layer", 0.0)
	GM.aset(GM.vget(self, "v_backSet"), 0.0, "X Position")
	GM.aset(GM.vget(self, "v_backSet"), 1.0, "Y Position")
	GM.aset(GM.vget(self, "v_backSet"), 2.0, "X Scale")
	GM.aset(GM.vget(self, "v_backSet"), 3.0, "Y Scale")
	GM.aset(GM.vget(self, "v_backSet"), 4.0, "H Speed")
	GM.aset(GM.vget(self, "v_backSet"), 5.0, "V Speed")
	GM.aset(GM.vget(self, "v_backSet"), 6.0, "Blend Color")
	GM.aset(GM.vget(self, "v_backSet"), 7.0, "Alpha Setting")
	(self.script_console_map_menuUpdate())
	GM.vset(self, "v_gridHSnap", 32.0)
	GM.vset(self, "v_gridVSnap", 32.0)
	(GM.f_draw_rectangle_color(0.0, 0.0, 32.0, 32.0, 0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_draw_rectangle_color(0.0, 0.0, 31.0, 31.0, 16777215.0, 16777215.0, 16777215.0, 16777215.0, 1.0))
	(GM.f_draw_set_font(GM.vget(318.0, "v_font")))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_valign(0.0))
	(GM.f_draw_text_color((16.0 - (GM.f_round(((GM.f_string_width("G")) / 2.0)))), (16.0 - (GM.f_round(((GM.f_string_height("G")) / 2.0)))), "G", 8421504.0, 8421504.0, 8421504.0, 8421504.0, 1.0))
	GM.vset(self, "v_gridSprite", (GM.f_sprite_create_from_screen(0.0, 0.0, 32.0, 32.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)))
	GM.vset(self, "v_gridColor", 0.0)
	GM.vset(self, "v_gridMode", 0.0)
	GM.vset(self, "v_gridBorder", 16777215.0)
	GM.vset(self, "v_gridAlpha", 1.0)
	GM.vset(self, "v_gridShow", 1.0)
	GM.vset(self, "v_grid", (GM.f_object_add()))
	(GM.f_object_set_persistent(GM.vget(self, "v_grid"), 1.0))
	(GM.f_object_set_depth(GM.vget(self, "v_grid"), (-5000.0)))
	(GM.f_object_set_sprite(GM.vget(self, "v_grid"), GM.vget(self, "v_gridSprite")))
	(GM.f_object_event_add(GM.vget(self, "v_grid"), 6.0, GM.vget(self, "v_ev_left_press"), "alarm[0] = 1;"))
	(GM.f_object_event_add(GM.vget(self, "v_grid"), 6.0, GM.vget(self, "v_ev_left_release"), "alarm[0] = -1;"))
	(GM.f_object_event_add(GM.vget(self, "v_grid"), 2.0, 0.0, "x = mouse_x-16; y = mouse_y-16; if (x < console.MAPDESIGNER.gridHSnap * 2) { x = console.MAPDESIGNER.gridHSnap * 2; }; if (y < console.MAPDESIGNER.gridVSnap * 2) { y = console.MAPDESIGNER.gridVSnap * 2; }; if (x > console.MAPDESIGNER.gridHSnap * 255) { x = console.MAPDESIGNER.gridHSnap * 255; }; if (y > console.MAPDESIGNER.gridVSnap * 255) { y = console.MAPDESIGNER.gridVSnap * 255; }; move_snap(console.MAPDESIGNER.gridHSnap,console.MAPDESIGNER.gridVSnap); if (mouse_button = mb_left) { alarm[0] = 1; };"))
	(GM.f_instance_create((GM.vget(self, "v_gridHSnap") * 10.0), (GM.vget(self, "v_gridVSnap") * 10.0), GM.vget(self, "v_grid")))
	GM.vset(self, "v_mouse", (GM.f_object_add()))
	(GM.f_object_set_persistent(GM.vget(self, "v_mouse"), 1.0))
	(GM.f_object_set_depth(GM.vget(self, "v_mouse"), (-5001.0)))
	(GM.f_object_event_add(GM.vget(self, "v_mouse"), 0.0, 0.0, "count = 0; hue = 0; sat = 0; color = 0; G = 0; H = 0; V = 0;"))
	(GM.f_object_event_add(GM.vget(self, "v_mouse"), 3.0, GM.vget(self, "v_ev_step_end"), "G = console.MAPDESIGNER.gridMode; H = console.MAPDESIGNER.gridHSnap; V = console.MAPDESIGNER.gridVSnap; color = make_color_hsv(hue,sat,count); count += 10; if (count > 255) { count -= 255; }; x = ((mouse_x - G*round(H/2)) div H) * H; y = ((mouse_y - G*round(V/2)) div V) * V;"))
	(GM.f_object_event_add(GM.vget(self, "v_mouse"), 8.0, 0.0, "if (view_current = 0) { if (x > -1 and y > -1 and x < console.MAPDESIGNER.grid.x and y < console.MAPDESIGNER.grid.y) { draw_rectangle_color(G*round(H/2)+x+1,G*round(V/2)+y+1,G*round(H/2)+x+H-1,G*round(V/2)+y+V-1,color,color,color,color,1); }; };"))
	(GM.f_instance_create(GM.mouse_x, GM.mouse_y, GM.vget(self, "v_mouse")))
	GM.vset(self, "v_tileDepth", 10000.0)
	GM.vset(self, "v_tileSet", "")
	GM.vset(self, "v_tileBack", (-1.0))
	GM.vset(self, "v_tileH", 32.0)
	GM.vset(self, "v_tileV", 32.0)
	GM.vset(self, "v_tileX", 0.0)
	GM.vset(self, "v_tileY", 0.0)
	GM.vset(self, "v_tileO", 0.0)
	GM.vset(self, "v_tileTrans", 0.0)
	GM.vset(self, "v_tileHSlot", 0.0)
	GM.vset(self, "v_tileVSlot", 0.0)
	var l_count = 0.0
	var l_count2 = 0.0
	l_count = 0.0
	while ((l_count < 256.0)):
		l_count2 = 0.0
		while ((l_count2 < 256.0)):
			GM.aset(GM.vget(self, "v_tileA"), GM.k2(l_count, l_count2), (-1.0))
			GM.aset(GM.vget(self, "v_objectA"), GM.k2(l_count, l_count2), (-100.0))
			l_count2 = GM.add(l_count2, 1.0)
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	while ((l_count < 8.0)):
		GM.aset(GM.vget(self, "v_backLayer"), l_count, "")
		GM.aset(GM.vget(self, "v_backTrans"), l_count, 0.0)
		l_count = GM.add(l_count, 1.0)
	GM.aset(GM.vget(self, "v_objectList"), GM.k2(0.0, 0.0), (-100.0))
	GM.vset(self, "v_objectNumber", 0.0)
	GM.vset(self, "v_objectCurrent", 0.0)
	GM.vset(self, "v_marker", (GM.f_object_add()))
	(GM.f_object_set_persistent(GM.vget(self, "v_marker"), 1.0))
	(GM.f_object_set_visible(GM.vget(self, "v_marker"), 1.0))
	(GM.f_object_event_add(GM.vget(self, "v_marker"), 0.0, 0.0, "image_speed = 0;"))
	(GM.f_object_event_add(GM.vget(self, "v_marker"), 6.0, GM.vget(self, "v_ev_mouse_enter"), "if (console.MAPDESIGNER.mode = 0 and keyboard_check(vk_shift)) { image_alpha = 0.2; };"))
	(GM.f_object_event_add(GM.vget(self, "v_marker"), 6.0, GM.vget(self, "v_ev_mouse_leave"), "if (console.MAPDESIGNER.mode = 0) { image_alpha = 1; };"))
	(GM.f_object_event_add(GM.vget(self, "v_marker"), 8.0, 0.0, "draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,image_alpha); if (keyboard_check(vk_control)) { draw_rectangle_color(x,y,x+console.MAPDESIGNER.gridHSnap,y+console.MAPDESIGNER.gridVSnap,c_white,c_white,c_white,c_white,0); };"))
	GM.vset(self, "v_obMode", GM.vget(self, "v_gridMode"))
	GM.vset(self, "v_obX", GM.vb(GM.vget(self, "v_grid"), "x"))
	GM.vset(self, "v_obY", GM.vb(GM.vget(self, "v_grid"), "y"))
	GM.vset(self, "v_obHSnap", GM.vget(self, "v_gridHSnap"))
	GM.vset(self, "v_obVSnap", GM.vget(self, "v_gridVSnap"))
	GM.vset(self, "v_tiX", GM.vb(GM.vget(self, "v_grid"), "x"))
	GM.vset(self, "v_tiY", GM.vb(GM.vget(self, "v_grid"), "y"))
	GM.vset(self, "v_tiHSnap", GM.vget(self, "v_gridHSnap"))
	GM.vset(self, "v_tiVSnap", GM.vget(self, "v_gridVSnap"))
	GM.aset(GM.vget(self, "v_include"), 0.0, "")
	GM.vset(self, "v_includeNumber", 0.0)
	GM.aset(GM.vget(self, "v_Prop"), 0.0, "Untitled")
	GM.aset(GM.vget(self, "v_Prop"), 1.0, "1.0")
	GM.aset(GM.vget(self, "v_Prop"), 2.0, "")
	GM.aset(GM.vget(self, "v_Prop"), 3.0, "")
	GM.aset(GM.vget(self, "v_Prop"), 4.0, argument0)
	GM.vset(self, "v_PropGame", argument0)
	GM.room_caption = GM.add(GM.add(GM.add("SC Map Designer:  ", GM.aget(GM.vget(self, "v_modeText"), GM.vget(self, "v_mode"))), " mode -- "), GM.aget(GM.vget(self, "v_Prop"), 0.0))
	return 0.0
	return 0.0
func script_console_map_menuCheck(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var _s103 = (argument0)
	var _s103_m = false
	for _sw104 in range(1):
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuSettings"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_filename = 0.0
			l_filename = (GM.f_get_open_filename("SC MAP Global Settings|*.scgms", ""))
			if ((((GM.f_file_exists(l_filename))) >= 0.5 and (l_filename != ""))):
				if ((absf((self.script_console_dll_messageBox("Are you sure you want to load a global settings file?  All current information will be lost...", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
					(self.script_console_map_settingsLoad(l_filename))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuSettings"), 2.0)):
			_s103_m = true
		if _s103_m:
			var l_filename = 0.0
			l_filename = (GM.f_get_save_filename("SC MAP Global Settings|*.scgms", ""))
			if ((l_filename != "")):
				(self.script_console_map_settingsSave(l_filename, 0.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuFile"), 1.0)):
			_s103_m = true
		if _s103_m:
			if ((absf((self.script_console_dll_messageBox("Are you sure you want to start a new map?  All current information will be lost...", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
				var l_count = 0.0
				var l_back = 0.0
				l_count = 0.0
				for _w105 in GM.with_list((GM.vget(self, "v_marker")), self):
					if _w105._dead:
						continue
					_w105.other = self
					(GM.f_instance_destroy(_w105))
				GM.background_color = 12632256.0
				while ((l_count < 8.0)):
					if (((GM.f_background_exists(GM.background_index[int(l_count)])))) >= 0.5:
						l_back = GM.background_index[int(l_count)]
						GM.background_index[int(l_count)] = (-1.0)
						(GM.f_background_delete(l_back))
					l_count = GM.add(l_count, 1.0)
				if (((GM.f_background_exists(GM.vget(self, "v_tileBack"))))) >= 0.5:
					(GM.f_background_delete(GM.vget(self, "v_tileBack")))
				l_count = 0.0
				while ((l_count < GM.vget(self, "v_objectNumber"))):
					(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(l_count, 1.0))))
					(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuRemove"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), GM.add(l_count, 1.0))))
					if (((GM.f_sprite_exists(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 1.0)))))) >= 0.5:
						(GM.f_sprite_delete(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 1.0))))
					l_count = GM.add(l_count, 1.0)
				(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), 0.0), 1.0))
				(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), 0.0), 1.0))
				(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), 1.0))
				l_count = 0.0
				while ((l_count < GM.vget(self, "v_includeNumber"))):
					(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), GM.add(l_count, 1.0))))
					l_count = GM.add(l_count, 1.0)
				(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), 1.0))
				GM.vset(self, "v_layer", 0.0)
				GM.vset(self, "v_gridColor", 0.0)
				GM.vset(self, "v_gridMode", 0.0)
				GM.vset(self, "v_gridBorder", 16777215.0)
				GM.vset(self, "v_gridAlpha", 1.0)
				GM.vset(self, "v_gridShow", 1.0)
				GM.vset(self, "v_gridHSnap", 32.0)
				GM.vset(self, "v_gridVSnap", 32.0)
				GM.vset(self, "v_tileDepth", 10000.0)
				GM.vset(self, "v_tileSet", "")
				GM.vset(self, "v_tileBack", (-1.0))
				GM.vset(self, "v_tileH", 32.0)
				GM.vset(self, "v_tileV", 32.0)
				GM.vset(self, "v_tileX", 0.0)
				GM.vset(self, "v_tileY", 0.0)
				GM.vset(self, "v_tileO", 0.0)
				GM.vset(self, "v_tileTrans", 0.0)
				GM.vset(self, "v_tileHSlot", 0.0)
				GM.vset(self, "v_tileVSlot", 0.0)
				var l_count2 = 0.0
				l_count = 0.0
				while ((l_count < 256.0)):
					l_count2 = 0.0
					while ((l_count2 < 256.0)):
						GM.aset(GM.vget(self, "v_tileA"), GM.k2(l_count, l_count2), (-1.0))
						GM.aset(GM.vget(self, "v_objectA"), GM.k2(l_count, l_count2), (-100.0))
						l_count2 = GM.add(l_count2, 1.0)
					l_count = GM.add(l_count, 1.0)
				l_count = 0.0
				while ((l_count < 8.0)):
					GM.aset(GM.vget(self, "v_backLayer"), l_count, "")
					GM.aset(GM.vget(self, "v_backTrans"), l_count, 0.0)
					l_count = GM.add(l_count, 1.0)
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(0.0, 0.0), (-100.0))
				GM.vset(self, "v_objectNumber", 0.0)
				GM.vset(self, "v_objectCurrent", 0.0)
				GM.vsetb(GM.vget(self, "v_grid"), "x", (10.0 * GM.vget(self, "v_gridHSnap")))
				GM.vsetb(GM.vget(self, "v_grid"), "y", (10.0 * GM.vget(self, "v_gridVSnap")))
				GM.vset(self, "v_obMode", GM.vget(self, "v_gridMode"))
				GM.vset(self, "v_obX", GM.vb(GM.vget(self, "v_grid"), "x"))
				GM.vset(self, "v_obY", GM.vb(GM.vget(self, "v_grid"), "y"))
				GM.vset(self, "v_obHSnap", GM.vget(self, "v_gridHSnap"))
				GM.vset(self, "v_obVSnap", GM.vget(self, "v_gridVSnap"))
				GM.vset(self, "v_tiX", GM.vb(GM.vget(self, "v_grid"), "x"))
				GM.vset(self, "v_tiY", GM.vb(GM.vget(self, "v_grid"), "y"))
				GM.vset(self, "v_tiHSnap", GM.vget(self, "v_gridHSnap"))
				GM.vset(self, "v_tiVSnap", GM.vget(self, "v_gridVSnap"))
				GM.aset(GM.vget(self, "v_include"), 0.0, "")
				GM.vset(self, "v_includeNumber", 0.0)
				GM.aset(GM.vget(self, "v_Prop"), 0.0, "Untitled")
				GM.aset(GM.vget(self, "v_Prop"), 1.0, "1.0")
				GM.aset(GM.vget(self, "v_Prop"), 2.0, "")
				GM.aset(GM.vget(self, "v_Prop"), 3.0, "")
				GM.aset(GM.vget(self, "v_Prop"), 4.0, GM.vget(self, "v_PropGame"))
				GM.room_caption = GM.add(GM.add(GM.add("SC Map Designer:  ", GM.aget(GM.vget(self, "v_modeText"), GM.vget(self, "v_mode"))), " mode -- "), GM.aget(GM.vget(self, "v_Prop"), 0.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuFile"), 2.0)):
			_s103_m = true
		if _s103_m:
			(self.script_console_map_loadEditor(GM.vget(self, "v_c_dialog")))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuFile"), 3.0)):
			_s103_m = true
		if _s103_m:
			(self.script_console_map_saveAs(GM.vget(self, "v_c_dialog")))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuFile"), 4.0)):
			_s103_m = true
		if _s103_m:
			if ((absf((self.script_console_dll_messageBox("Are you sure you want to quit?", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
				(self.script_console_map_designerExit((-1.0)))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuView"), 1.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuView"), 2.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuView"), 3.0)):
			_s103_m = true
		if _s103_m:
			var l_oldmode = 0.0
			l_oldmode = GM.vget(self, "v_mode")
			(self.script_N_Menu_ItemSetDisabled(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_modeItem"), GM.vget(self, "v_mode")), 1.0))
			(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), (GM.vget(self, "v_mode") + 1.0)), 0.0))
			GM.vset(self, "v_mode", (argument0 - GM.aget(GM.vget(self, "v_menuView"), 1.0)))
			GM.room_caption = GM.add(GM.add(GM.add("SC Map Designer:  ", GM.aget(GM.vget(self, "v_modeText"), GM.vget(self, "v_mode"))), " mode -- "), GM.aget(GM.vget(self, "v_Prop"), 0.0))
			(self.script_N_Menu_ItemSetDisabled(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_modeItem"), GM.vget(self, "v_mode")), 0.0))
			(self.script_N_Menu_ItemSetDisabled(GM.vget(self, "v_menuBar"), GM.aget(GM.vget(self, "v_menuView"), (GM.vget(self, "v_mode") + 1.0)), 1.0))
			(self.script_N_Menu_AttachMenuBar((GM.f_window_handle()), 0.0))
			(self.script_N_Menu_AttachMenuBar((GM.f_window_handle()), GM.vget(self, "v_menuBar")))
			if ((absf(GM.vget(self, "v_mode") - 1.0) < 0.00001)):
				GM.view_visible[int(1.0)] = 1.0
				GM.vset(self, "v_gridMode", 0.0)
				GM.vset(self, "v_gridHSnap", GM.vget(self, "v_tiHSnap"))
				GM.vset(self, "v_gridVSnap", GM.vget(self, "v_tiVSnap"))
				GM.vset(self, "v_obX", GM.vb(GM.vget(self, "v_grid"), "x"))
				GM.vset(self, "v_obY", GM.vb(GM.vget(self, "v_grid"), "y"))
				GM.vsetb(GM.vget(self, "v_grid"), "x", GM.vget(self, "v_tiX"))
				GM.vsetb(GM.vget(self, "v_grid"), "y", GM.vget(self, "v_tiY"))
				(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), 1.0))
				for _w106 in GM.with_list((GM.vget(self, "v_marker")), self):
					if _w106._dead:
						continue
					_w106.other = self
					_w106.image_alpha = 0.1
			else:
				if (GM.eq(l_oldmode, 1.0)):
					GM.vset(self, "v_gridMode", GM.vget(self, "v_obMode"))
					GM.vset(self, "v_gridHSnap", GM.vget(self, "v_obHSnap"))
					GM.vset(self, "v_gridVSnap", GM.vget(self, "v_obVSnap"))
					GM.vset(self, "v_tiX", GM.vb(GM.vget(self, "v_grid"), "x"))
					GM.vset(self, "v_tiY", GM.vb(GM.vget(self, "v_grid"), "y"))
					GM.vsetb(GM.vget(self, "v_grid"), "x", GM.vget(self, "v_obX"))
					GM.vsetb(GM.vget(self, "v_grid"), "y", GM.vget(self, "v_obY"))
					GM.view_visible[int(1.0)] = 0.0
					(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), 0.0))
					for _w107 in GM.with_list((GM.vget(self, "v_marker")), self):
						if _w107._dead:
							continue
						_w107.other = self
						_w107.image_alpha = 1.0
			(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), GM.vget(self, "v_gridMode")))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuView"), 4.0)):
			_s103_m = true
		if _s103_m:
			GM.vset(self, "v_gridShow", (1.0 if not (GM.truth(GM.vget(self, "v_gridShow"))) else 0.0))
			(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 4.0), GM.vget(self, "v_gridShow")))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuView"), 5.0)):
			_s103_m = true
		if _s103_m:
			GM.vset(self, "v_gridMode", (1.0 if not (GM.truth(GM.vget(self, "v_gridMode"))) else 0.0))
			GM.vset(self, "v_obMode", GM.vget(self, "v_gridMode"))
			(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), GM.vget(self, "v_gridMode")))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuView"), 6.0)):
			_s103_m = true
		if _s103_m:
			var l_col = 0.0
			l_col = (GM.f_get_color((GM.f_make_color_hsv(GM.vget(GM.vget(self, "v_mouse"), "v_hue"), GM.vget(GM.vget(self, "v_mouse"), "v_sat"), 255.0))))
			if ((not GM.eq(l_col, (-1.0)))):
				GM.vset(GM.vget(self, "v_mouse"), "v_hue", (GM.f_color_get_hue(l_col)))
				GM.vset(GM.vget(self, "v_mouse"), "v_sat", (GM.f_color_get_saturation(l_col)))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuGrid"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_col = 0.0
			l_col = (GM.f_get_color(GM.vget(self, "v_gridColor")))
			if ((not GM.eq(l_col, (-1.0)))):
				GM.vset(self, "v_gridColor", l_col)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuGrid"), 2.0)):
			_s103_m = true
		if _s103_m:
			var l_col = 0.0
			l_col = (GM.f_get_color(GM.vget(self, "v_gridBorder")))
			if ((not GM.eq(l_col, (-1.0)))):
				GM.vset(self, "v_gridBorder", l_col)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuGrid"), 3.0)):
			_s103_m = true
		if _s103_m:
			var l_alpha = 0.0
			l_alpha = (self.script_console_dll_getDialog("SC Map Designer", "Enter in value for Grid Alpha (0.00 to 1.00)", (GM.f_string(GM.vget(self, "v_gridAlpha")))))
			if ((l_alpha != "")):
				l_alpha = (self.script_realString(l_alpha))
				if (((l_alpha > (-1.0)) and (l_alpha < 2.0))):
					GM.vset(self, "v_gridAlpha", l_alpha)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuGrid"), 4.0)):
			_s103_m = true
		if _s103_m:
			var l_alpha = 0.0
			l_alpha = (self.script_console_dll_getDialog("SC Map Designer", "Enter in value for Grid HSnap (1 to 255)", (GM.f_string(GM.vget(self, "v_gridHSnap")))))
			if ((l_alpha != "")):
				l_alpha = (GM.f_round((self.script_realString(l_alpha))))
				if (((l_alpha > 0.0) and (l_alpha < 256.0))):
					GM.vset(self, "v_gridHSnap", l_alpha)
			if ((absf(GM.vget(self, "v_mode") - 1.0) < 0.00001)):
				GM.vset(self, "v_tiHSnap", GM.vget(self, "v_gridHSnap"))
			else:
				GM.vset(self, "v_obHSnap", GM.vget(self, "v_gridHSnap"))
			(self.script_console_map_fix())
			for _w108 in GM.with_list((GM.vget(self, "v_grid")), self):
				if _w108._dead:
					continue
				_w108.other = self
				if ((_w108.x < (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridHSnap") * 2.0))):
					_w108.x = (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridHSnap") * 2.0)
				if ((_w108.y < (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridVSnap") * 2.0))):
					_w108.y = (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridVSnap") * 2.0)
				(GM.f_move_snap(_w108, GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridHSnap"), GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridVSnap")))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuGrid"), 5.0)):
			_s103_m = true
		if _s103_m:
			var l_alpha = 0.0
			l_alpha = (self.script_console_dll_getDialog("SC Map Designer", "Enter in value for Grid VSnap (1 to 255)", (GM.f_string(GM.vget(self, "v_gridVSnap")))))
			if ((l_alpha != "")):
				l_alpha = (GM.f_round((self.script_realString(l_alpha))))
				if (((l_alpha > 0.0) and (l_alpha < 256.0))):
					GM.vset(self, "v_gridVSnap", l_alpha)
			if ((absf(GM.vget(self, "v_mode") - 1.0) < 0.00001)):
				GM.vset(self, "v_tiVSnap", GM.vget(self, "v_gridVSnap"))
			else:
				GM.vset(self, "v_obVSnap", GM.vget(self, "v_gridVSnap"))
			(self.script_console_map_fix())
			for _w109 in GM.with_list((GM.vget(self, "v_grid")), self):
				if _w109._dead:
					continue
				_w109.other = self
				if ((_w109.x < (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridHSnap") * 2.0))):
					_w109.x = (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridHSnap") * 2.0)
				if ((_w109.y < (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridVSnap") * 2.0))):
					_w109.y = (GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridVSnap") * 2.0)
				(GM.f_move_snap(_w109, GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridHSnap"), GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_gridVSnap")))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuAbout"), 1.0)):
			_s103_m = true
		if _s103_m:
			if ((GM.vget(318.0, "v_dll_use"))) >= 0.5:
				var l_str = 0.0
				l_str = (((((((((("===Object Mode:" + (GM.f_chr(13.0))) + "Left Mouse Click - Places the currently selected object on map") + (GM.f_chr(13.0))) + "Ctrl + Left Mouse Click - Removes an object from the map") + (GM.f_chr(13.0))) + "Control Button (Hold) - Displays all grid slots which occupy an object") + (GM.f_chr(13.0))) + "Shift Button (Hold) - Objects under the cursor will become translucent (alpha'ed)") + (GM.f_chr(13.0))) + (GM.f_chr(13.0)))
				l_str = GM.add(l_str, (((((((("===Tile Mode:" + (GM.f_chr(13.0))) + "Left Mouse Click - Used for selecting a tile from tile view and placing a tile on map") + (GM.f_chr(13.0))) + "Ctrl + Left Mouse Click - Removes a tile from the map") + (GM.f_chr(13.0))) + "Shift + Left Mouse Click - Changes current tile selection, used in the map view") + (GM.f_chr(13.0))) + (GM.f_chr(13.0))))
				l_str = GM.add(l_str, (((("===Background Mode:" + (GM.f_chr(13.0))) + "None") + (GM.f_chr(13.0))) + (GM.f_chr(13.0))))
				l_str = GM.add(l_str, (((("===Any Mode:" + (GM.f_chr(13.0))) + "Right Mouse Button (Hold) - Moves the map view location") + (GM.f_chr(13.0))) + "Shift + Right Mouse Button (Hold) - Moves the tile view location"))
				(self.script_console_dll_messageBox(l_str, "SC Map Designer: Basic Controls", 0.0, 1.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuAbout"), 2.0)):
			_s103_m = true
		if _s103_m:
			if ((GM.vget(318.0, "v_dll_use"))) >= 0.5:
				(self.script_console_dll_messageBox(((((((((((("SC Map Designer" + (GM.f_chr(13.0))) + "Brandon Rohrer ") + (GM.f_chr(169.0))) + " 2005") + (GM.f_chr(13.0))) + "Version: 1.0.0.3") + (GM.f_chr(13.0))) + (GM.f_chr(13.0))) + "Part of the Shaltif's Command Console 2.0") + (GM.f_chr(13.0))) + "N_Menu.dll - By NintendoFreak88"), "SC Map Designer:  About", 0.0, 1.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 1.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 2.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 3.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 4.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 5.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 6.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 7.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuLayer"), 8.0)):
			_s103_m = true
		if _s103_m:
			(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), GM.aget(GM.vget(self, "v_menuLayer"), (GM.vget(self, "v_layer") + 1.0)), 0.0))
			GM.vset(self, "v_layer", (argument0 - GM.aget(GM.vget(self, "v_menuLayer"), 1.0)))
			(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuLayer"), 0.0), GM.aget(GM.vget(self, "v_menuLayer"), (GM.vget(self, "v_layer") + 1.0)), 1.0))
			(self.script_console_map_menuUpdate())
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackground"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_col = 0.0
			l_col = (GM.f_get_color(GM.background_color))
			if (((not GM.eq(l_col, GM.background_color)) and (not GM.eq(l_col, (-1.0))))):
				GM.background_color = l_col
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackground"), 2.0)):
			_s103_m = true
		if _s103_m:
			GM.background_visible[int(GM.vget(self, "v_layer"))] = (1.0 if not ((GM.background_visible[int(GM.vget(self, "v_layer"))]) >= 0.5) else 0.0)
			(self.script_console_map_menuUpdate())
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackground"), 3.0)):
			_s103_m = true
		if _s103_m:
			GM.background_foreground[int(GM.vget(self, "v_layer"))] = (1.0 if not ((GM.background_foreground[int(GM.vget(self, "v_layer"))]) >= 0.5) else 0.0)
			(self.script_console_map_menuUpdate())
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackground"), 4.0)):
			_s103_m = true
		if _s103_m:
			GM.aset(GM.vget(self, "v_background_htiled"), GM.vget(self, "v_layer"), (1.0 if not ((GM.aget(GM.vget(self, "v_background_htiled"), GM.vget(self, "v_layer"))) >= 0.5) else 0.0))
			(self.script_console_map_menuUpdate())
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackground"), 5.0)):
			_s103_m = true
		if _s103_m:
			GM.aset(GM.vget(self, "v_background_vtiled"), GM.vget(self, "v_layer"), (1.0 if not ((GM.aget(GM.vget(self, "v_background_vtiled"), GM.vget(self, "v_layer"))) >= 0.5) else 0.0))
			(self.script_console_map_menuUpdate())
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 1.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 2.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 3.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 4.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 5.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 6.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 8.0)):
			_s103_m = true
		if _s103_m:
			if ((GM.vget(318.0, "v_dll_use"))) >= 0.5:
				var l_value = 0.0
				var l_item = 0.0
				var l_array = 0.0
				l_item = (argument0 - GM.aget(GM.vget(self, "v_menuBackSettings"), 1.0))
				GM.aset(l_array, 0.0, GM.background_x[int(GM.vget(self, "v_layer"))])
				GM.aset(l_array, 1.0, GM.background_y[int(GM.vget(self, "v_layer"))])
				GM.aset(l_array, 2.0, GM.aget(GM.vget(self, "v_background_xscale"), GM.vget(self, "v_layer")))
				GM.aset(l_array, 3.0, GM.vget(self, "v_background_yscale"))
				GM.aset(l_array, 4.0, GM.background_hspeed[int(GM.vget(self, "v_layer"))])
				GM.aset(l_array, 5.0, GM.background_vspeed[int(GM.vget(self, "v_layer"))])
				GM.aset(l_array, 6.0, GM.aget(GM.vget(self, "v_background_blend"), GM.vget(self, "v_layer")))
				GM.aset(l_array, 7.0, GM.background_alpha[int(GM.vget(self, "v_layer"))])
				l_value = (self.script_console_dll_getDialog("SC Map Designer", GM.add("Enter in value for ", GM.aget(GM.vget(self, "v_backSet"), l_item)), (GM.f_string(GM.aget(l_array, l_item)))))
				if ((l_value != "")):
					l_value = (self.script_realString(l_value))
					var _s110 = (l_item)
					var _s110_m = false
					for _sw111 in range(1):
						if _s110_m or GM.eq(_s110, 0.0):
							_s110_m = true
						if _s110_m:
							GM.background_x[int(GM.vget(self, "v_layer"))] = (GM.f_round(l_value))
							break
						if _s110_m or GM.eq(_s110, 1.0):
							_s110_m = true
						if _s110_m:
							GM.background_y[int(GM.vget(self, "v_layer"))] = (GM.f_round(l_value))
							break
						if _s110_m or GM.eq(_s110, 2.0):
							_s110_m = true
						if _s110_m:
							GM.aset(GM.vget(self, "v_background_xscale"), GM.vget(self, "v_layer"), l_value)
							break
						if _s110_m or GM.eq(_s110, 3.0):
							_s110_m = true
						if _s110_m:
							GM.aset(GM.vget(self, "v_background_yscale"), GM.vget(self, "v_layer"), l_value)
							break
						if _s110_m or GM.eq(_s110, 4.0):
							_s110_m = true
						if _s110_m:
							GM.background_hspeed[int(GM.vget(self, "v_layer"))] = (GM.f_round(l_value))
							break
						if _s110_m or GM.eq(_s110, 5.0):
							_s110_m = true
						if _s110_m:
							GM.background_vspeed[int(GM.vget(self, "v_layer"))] = (GM.f_round(l_value))
							break
						if _s110_m or GM.eq(_s110, 7.0):
							_s110_m = true
						if _s110_m:
							GM.background_alpha[int(GM.vget(self, "v_layer"))] = l_value
							break
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackSettings"), 7.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (GM.f_get_color(GM.aget(GM.vget(self, "v_background_blend"), GM.vget(self, "v_layer"))))
			if ((not GM.eq(l_value, (-1.0)))):
				GM.aset(GM.vget(self, "v_background_blend"), GM.vget(self, "v_layer"), l_value)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackImage"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_back = 0.0
			l_back = GM.background_index[int(GM.vget(self, "v_layer"))]
			GM.background_index[int(GM.vget(self, "v_layer"))] = (-1.0)
			(GM.f_background_delete(l_back))
			(self.script_console_map_menuUpdate())
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuBackImage"), 2.0)):
			_s103_m = true
		if _s103_m:
			var l_back = 0.0
			var l_trans = 0.0
			l_back = (GM.f_get_open_filename("BMP & JPG|*.bmp;*.jpg", ""))
			if ((((GM.f_file_exists(l_back))) >= 0.5 and (l_back != ""))):
				GM.aset(GM.vget(self, "v_backLayer"), GM.vget(self, "v_layer"), l_back)
				if ((absf((self.script_console_dll_messageBox("Should background have transparency?", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
					l_trans = 1.0
				else:
					l_trans = 0.0
				GM.aset(GM.vget(self, "v_backTrans"), GM.vget(self, "v_layer"), l_trans)
				GM.background_index[int(GM.vget(self, "v_layer"))] = (GM.f_background_add(l_back, l_trans, 0.0, 0.0))
				(self.script_console_map_menuUpdate())
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuTiles"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_im = 0.0
			var l_trans = 0.0
			l_im = (GM.f_get_open_filename("BMP & JPG|*.bmp;*.jpg", ""))
			if ((((GM.f_file_exists(l_im))) >= 0.5 and (l_im != ""))):
				if ((absf((self.script_console_dll_messageBox("Continue loading new tileset?  All current tile information will be lost...", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
					GM.vset(self, "v_tileSet", l_im)
					if ((absf((self.script_console_dll_messageBox("Should tileset have transparency?", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
						l_trans = 1.0
					else:
						l_trans = 0.0
					if ((absf(GM.vget(self, "v_tileBack") - (-1.0)) >= 0.00001)):
						(GM.f_background_delete(GM.vget(self, "v_tileBack")))
					GM.vset(self, "v_tileBack", (GM.f_background_add(l_im, l_trans, 0.0, 0.0)))
					GM.vset(self, "v_tileTrans", l_trans)
					GM.vset(self, "v_tileX", 0.0)
					GM.vset(self, "v_tileY", (-(GM.f_background_get_height(GM.vget(self, "v_tileBack")))))
					GM.view_xview[int(1.0)] = 0.0
					GM.view_yview[int(1.0)] = GM.vget(self, "v_tileY")
					if (((GM.view_yview[int(1.0)] + GM.view_hview[int(1.0)]) > (-1.0))):
						GM.view_yview[int(1.0)] = (-(GM.f_window_get_height()))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuTiles"), 2.0)):
			_s103_m = true
		if _s103_m:
			var l_alpha = 0.0
			l_alpha = (self.script_console_dll_getDialog("SC Map Designer", "Enter in value for Tile Width (1 to 255)", (GM.f_string(GM.vget(self, "v_tileH")))))
			if ((l_alpha != "")):
				l_alpha = (self.script_realString(l_alpha))
				if (((l_alpha > 0.0) and (l_alpha < 256.0))):
					GM.vset(self, "v_tileH", l_alpha)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuTiles"), 3.0)):
			_s103_m = true
		if _s103_m:
			var l_alpha = 0.0
			l_alpha = (self.script_console_dll_getDialog("SC Map Designer", "Enter in value for Tile Height (1 to 255)", (GM.f_string(GM.vget(self, "v_tileV")))))
			if ((l_alpha != "")):
				l_alpha = (self.script_realString(l_alpha))
				if (((l_alpha > 0.0) and (l_alpha < 256.0))):
					GM.vset(self, "v_tileV", l_alpha)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuTiles"), 4.0)):
			_s103_m = true
		if _s103_m:
			var l_alpha = 0.0
			l_alpha = (self.script_console_dll_getDialog("SC Map Designer", "Enter in value for Tile Offset (0 to 255)", (GM.f_string(GM.vget(self, "v_tileO")))))
			if ((l_alpha != "")):
				l_alpha = (self.script_realString(l_alpha))
				if (((l_alpha > (-1.0)) and (l_alpha < 256.0))):
					GM.vset(self, "v_tileO", l_alpha)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuInclude"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_name = 0.0
			l_name = (GM.f_get_open_filename("All Files|*.*", ""))
			if ((((GM.f_file_exists(l_name))) >= 0.5 and (l_name != ""))):
				if (GM.eq(GM.vget(self, "v_includeNumber"), 0.0)):
					(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), 0.0))
				GM.aset(GM.vget(self, "v_include"), GM.vget(self, "v_includeNumber"), l_name)
				GM.vset(self, "v_includeNumber", GM.add(GM.vget(self, "v_includeNumber"), 1.0))
				GM.aset(GM.vget(self, "v_menuIncludeItem"), GM.vget(self, "v_includeNumber"), (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), (GM.f_filename_name(l_name)))))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjects"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_obj = 0.0
			var l_spr = 0.0
			var l_trans = 0.0
			l_obj = (self.script_console_dll_getDialog("SC Map Designer", "Enter in an Object Name", "obj"))
			if ((l_obj != "")):
				l_spr = (GM.f_get_open_filename("BMP, JPG, GIF|*.jpg;*.bmp;*.gif", ""))
				if ((((GM.f_file_exists(l_spr))) >= 0.5 and (l_spr != ""))):
					if ((absf((self.script_console_dll_messageBox("Should sprite have transparency?", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
						l_trans = 1.0
					else:
						l_trans = 0.0
					if (GM.eq(GM.vget(self, "v_objectNumber"), 0.0)):
						(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), 0.0), 0.0))
						(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), 0.0), 0.0))
						(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), 0.0))
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 0.0), l_obj)
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 1.0), (GM.f_sprite_add(l_spr, 1.0, 0.0, l_trans, 0.0, 0.0, 0.0, 0.0)))
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 2.0), (GM.f_filename_name(l_spr)))
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 3.0), l_trans)
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 4.0), 0.0)
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 5.0), 0.0)
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 6.0), "")
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 7.0), "")
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 8.0), l_spr)
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectNumber"), 9.0), 0.0)
					GM.vset(self, "v_objectNumber", GM.add(GM.vget(self, "v_objectNumber"), 1.0))
					GM.aset(GM.vget(self, "v_menuSelect"), GM.vget(self, "v_objectNumber"), (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), l_obj)))
					GM.aset(GM.vget(self, "v_menuRemove"), GM.vget(self, "v_objectNumber"), (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuRemove"), 0.0), l_obj)))
					if (GM.eq(GM.vget(self, "v_objectNumber"), 1.0)):
						(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.vget(self, "v_objectNumber")), 1.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjectSet"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in new object Name", GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 0.0))))
			if ((l_value != "")):
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 0.0), l_value)
				(self.script_N_Menu_ItemSetText(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), l_value))
				(self.script_N_Menu_ItemSetText(GM.aget(GM.vget(self, "v_menuRemove"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), l_value))
				(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 1.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjectSet"), 2.0)):
			_s103_m = true
		if _s103_m:
			var l_spr = 0.0
			var l_trans = 0.0
			l_spr = (GM.f_get_open_filename("BMP, JPG, GIF|*.jpg;*.bmp;*.gif", ""))
			if ((l_spr != "")):
				if ((absf((self.script_console_dll_messageBox("Should sprite have transparency?", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
					l_trans = 1.0
				else:
					l_trans = 0.0
				(GM.f_sprite_delete(GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 1.0))))
				for _w112 in GM.with_list((GM.vget(self, "v_marker")), self):
					if _w112._dead:
						continue
					_w112.other = self
					if (GM.eq(GM.vget(_w112, "v_object"), GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectCurrent"))):
						_w112.sprite_index = (-1.0)
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 1.0), (GM.f_sprite_add(l_spr, 1.0, 0.0, l_trans, 0.0, 0.0, 0.0, 0.0)))
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 2.0), (GM.f_filename_name(l_spr)))
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 8.0), l_spr)
				for _w113 in GM.with_list((GM.vget(self, "v_marker")), self):
					if _w113._dead:
						continue
					_w113.other = self
					if (GM.eq(GM.vget(_w113, "v_object"), GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectCurrent"))):
						_w113.sprite_index = GM.aget(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectList"), GM.k2(GM.vget(_w113, "v_object"), 1.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjectSet"), 3.0)):
			_s103_m = true
		if _s103_m:
			pass
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjectSet"), 4.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			var l_tmp = 0.0
			var l_tmp2 = 0.0
			l_tmp2 = (argument0 - GM.aget(GM.vget(self, "v_menuObjectSet"), 3.0))
			GM.aset(l_tmp, 0.0, "X")
			GM.aset(l_tmp, 1.0, "Y")
			l_value = (self.script_console_dll_getDialog("SC Map Designer", GM.add(GM.add("Enter in ", GM.aget(l_tmp, l_tmp2)), " Offset value (0 to 255)"), (GM.f_string(GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), GM.add(4.0, l_tmp2)))))))
			if ((l_value != "")):
				l_value = (GM.f_round((self.script_realString(l_value))))
				if (((l_value > (-1.0)) and (l_value < 256.0))):
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), GM.add(4.0, l_tmp2)), l_value)
			(GM.f_sprite_set_offset(GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 1.0)), GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 4.0)), GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 5.0))))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjectSet"), 5.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in Depth (0 to -255)", (GM.f_string(GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 9.0))))))
			if ((l_value != "")):
				l_value = (GM.f_round((self.script_realString(l_value))))
				if (((l_value > (-256.0)) and (l_value < 1.0))):
					GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 9.0), l_value)
			for _w114 in GM.with_list((GM.vget(self, "v_marker")), self):
				if _w114._dead:
					continue
				_w114.other = self
				if (GM.eq(GM.vget(_w114, "v_object"), GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectCurrent"))):
					_w114.depth = GM.aget(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectList"), GM.k2(GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectCurrent"), 9.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjectSet"), 6.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in Parameters values", GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 6.0))))
			if ((l_value != "")):
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 6.0), l_value)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuObjectSet"), 7.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (GM.f_get_open_filename("SCCOM Files|*.sccom", "*.sccom"))
			if ((((GM.f_file_exists(l_value))) >= 0.5 and (l_value != ""))):
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 7.0), (GM.f_filename_name(l_value)))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuProperties"), 1.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in Map's Name", GM.aget(GM.vget(self, "v_Prop"), 0.0)))
			if ((l_value != "")):
				GM.aset(GM.vget(self, "v_Prop"), 0.0, l_value)
				GM.room_caption = GM.add(GM.add(GM.add("SC Map Designer:  ", GM.aget(GM.vget(self, "v_modeText"), GM.vget(self, "v_mode"))), " mode -- "), GM.aget(GM.vget(self, "v_Prop"), 0.0))
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuProperties"), 2.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in Version Number", GM.aget(GM.vget(self, "v_Prop"), 1.0)))
			if ((l_value != "")):
				GM.aset(GM.vget(self, "v_Prop"), 1.0, l_value)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuProperties"), 3.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in Designer's Name", GM.aget(GM.vget(self, "v_Prop"), 2.0)))
			if ((l_value != "")):
				GM.aset(GM.vget(self, "v_Prop"), 2.0, l_value)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuProperties"), 4.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in any Comments", GM.aget(GM.vget(self, "v_Prop"), 3.0)))
			if ((l_value != "")):
				GM.aset(GM.vget(self, "v_Prop"), 3.0, l_value)
			break
		if _s103_m or GM.eq(_s103, GM.aget(GM.vget(self, "v_menuProperties"), 5.0)):
			_s103_m = true
		if _s103_m:
			var l_value = 0.0
			l_value = (self.script_console_dll_getDialog("SC Map Designer", "Enter in Game To Load With", GM.aget(GM.vget(self, "v_Prop"), 4.0)))
			if ((l_value != "")):
				GM.aset(GM.vget(self, "v_Prop"), 4.0, l_value)
			break
	var l_count = 0.0
	var l_subcount = 0.0
	var l_minicount = 0.0
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_objectNumber"))):
		if (GM.eq(argument0, GM.aget(GM.vget(self, "v_menuSelect"), GM.add(l_count, 1.0)))):
			(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 0.0))
			GM.vset(self, "v_objectCurrent", l_count)
			(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 1.0))
			l_count = GM.vget(self, "v_objectNumber")
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_objectNumber"))):
		if (GM.eq(argument0, GM.aget(GM.vget(self, "v_menuRemove"), GM.add(l_count, 1.0)))):
			if ((absf((self.script_console_dll_messageBox("Remove object, are you sure?", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
				var l_objCur = 0.0
				l_objCur = GM.vget(self, "v_objectCurrent")
				GM.vset(self, "v_objectCurrent", l_count)
				for _w115 in GM.with_list((GM.vget(self, "v_marker")), self):
					if _w115._dead:
						continue
					_w115.other = self
					if (GM.eq(GM.vget(_w115, "v_object"), GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectCurrent"))):
						(GM.f_instance_destroy(_w115))
					else:
						if ((GM.vget(_w115, "v_object") > GM.vget(GM.vget(318.0, "v_MAPDESIGNER"), "v_objectCurrent"))):
							GM.vset(_w115, "v_object", GM.vget(_w115, "v_object") - 1.0)
				GM.vset(self, "v_objectCurrent", l_objCur)
				if (GM.eq(l_count, GM.vget(self, "v_objectCurrent"))):
					(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 0.0))
					GM.vset(self, "v_objectCurrent", 0.0)
					(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 1.0))
				(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(l_count, 1.0))))
				(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuRemove"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), GM.add(l_count, 1.0))))
				while ((l_count < (GM.vget(self, "v_objectNumber") - 1.0))):
					GM.aset(GM.vget(self, "v_menuSelect"), GM.add(l_count, 1.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(l_count, 2.0)))
					GM.aset(GM.vget(self, "v_menuRemove"), GM.add(l_count, 1.0), GM.aget(GM.vget(self, "v_menuRemove"), GM.add(l_count, 2.0)))
					l_subcount = 0.0
					while ((l_subcount < 9.0)):
						GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, l_subcount), GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.add(l_count, 1.0), l_subcount)))
						l_subcount = GM.add(l_subcount, 1.0)
					l_count = GM.add(l_count, 1.0)
				GM.vset(self, "v_objectNumber", GM.vget(self, "v_objectNumber") - 1.0)
				l_count = GM.vget(self, "v_objectNumber")
				if (GM.eq(GM.vget(self, "v_objectNumber"), 0.0)):
					(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), 0.0), 1.0))
					(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), 0.0), 1.0))
					(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), 1.0))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_includeNumber"))):
		if (GM.eq(argument0, GM.aget(GM.vget(self, "v_menuIncludeItem"), GM.add(l_count, 1.0)))):
			if ((absf((self.script_console_dll_messageBox("Remove included item, are you sure?", "SC Map Designer", 2.0, 4.0)) - 3.0) < 0.00001)):
				(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), GM.add(l_count, 1.0))))
				while ((l_count < (GM.vget(self, "v_includeNumber") - 1.0))):
					GM.aset(GM.vget(self, "v_menuIncludeItem"), GM.add(l_count, 1.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), GM.add(l_count, 2.0)))
					GM.aset(GM.vget(self, "v_include"), l_count, GM.aget(GM.vget(self, "v_include"), GM.add(l_count, 1.0)))
					l_count = GM.add(l_count, 1.0)
				GM.vset(self, "v_includeNumber", GM.vget(self, "v_includeNumber") - 1.0)
				l_count = GM.vget(self, "v_includeNumber")
				if (GM.eq(GM.vget(self, "v_includeNumber"), 0.0)):
					(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), 1.0))
		l_count = GM.add(l_count, 1.0)
	return 0.0
	return 0.0
func script_console_map_menuUpdate(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), GM.aget(GM.vget(self, "v_menuBackground"), 2.0), GM.background_visible[int(GM.vget(self, "v_layer"))]))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), GM.aget(GM.vget(self, "v_menuBackground"), 3.0), GM.background_foreground[int(GM.vget(self, "v_layer"))]))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), GM.aget(GM.vget(self, "v_menuBackground"), 4.0), GM.aget(GM.vget(self, "v_background_htiled"), GM.vget(self, "v_layer"))))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuBackground"), 0.0), GM.aget(GM.vget(self, "v_menuBackground"), 5.0), GM.aget(GM.vget(self, "v_background_vtiled"), GM.vget(self, "v_layer"))))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuBackImage"), 0.0), GM.aget(GM.vget(self, "v_menuBackImage"), 1.0), (1.0 - (GM.f_background_exists(GM.background_index[int(GM.vget(self, "v_layer"))])))))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuBackImage"), 0.0), GM.aget(GM.vget(self, "v_menuBackImage"), 2.0), (GM.f_background_exists(GM.background_index[int(GM.vget(self, "v_layer"))]))))
	return 0.0
func script_console_map_draw(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_draw_set_alpha(GM.vget(self, "v_gridAlpha")))
	if GM.truth((GM.vget(self, "v_gridShow"))):
		var l_count = 0.0
		l_count = 0.0
		while ((l_count < ((GM.vb(GM.vget(self, "v_grid"), "x") / GM.vget(self, "v_gridHSnap"))))):
			(GM.f_draw_line_color(((l_count * GM.vget(self, "v_gridHSnap")) + ((GM.f_round((GM.vget(self, "v_gridHSnap") / 2.0))) * GM.vget(self, "v_gridMode"))), 0.0, ((l_count * GM.vget(self, "v_gridHSnap")) + ((GM.f_round((GM.vget(self, "v_gridHSnap") / 2.0))) * GM.vget(self, "v_gridMode"))), GM.vb(GM.vget(self, "v_grid"), "y"), GM.vget(self, "v_gridColor"), GM.vget(self, "v_gridColor")))
			l_count = GM.add(l_count, 1.0)
		l_count = 0.0
		while ((l_count < ((GM.vb(GM.vget(self, "v_grid"), "y") / GM.vget(self, "v_gridVSnap"))))):
			(GM.f_draw_line_color(0.0, ((l_count * GM.vget(self, "v_gridVSnap")) + ((GM.f_round((GM.vget(self, "v_gridVSnap") / 2.0))) * GM.vget(self, "v_gridMode"))), GM.vb(GM.vget(self, "v_grid"), "x"), ((l_count * GM.vget(self, "v_gridVSnap")) + ((GM.f_round((GM.vget(self, "v_gridVSnap") / 2.0))) * GM.vget(self, "v_gridMode"))), GM.vget(self, "v_gridColor"), GM.vget(self, "v_gridColor")))
			l_count = GM.add(l_count, 1.0)
	(GM.f_draw_rectangle_color(0.0, 0.0, GM.vb(GM.vget(self, "v_grid"), "x"), GM.vb(GM.vget(self, "v_grid"), "y"), GM.vget(self, "v_gridBorder"), GM.vget(self, "v_gridBorder"), GM.vget(self, "v_gridBorder"), GM.vget(self, "v_gridBorder"), 1.0))
	(GM.f_draw_set_alpha(1.0))
	if (((absf(GM.vget(self, "v_mode") - 1.0) < 0.00001) and (absf(GM.view_current - 1.0) < 0.00001))):
		if (((GM.f_background_exists(GM.vget(self, "v_tileBack"))))) >= 0.5:
			(GM.f_draw_background(GM.vget(self, "v_tileBack"), GM.vget(self, "v_tileX"), GM.vget(self, "v_tileY")))
			(GM.f_draw_rectangle_color((((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileHSlot")) + GM.vget(self, "v_tileX")) + (GM.vget(self, "v_tileHSlot") * GM.vget(self, "v_tileH"))), (((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileVSlot")) + GM.vget(self, "v_tileY")) + (GM.vget(self, "v_tileVSlot") * GM.vget(self, "v_tileV"))), (GM.add((((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileHSlot")) + GM.vget(self, "v_tileX")) + (GM.vget(self, "v_tileHSlot") * GM.vget(self, "v_tileH"))), GM.vget(self, "v_tileH")) - 1.0), (GM.add((((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileVSlot")) + GM.vget(self, "v_tileY")) + (GM.vget(self, "v_tileVSlot") * GM.vget(self, "v_tileV"))), GM.vget(self, "v_tileV")) - 1.0), 0.0, 0.0, 0.0, 0.0, 1.0))
			(GM.f_draw_rectangle_color(((((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileHSlot")) + GM.vget(self, "v_tileX")) + (GM.vget(self, "v_tileHSlot") * GM.vget(self, "v_tileH"))) + 1.0), ((((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileVSlot")) + GM.vget(self, "v_tileY")) + (GM.vget(self, "v_tileVSlot") * GM.vget(self, "v_tileV"))) + 1.0), (GM.add((((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileHSlot")) + GM.vget(self, "v_tileX")) + (GM.vget(self, "v_tileHSlot") * GM.vget(self, "v_tileH"))), GM.vget(self, "v_tileH")) - 2.0), (GM.add((((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileVSlot")) + GM.vget(self, "v_tileY")) + (GM.vget(self, "v_tileVSlot") * GM.vget(self, "v_tileV"))), GM.vget(self, "v_tileV")) - 2.0), 16777215.0, 16777215.0, 16777215.0, 16777215.0, 1.0))
		(GM.f_draw_line_color(((GM.view_xview[int(1.0)] + GM.view_wview[int(1.0)]) - 1.0), GM.view_yview[int(1.0)], ((GM.view_xview[int(1.0)] + GM.view_wview[int(1.0)]) - 1.0), (GM.view_yview[int(1.0)] + GM.view_hview[int(1.0)]), 0.0, 0.0))
	return 0.0
func script_console_map_press(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_mouse_check_button_pressed(2.0)))) >= 0.5:
		GM.vset(self, "v_mx", (GM.f_display_mouse_get_x()))
		GM.vset(self, "v_my", (GM.f_display_mouse_get_y()))
		GM.vset(self, "v_vx", GM.view_xview[int((GM.f_keyboard_check(16.0)))])
		GM.vset(self, "v_vy", GM.view_yview[int((GM.f_keyboard_check(16.0)))])
		alarm[int((GM.f_keyboard_check(16.0)))] = 1.0
	else:
		if (((GM.f_mouse_check_button_pressed(1.0)))) >= 0.5:
			var l_sH = 0.0
			var l_sV = 0.0
			l_sH = GM.idiv(GM.mouse_x, GM.vget(self, "v_gridHSnap"))
			l_sV = GM.idiv(GM.mouse_y, GM.vget(self, "v_gridVSnap"))
			var _s116 = (GM.vget(self, "v_mode"))
			var _s116_m = false
			for _sw117 in range(1):
				if _s116_m or GM.eq(_s116, 0.0):
					_s116_m = true
				if _s116_m:
					if ((GM.vget(self, "v_objectNumber") > 0.0)):
						if (((((l_sH < GM.idiv(GM.vb(GM.vget(self, "v_grid"), "x"), GM.vget(self, "v_gridHSnap"))) and (l_sV < GM.idiv(GM.vb(GM.vget(self, "v_grid"), "y"), GM.vget(self, "v_gridVSnap")))) and (l_sH > (-1.0))) and (l_sV > (-1.0)))):
							if (((GM.f_keyboard_check(16.0)))) >= 0.5:
								if (((GM.f_instance_exists(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV)))))) >= 0.5:
									(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 0.0))
									GM.vset(self, "v_objectCurrent", GM.vget(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV)), "v_object"))
									(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 1.0))
							else:
								if (((GM.f_instance_exists(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV)))))) >= 0.5:
									for _w118 in GM.with_list((GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV))), self):
										if _w118._dead:
											continue
										_w118.other = self
										(GM.f_instance_destroy(_w118))
									GM.aset(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV), (-100.0))
								if (not (((GM.f_keyboard_check(17.0))) >= 0.5)):
									GM.aset(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV), (GM.f_instance_create((l_sH * GM.vget(self, "v_gridHSnap")), (l_sV * GM.vget(self, "v_gridVSnap")), GM.vget(self, "v_marker"))))
									GM.vset(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV)), "v_object", GM.vget(self, "v_objectCurrent"))
									GM.vsetb(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV)), "sprite_index", GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 1.0)))
									GM.vsetb(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_sH, l_sV)), "depth", GM.aget(GM.vget(self, "v_objectList"), GM.k2(GM.vget(self, "v_objectCurrent"), 9.0)))
					break
				if _s116_m or GM.eq(_s116, 1.0):
					_s116_m = true
				if _s116_m:
					if ((GM.mouse_y < 0.0)):
						GM.vset(self, "v_tileHSlot", GM.idiv(GM.mouse_x, (GM.add(GM.vget(self, "v_tileH"), GM.vget(self, "v_tileO")))))
						GM.vset(self, "v_tileVSlot", GM.idiv(((GM.mouse_y - GM.vget(self, "v_tileY"))), (GM.add(GM.vget(self, "v_tileV"), GM.vget(self, "v_tileO")))))
					else:
						if (((GM.f_background_exists(GM.vget(self, "v_tileBack"))))) >= 0.5:
							if (((((l_sH < GM.idiv(GM.vb(GM.vget(self, "v_grid"), "x"), GM.vget(self, "v_gridHSnap"))) and (l_sV < GM.idiv(GM.vb(GM.vget(self, "v_grid"), "y"), GM.vget(self, "v_gridVSnap")))) and (l_sH > (-1.0))) and (l_sV > (-1.0)))):
								if (((GM.f_keyboard_check(16.0)))) >= 0.5:
									if (((GM.f_tile_exists(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_sH, l_sV)))))) >= 0.5:
										GM.vset(self, "v_tileHSlot", GM.idiv((GM.f_tile_get_left(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_sH, l_sV)))), (GM.add(GM.vget(self, "v_tileH"), GM.vget(self, "v_tileO")))))
										GM.vset(self, "v_tileVSlot", GM.idiv((GM.f_tile_get_top(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_sH, l_sV)))), (GM.add(GM.vget(self, "v_tileV"), GM.vget(self, "v_tileO")))))
								else:
									if (((GM.f_tile_exists(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_sH, l_sV)))))) >= 0.5:
										(GM.f_tile_delete(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_sH, l_sV))))
										GM.aset(GM.vget(self, "v_tileA"), GM.k2(l_sH, l_sV), (-1.0))
									if (not (((GM.f_keyboard_check(17.0))) >= 0.5)):
										GM.aset(GM.vget(self, "v_tileA"), GM.k2(l_sH, l_sV), (GM.f_tile_add(GM.vget(self, "v_tileBack"), ((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileHSlot")) + (GM.vget(self, "v_tileHSlot") * GM.vget(self, "v_tileH"))), ((GM.vget(self, "v_tileO") * GM.vget(self, "v_tileVSlot")) + (GM.vget(self, "v_tileVSlot") * GM.vget(self, "v_tileV"))), GM.vget(self, "v_tileH"), GM.vget(self, "v_tileV"), (l_sH * GM.vget(self, "v_gridHSnap")), (l_sV * GM.vget(self, "v_gridVSnap")), GM.vget(self, "v_tileDepth"))))
					break
	return 0.0
func script_console_map_fix(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_countH = 0.0
	var l_countV = 0.0
	l_countH = 0.0
	while ((l_countH < 256.0)):
		l_countV = 0.0
		while ((l_countV < 256.0)):
			if ((absf(GM.vget(self, "v_mode") - 1.0) < 0.00001)):
				if (((GM.f_tile_exists(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_countH, l_countV)))))) >= 0.5:
					(GM.f_tile_set_position(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_countH, l_countV)), (l_countH * GM.vget(self, "v_gridHSnap")), (l_countV * GM.vget(self, "v_gridVSnap"))))
			else:
				if (((GM.f_instance_exists(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_countH, l_countV)))))) >= 0.5:
					GM.vsetb(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_countH, l_countV)), "x", (l_countH * GM.vget(self, "v_gridHSnap")))
					GM.vsetb(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_countH, l_countV)), "y", (l_countV * GM.vget(self, "v_gridVSnap")))
			l_countV = GM.add(l_countV, 1.0)
		l_countH = GM.add(l_countH, 1.0)
	return 0.0
func script_console_map_settingsSave(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_file = 0.0
	var l_ext = 0.0
	var l_path = 0.0
	GM.aset(l_ext, 0.0, ".scgms")
	GM.aset(l_ext, 1.0, ".scmed")
	l_path = (GM.f_filename_path(argument0))
	argument0 = (GM.f_filename_change_ext((GM.f_filename_name(argument0)), ""))
	l_file = (GM.f_file_text_open_write(GM.add(GM.add(l_path, argument0), ".scmgs")))
	if (((GM.f_file_exists(GM.add(GM.add(l_path, argument0), GM.aget(l_ext, argument1)))))) >= 0.5:
		(GM.f_file_delete(GM.add(GM.add(l_path, argument0), GM.aget(l_ext, argument1))))
	(GM.f_file_text_close(l_file))
	if ((absf(GM.vget(self, "v_mode") - 1.0) < 0.00001)):
		GM.vset(self, "v_tiX", GM.vb(GM.vget(self, "v_grid"), "x"))
		GM.vset(self, "v_tiY", GM.vb(GM.vget(self, "v_grid"), "y"))
	else:
		GM.vset(self, "v_obX", GM.vb(GM.vget(self, "v_grid"), "x"))
		GM.vset(self, "v_obY", GM.vb(GM.vget(self, "v_grid"), "y"))
	l_file = (GM.f_file_bin_open(GM.add(GM.add(l_path, argument0), ".scmgs"), 1.0))
	(GM.f_file_bin_write_byte(l_file, GM.idiv(GM.vget(self, "v_obX"), GM.vget(self, "v_obHSnap"))))
	(GM.f_file_bin_write_byte(l_file, GM.idiv(GM.vget(self, "v_obY"), GM.vget(self, "v_obVSnap"))))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_obHSnap")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_obVSnap")))
	(GM.f_file_bin_write_byte(l_file, GM.idiv(GM.vget(self, "v_tiX"), GM.vget(self, "v_tiHSnap"))))
	(GM.f_file_bin_write_byte(l_file, GM.idiv(GM.vget(self, "v_tiY"), GM.vget(self, "v_tiVSnap"))))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tiHSnap")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tiVSnap")))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_hue(GM.vget(self, "v_gridColor")))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_saturation(GM.vget(self, "v_gridColor")))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_value(GM.vget(self, "v_gridColor")))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_hue(GM.vget(self, "v_gridBorder")))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_saturation(GM.vget(self, "v_gridBorder")))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_value(GM.vget(self, "v_gridBorder")))))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_gridMode")))
	(GM.f_file_bin_write_byte(l_file, (GM.f_round((GM.vget(self, "v_gridAlpha") * 100.0)))))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_gridShow")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileH")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileV")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileO")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileTrans")))
	(GM.f_file_bin_write_byte(l_file, GM.idiv((GM.f_abs(GM.vget(self, "v_tileDepth"))), 256.0)))
	(GM.f_file_bin_write_byte(l_file, fmod((GM.f_abs(GM.vget(self, "v_tileDepth"))), 256.0)))
	(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.vget(self, "v_tileDepth"))) + 1.0)))
	var l_count = 0.0
	var l_subcount = 0.0
	var l_mark = 0.0
	var l_semimark = 0.0
	var l_len = 0.0
	l_count = 0.0
	l_len = (GM.f_string_length((GM.f_filename_name(GM.vget(self, "v_tileSet")))))
	while ((l_count < l_len)):
		(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at((GM.f_filename_name(GM.vget(self, "v_tileSet"))), GM.add(l_count, 1.0)))))))
		l_count = GM.add(l_count, 1.0)
	(GM.f_file_bin_write_byte(l_file, 0.0))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_objectNumber")))
	GM.aset(l_mark, 0.0, 0.0)
	GM.aset(l_mark, 1.0, 2.0)
	GM.aset(l_mark, 2.0, 6.0)
	GM.aset(l_mark, 3.0, 7.0)
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_objectNumber"))):
		l_semimark = 0.0
		while ((l_semimark < 4.0)):
			l_len = (GM.f_string_length(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, GM.aget(l_mark, l_semimark)))))
			l_subcount = 0.0
			while ((l_subcount < l_len)):
				(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, GM.aget(l_mark, l_semimark))), GM.add(l_subcount, 1.0)))))))
				l_subcount = GM.add(l_subcount, 1.0)
			(GM.f_file_bin_write_byte(l_file, 0.0))
			l_semimark = GM.add(l_semimark, 1.0)
		(GM.f_file_bin_write_byte(l_file, GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 3.0))))
		(GM.f_file_bin_write_byte(l_file, GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 4.0))))
		(GM.f_file_bin_write_byte(l_file, GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 5.0))))
		(GM.f_file_bin_write_byte(l_file, (255.0 - (GM.f_abs(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 9.0)))))))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_hue(GM.background_color))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_saturation(GM.background_color))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_value(GM.background_color))))
	while ((l_count < 8.0)):
		if (((GM.f_background_exists(GM.background_index[int(l_count)])))) >= 0.5:
			(GM.f_file_bin_write_byte(l_file, 1.0))
			l_len = (GM.f_string_length((GM.f_filename_name(GM.aget(GM.vget(self, "v_backLayer"), l_count)))))
			l_subcount = 0.0
			while ((l_subcount < l_len)):
				(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at((GM.f_filename_name(GM.aget(GM.vget(self, "v_backLayer"), l_count))), GM.add(l_subcount, 1.0)))))))
				l_subcount = GM.add(l_subcount, 1.0)
			(GM.f_file_bin_write_byte(l_file, 0.0))
			(GM.f_file_bin_write_byte(l_file, ((((GM.background_visible[int(l_count)] + (GM.background_foreground[int(l_count)] * 2.0)) + (GM.aget(GM.vget(self, "v_background_htiled"), l_count) * 4.0)) + (GM.aget(GM.vget(self, "v_background_vtiled"), l_count) * 8.0)) + (GM.aget(GM.vget(self, "v_backTrans"), l_count) * 16.0))))
			(GM.f_file_bin_write_byte(l_file, GM.idiv((GM.f_abs(GM.background_x[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, fmod((GM.f_abs(GM.background_x[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_x[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, GM.idiv((GM.f_abs(GM.background_y[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, fmod((GM.f_abs(GM.background_y[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_y[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, (GM.f_round(((GM.f_abs(GM.aget(GM.vget(self, "v_background_xscale"), l_count))) * 100.0)))))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.aget(GM.vget(self, "v_background_xscale"), l_count))) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, (GM.f_round(((GM.f_abs(GM.aget(GM.vget(self, "v_background_yscale"), l_count))) * 100.0)))))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.aget(GM.vget(self, "v_background_yscale"), l_count))) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, GM.background_hspeed[int(l_count)]))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_hspeed[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, GM.background_vspeed[int(l_count)]))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_vspeed[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, (GM.f_round((GM.background_alpha[int(l_count)] * 100.0)))))
			(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_hue(GM.aget(GM.vget(self, "v_background_blend"), l_count)))))
			(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_saturation(GM.aget(GM.vget(self, "v_background_blend"), l_count)))))
			(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_value(GM.aget(GM.vget(self, "v_background_blend"), l_count)))))
		else:
			(GM.f_file_bin_write_byte(l_file, 0.0))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_includeNumber")))
	while ((l_count < GM.vget(self, "v_includeNumber"))):
		l_len = (GM.f_string_length((GM.f_filename_name(GM.aget(GM.vget(self, "v_include"), l_count)))))
		l_subcount = 0.0
		while ((l_subcount < l_len)):
			(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at((GM.f_filename_name(GM.aget(GM.vget(self, "v_include"), l_count))), GM.add(l_subcount, 1.0)))))))
			l_subcount = GM.add(l_subcount, 1.0)
		(GM.f_file_bin_write_byte(l_file, 0.0))
		l_count = GM.add(l_count, 1.0)
	(GM.f_file_bin_close(l_file))
	(self.script_console_pack_open(GM.add(GM.add(l_path, argument0), ".scpak")))
	(self.script_console_pack_add(GM.add(GM.add(l_path, argument0), ".scmgs")))
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_objectNumber"))):
		(self.script_console_pack_add(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 8.0))))
		l_count = GM.add(l_count, 1.0)
	(self.script_console_pack_add(GM.vget(self, "v_tileSet")))
	l_count = 0.0
	while ((l_count < 8.0)):
		(self.script_console_pack_add(GM.aget(GM.vget(self, "v_backLayer"), l_count)))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_includeNumber"))):
		(self.script_console_pack_add(GM.aget(GM.vget(self, "v_include"), l_count)))
		l_count = GM.add(l_count, 1.0)
	(self.script_console_pack_close())
	(GM.f_file_rename(GM.add(GM.add(l_path, argument0), ".scpak"), GM.add(GM.add(l_path, argument0), GM.aget(l_ext, argument1))))
	(GM.f_file_delete(GM.add(GM.add(l_path, argument0), ".scmgs")))
	return 1.0
	return 0.0
func script_console_map_settingsLoad(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(self.script_console_pack_unpack(argument0))
	var l_path = 0.0
	var l_file = 0.0
	var l_len = 0.0
	var l_count = 0.0
	var l_mark = 0.0
	var l_semimark = 0.0
	l_path = (GM.f_filename_path(argument0))
	var l_winX = 0.0
	var l_winY = 0.0
	l_winX = (GM.f_round(((GM.f_window_get_width()) / 2.0)))
	l_winY = (GM.f_round(((GM.f_window_get_height()) / 2.0)))
	(GM.f_draw_set_font(GM.vget(318.0, "v_font")))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_valign(0.0))
	(GM.f_draw_rectangle_color((l_winX - 100.0), (l_winY - 50.0), GM.add(l_winX, 100.0), GM.add(l_winY, 50.0), 16777215.0, 16777215.0, 16777215.0, 16777215.0, 0.0))
	(GM.f_draw_rectangle_color((l_winX - 100.0), (l_winY - 50.0), GM.add(l_winX, 100.0), GM.add(l_winY, 50.0), 0.0, 0.0, 0.0, 0.0, 1.0))
	(GM.f_draw_text_color((l_winX - (GM.f_round(((GM.f_string_width("Loading Settings...")) / 2.0)))), (l_winY - (GM.f_round(((GM.f_string_height("Loading Settings...")) / 2.0)))), "Loading Settings...", 0.0, 0.0, 0.0, 0.0, 1.0))
	(GM.f_screen_refresh())
	l_file = (GM.f_file_bin_open(GM.add(l_path, (GM.f_filename_change_ext((GM.f_filename_name(argument0)), ".scmgs"))), 0.0))
	GM.vset(self, "v_obX", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_obY", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_obHSnap", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_obX", (GM.vget(self, "v_obX") * GM.vget(self, "v_obHSnap")))
	GM.vset(self, "v_obVSnap", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_obY", (GM.vget(self, "v_obY") * GM.vget(self, "v_obVSnap")))
	GM.vset(self, "v_tiX", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tiY", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tiHSnap", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tiX", (GM.vget(self, "v_tiX") * GM.vget(self, "v_tiHSnap")))
	GM.vset(self, "v_tiVSnap", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tiY", (GM.vget(self, "v_tiY") * GM.vget(self, "v_tiVSnap")))
	GM.vset(self, "v_gridColor", (GM.f_make_color_hsv((GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)))))
	GM.vset(self, "v_gridBorder", (GM.f_make_color_hsv((GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)))))
	GM.vset(self, "v_gridMode", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_gridAlpha", ((GM.f_file_bin_read_byte(l_file)) / 100.0))
	GM.vset(self, "v_gridShow", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tileH", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tileV", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tileO", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tileTrans", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_tileDepth", ((GM.add(((GM.f_file_bin_read_byte(l_file)) * 256.0), (GM.f_file_bin_read_byte(l_file)))) * (((GM.f_file_bin_read_byte(l_file)) - 1.0))))
	GM.vset(self, "v_tileHSlot", 0.0)
	GM.vset(self, "v_tileVSlot", 0.0)
	if (((GM.f_background_exists(GM.vget(self, "v_tileBack"))))) >= 0.5:
		(GM.f_background_delete(GM.vget(self, "v_tileBack")))
		GM.vset(self, "v_tileBack", (-1.0))
	l_len = (GM.f_file_bin_read_byte(l_file))
	GM.vset(self, "v_tileSet", "")
	while ((not GM.eq(l_len, 0.0))):
		GM.vset(self, "v_tileSet", GM.add(GM.vget(self, "v_tileSet"), (GM.f_chr(l_len))))
		l_len = (GM.f_file_bin_read_byte(l_file))
	GM.vset(self, "v_tileSet", GM.add(l_path, GM.vget(self, "v_tileSet")))
	GM.vset(self, "v_tileBack", (GM.f_background_add(GM.vget(self, "v_tileSet"), GM.vget(self, "v_tileTrans"), 0.0, 0.0)))
	GM.vset(self, "v_tileX", 0.0)
	GM.vset(self, "v_tileY", (-(GM.f_background_get_height(GM.vget(self, "v_tileBack")))))
	GM.view_xview[int(1.0)] = 0.0
	GM.view_yview[int(1.0)] = GM.vget(self, "v_tileY")
	if (((GM.view_yview[int(1.0)] + GM.view_hview[int(1.0)]) > (-1.0))):
		GM.view_yview[int(1.0)] = (-(GM.f_window_get_height()))
	for _w119 in GM.with_list((GM.vget(self, "v_marker")), self):
		if _w119._dead:
			continue
		_w119.other = self
		(GM.f_instance_destroy(_w119))
	if ((GM.vget(self, "v_objectNumber") > 0.0)):
		(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 0.0))
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_objectNumber"))):
		(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuRemove"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), GM.add(l_count, 1.0))))
		(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(l_count, 1.0))))
		(GM.f_sprite_delete(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 1.0))))
		l_count = GM.add(l_count, 1.0)
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), 0.0), 1.0))
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), 1.0))
	GM.vset(self, "v_objectNumber", (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_objectCurrent", 0.0)
	l_count = 0.0
	GM.aset(l_mark, 0.0, 0.0)
	GM.aset(l_mark, 1.0, 2.0)
	GM.aset(l_mark, 2.0, 6.0)
	GM.aset(l_mark, 3.0, 7.0)
	while ((l_count < GM.vget(self, "v_objectNumber"))):
		l_semimark = 0.0
		while ((l_semimark < 4.0)):
			l_len = (GM.f_file_bin_read_byte(l_file))
			GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, GM.aget(l_mark, l_semimark)), "")
			while ((not GM.eq(l_len, 0.0))):
				GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, GM.aget(l_mark, l_semimark)), GM.add(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, GM.aget(l_mark, l_semimark))), (GM.f_chr(l_len))))
				l_len = (GM.f_file_bin_read_byte(l_file))
			l_semimark = GM.add(l_semimark, 1.0)
		GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, 3.0), (GM.f_file_bin_read_byte(l_file)))
		GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, 4.0), (GM.f_file_bin_read_byte(l_file)))
		GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, 5.0), (GM.f_file_bin_read_byte(l_file)))
		GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, 8.0), GM.add(l_path, GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 2.0))))
		GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, 9.0), (-((255.0 - (GM.f_file_bin_read_byte(l_file))))))
		GM.aset(GM.vget(self, "v_objectList"), GM.k2(l_count, 1.0), (GM.f_sprite_add(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 8.0)), 1.0, 0.0, GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 3.0)), 0.0, 0.0, GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 4.0)), GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 5.0)))))
		GM.aset(GM.vget(self, "v_menuSelect"), GM.add(l_count, 1.0), (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 0.0)))))
		GM.aset(GM.vget(self, "v_menuRemove"), GM.add(l_count, 1.0), (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuRemove"), 0.0), GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 0.0)))))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	GM.background_color = (GM.f_make_color_hsv((GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file))))
	while ((l_count < 8.0)):
		if ((GM.aget(GM.vget(self, "v_backLayer"), l_count) != "")):
			l_semimark = GM.background_index[int(l_count)]
			GM.background_index[int(l_count)] = (-1.0)
			(GM.f_background_delete(l_semimark))
		GM.aset(GM.vget(self, "v_backLayer"), l_count, "")
		if GM.truth(((GM.f_file_bin_read_byte(l_file)))):
			l_len = (GM.f_file_bin_read_byte(l_file))
			while ((not GM.eq(l_len, 0.0))):
				GM.aset(GM.vget(self, "v_backLayer"), l_count, GM.add(GM.aget(GM.vget(self, "v_backLayer"), l_count), (GM.f_chr(l_len))))
				l_len = (GM.f_file_bin_read_byte(l_file))
			GM.aset(GM.vget(self, "v_backLayer"), l_count, GM.add(l_path, GM.aget(GM.vget(self, "v_backLayer"), l_count)))
			l_semimark = (GM.f_file_bin_read_byte(l_file))
			if ((l_semimark >= 16.0)):
				GM.aset(GM.vget(self, "v_backTrans"), l_count, 1.0)
				l_semimark = l_semimark - 16.0
			else:
				GM.aset(GM.vget(self, "v_backTrans"), l_count, 0.0)
			GM.background_index[int(l_count)] = (GM.f_background_add(GM.aget(GM.vget(self, "v_backLayer"), l_count), GM.aget(GM.vget(self, "v_backTrans"), l_count), 0.0, 0.0))
			if ((l_semimark >= 8.0)):
				GM.aset(GM.vget(self, "v_background_vtiled"), l_count, 1.0)
				l_semimark = l_semimark - 8.0
			else:
				GM.aset(GM.vget(self, "v_background_vtiled"), l_count, 0.0)
			if ((l_semimark >= 4.0)):
				GM.aset(GM.vget(self, "v_background_htiled"), l_count, 1.0)
				l_semimark = l_semimark - 4.0
			else:
				GM.aset(GM.vget(self, "v_background_htiled"), l_count, 0.0)
			if ((l_semimark >= 2.0)):
				GM.background_foreground[int(l_count)] = 1.0
				l_semimark = l_semimark - 2.0
			else:
				GM.background_foreground[int(l_count)] = 0.0
			GM.background_visible[int(l_count)] = l_semimark
			GM.background_x[int(l_count)] = ((GM.add(((GM.f_file_bin_read_byte(l_file)) * 256.0), (GM.f_file_bin_read_byte(l_file)))) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.background_y[int(l_count)] = ((GM.add(((GM.f_file_bin_read_byte(l_file)) * 256.0), (GM.f_file_bin_read_byte(l_file)))) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.aset(GM.vget(self, "v_background_xscale"), l_count, ((((GM.f_file_bin_read_byte(l_file)) / 100.0)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0))))
			GM.aset(GM.vget(self, "v_background_yscale"), l_count, ((((GM.f_file_bin_read_byte(l_file)) / 100.0)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0))))
			GM.background_hspeed[int(l_count)] = ((GM.f_file_bin_read_byte(l_file)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.background_vspeed[int(l_count)] = ((GM.f_file_bin_read_byte(l_file)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.background_alpha[int(l_count)] = ((GM.f_file_bin_read_byte(l_file)) / 100.0)
			GM.aset(GM.vget(self, "v_background_blend"), l_count, (GM.f_make_color_hsv((GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)))))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	(self.script_console_map_menuUpdate())
	while ((l_count < GM.vget(self, "v_includeNumber"))):
		(self.script_N_Menu_RemoveItem(GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), GM.add(l_count, 1.0))))
		l_count = GM.add(l_count, 1.0)
	(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), 1.0))
	GM.vset(self, "v_includeNumber", (GM.f_file_bin_read_byte(l_file)))
	while ((l_count < GM.vget(self, "v_includeNumber"))):
		l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(GM.vget(self, "v_include"), l_count, "")
		while ((not GM.eq(l_len, 0.0))):
			GM.aset(GM.vget(self, "v_include"), l_count, GM.add(GM.aget(GM.vget(self, "v_include"), l_count), (GM.f_chr(l_len))))
			l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(GM.vget(self, "v_menuIncludeItem"), GM.add(l_count, 1.0), (self.script_N_Menu_AddItem(GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), GM.aget(GM.vget(self, "v_include"), l_count))))
		GM.aset(GM.vget(self, "v_include"), l_count, GM.add(l_path, GM.aget(GM.vget(self, "v_include"), l_count)))
		l_count = GM.add(l_count, 1.0)
	(GM.f_file_bin_close(l_file))
	(GM.f_file_delete(GM.add(l_path, (GM.f_filename_change_ext((GM.f_filename_name(argument0)), ".scmgs")))))
	if ((GM.vget(self, "v_objectNumber") > 0.0)):
		(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), 0.0), 0.0))
		(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuRemove"), 0.0), 0.0))
		(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuObjects"), 0.0), GM.aget(GM.vget(self, "v_menuObjectSet"), 0.0), 0.0))
		(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuSelect"), 0.0), GM.aget(GM.vget(self, "v_menuSelect"), GM.add(GM.vget(self, "v_objectCurrent"), 1.0)), 1.0))
	if ((GM.vget(self, "v_includeNumber") > 0.0)):
		(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuInclude"), 0.0), GM.aget(GM.vget(self, "v_menuIncludeItem"), 0.0), 0.0))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 4.0), GM.vget(self, "v_gridShow")))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), GM.vget(self, "v_gridMode")))
	if ((absf(GM.vget(self, "v_mode") - 1.0) < 0.00001)):
		GM.view_visible[int(1.0)] = 1.0
		GM.vset(self, "v_gridMode", 0.0)
		GM.vset(self, "v_gridHSnap", GM.vget(self, "v_tiHSnap"))
		GM.vset(self, "v_gridVSnap", GM.vget(self, "v_tiVSnap"))
		GM.vsetb(GM.vget(self, "v_grid"), "x", GM.vget(self, "v_tiX"))
		GM.vsetb(GM.vget(self, "v_grid"), "y", GM.vget(self, "v_tiY"))
		(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), 1.0))
	else:
		GM.vset(self, "v_gridMode", GM.vget(self, "v_obMode"))
		GM.vset(self, "v_gridHSnap", GM.vget(self, "v_obHSnap"))
		GM.vset(self, "v_gridVSnap", GM.vget(self, "v_obVSnap"))
		GM.vsetb(GM.vget(self, "v_grid"), "x", GM.vget(self, "v_obX"))
		GM.vsetb(GM.vget(self, "v_grid"), "y", GM.vget(self, "v_obY"))
		GM.view_visible[int(1.0)] = 0.0
		(self.script_N_Menu_ItemSetDisabled(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), 0.0))
	(self.script_N_Menu_ItemSetChecked(GM.aget(GM.vget(self, "v_menuView"), 0.0), GM.aget(GM.vget(self, "v_menuView"), 5.0), GM.vget(self, "v_gridMode")))
	return 0.0
	return 0.0
func script_console_map_saveAs(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_save_filename("SCMAP File|*.scmap", ""))
	if ((argument0 == "")):
		return 0.0
	if ((absf((GM.f_string_count(".", argument0)) - 0.0) < 0.00001)):
		argument0 = GM.add(argument0, ".scmap")
	if (((GM.f_filename_ext(argument0)) != ".scmap")):
		(GM.f_filename_change_ext(argument0, ".scmap"))
	if (((GM.f_file_exists(argument0)))) >= 0.5:
		if ((absf((self.script_console_dll_messageBox(GM.add(GM.add("The following filename ", argument0), " already exists...overwrite?"), "SC Map Designer", 2.0, 4.0)) - 3.0) >= 0.00001)):
			return 0.0
	var l_file = 0.0
	var l_len = 0.0
	var l_count = 0.0
	var l_count2 = 0.0
	var l_temp = 0.0
	l_file = (GM.f_file_text_open_write(argument0))
	(GM.f_file_text_close(l_file))
	l_file = (GM.f_file_bin_open(argument0, 1.0))
	l_temp = (GM.f_filename_change_ext((GM.f_filename_name(GM.vget(self, "v_tileSet"))), ""))
	if ((absf(GM.vget(self, "v_mode") - 1.0) >= 0.00001)):
		GM.vset(self, "v_obX", GM.vb(GM.vget(self, "v_grid"), "x"))
		GM.vset(self, "v_obY", GM.vb(GM.vget(self, "v_grid"), "y"))
	(GM.f_file_bin_write_byte(l_file, GM.idiv(GM.vget(self, "v_obX"), GM.vget(self, "v_obHSnap"))))
	(GM.f_file_bin_write_byte(l_file, GM.idiv(GM.vget(self, "v_obY"), GM.vget(self, "v_obVSnap"))))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_obHSnap")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_obVSnap")))
	l_count2 = 0.0
	while ((l_count2 < 5.0)):
		l_len = (GM.f_string_length(GM.aget(GM.vget(self, "v_Prop"), l_count2)))
		l_count = 0.0
		while ((l_count < l_len)):
			(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at(GM.aget(GM.vget(self, "v_Prop"), l_count2), GM.add(l_count, 1.0)))))))
			l_count = GM.add(l_count, 1.0)
		(GM.f_file_bin_write_byte(l_file, 0.0))
		l_count2 = GM.add(l_count2, 1.0)
	l_len = (GM.f_string_length(l_temp))
	l_count = 0.0
	while ((l_count < l_len)):
		(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at(l_temp, GM.add(l_count, 1.0)))))))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	(GM.f_file_bin_write_byte(l_file, 0.0))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileTrans")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileH")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileV")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tileO")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tiHSnap")))
	(GM.f_file_bin_write_byte(l_file, GM.vget(self, "v_tiVSnap")))
	while ((l_count < 256.0)):
		l_count2 = 0.0
		while ((l_count2 < 256.0)):
			if (((GM.f_tile_exists(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_count, l_count2)))))) >= 0.5:
				(GM.f_file_bin_write_byte(l_file, (255.0 - GM.idiv((GM.f_tile_get_left(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_count, l_count2)))), (GM.add(GM.vget(self, "v_tileH"), GM.vget(self, "v_tileO")))))))
				(GM.f_file_bin_write_byte(l_file, (255.0 - GM.idiv((GM.f_tile_get_top(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_count, l_count2)))), (GM.add(GM.vget(self, "v_tileV"), GM.vget(self, "v_tileO")))))))
				(GM.f_file_bin_write_byte(l_file, (255.0 - l_count)))
				(GM.f_file_bin_write_byte(l_file, (255.0 - l_count2)))
				l_temp = (GM.f_tile_get_depth(GM.aget(GM.vget(self, "v_tileA"), GM.k2(l_count, l_count2))))
				(GM.f_file_bin_write_byte(l_file, GM.idiv((GM.f_abs(l_temp)), 256.0)))
				(GM.f_file_bin_write_byte(l_file, fmod((GM.f_abs(l_temp)), 256.0)))
				(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(l_temp)) + 1.0)))
			l_count2 = GM.add(l_count2, 1.0)
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	(GM.f_file_bin_write_byte(l_file, 0.0))
	(GM.f_file_bin_write_byte(l_file, (255.0 - GM.vget(self, "v_objectNumber"))))
	while ((l_count < GM.vget(self, "v_objectNumber"))):
		l_len = (GM.f_string_length(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 0.0))))
		l_count2 = 0.0
		while ((l_count2 < l_len)):
			(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 0.0)), GM.add(l_count2, 1.0)))))))
			l_count2 = GM.add(l_count2, 1.0)
		(GM.f_file_bin_write_byte(l_file, 0.0))
		l_len = (GM.f_string_length(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 6.0))))
		l_count2 = 0.0
		while ((l_count2 < l_len)):
			(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 6.0)), GM.add(l_count2, 1.0)))))))
			l_count2 = GM.add(l_count2, 1.0)
		(GM.f_file_bin_write_byte(l_file, 0.0))
		l_len = (GM.f_string_length(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 7.0))))
		l_count2 = 0.0
		while ((l_count2 < l_len)):
			(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at(GM.aget(GM.vget(self, "v_objectList"), GM.k2(l_count, 7.0)), GM.add(l_count2, 1.0)))))))
			l_count2 = GM.add(l_count2, 1.0)
		(GM.f_file_bin_write_byte(l_file, 0.0))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	while ((l_count < 256.0)):
		l_count2 = 0.0
		while ((l_count2 < 256.0)):
			if (((GM.f_instance_exists(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_count, l_count2)))))) >= 0.5:
				(GM.f_file_bin_write_byte(l_file, (255.0 - GM.vget(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_count, l_count2)), "v_object"))))
				(GM.f_file_bin_write_byte(l_file, (255.0 - l_count)))
				(GM.f_file_bin_write_byte(l_file, (255.0 - l_count2)))
			l_count2 = GM.add(l_count2, 1.0)
		l_count = GM.add(l_count, 1.0)
	(GM.f_file_bin_write_byte(l_file, 0.0))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_hue(GM.background_color))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_saturation(GM.background_color))))
	(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_value(GM.background_color))))
	l_count = 0.0
	while ((l_count < 8.0)):
		if (((GM.f_background_exists(GM.background_index[int(l_count)])))) >= 0.5:
			(GM.f_file_bin_write_byte(l_file, 1.0))
			l_len = (GM.f_string_length((GM.f_filename_name(GM.aget(GM.vget(self, "v_backLayer"), l_count)))))
			GM.vset(self, "v_subcount", 0.0)
			while ((GM.vget(self, "v_subcount") < l_len)):
				(GM.f_file_bin_write_byte(l_file, (GM.f_ord((GM.f_string_char_at((GM.f_filename_name(GM.aget(GM.vget(self, "v_backLayer"), l_count))), (GM.vget(self, "v_subcount") + 1.0)))))))
				GM.vset(self, "v_subcount", GM.vget(self, "v_subcount") + 1.0)
			(GM.f_file_bin_write_byte(l_file, 0.0))
			(GM.f_file_bin_write_byte(l_file, ((((GM.background_visible[int(l_count)] + (GM.background_foreground[int(l_count)] * 2.0)) + (GM.aget(GM.vget(self, "v_background_htiled"), l_count) * 4.0)) + (GM.aget(GM.vget(self, "v_background_vtiled"), l_count) * 8.0)) + (GM.aget(GM.vget(self, "v_backTrans"), l_count) * 16.0))))
			(GM.f_file_bin_write_byte(l_file, GM.idiv((GM.f_abs(GM.background_x[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, fmod((GM.f_abs(GM.background_x[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_x[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, GM.idiv((GM.f_abs(GM.background_y[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, fmod((GM.f_abs(GM.background_y[int(l_count)])), 256.0)))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_y[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, (GM.f_round(((GM.f_abs(GM.aget(GM.vget(self, "v_background_xscale"), l_count))) * 100.0)))))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.aget(GM.vget(self, "v_background_xscale"), l_count))) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, (GM.f_round(((GM.f_abs(GM.aget(GM.vget(self, "v_background_yscale"), l_count))) * 100.0)))))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.aget(GM.vget(self, "v_background_yscale"), l_count))) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, GM.background_hspeed[int(l_count)]))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_hspeed[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, GM.background_vspeed[int(l_count)]))
			(GM.f_file_bin_write_byte(l_file, ((GM.f_sign(GM.background_vspeed[int(l_count)])) + 1.0)))
			(GM.f_file_bin_write_byte(l_file, (GM.f_round((GM.background_alpha[int(l_count)] * 100.0)))))
			(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_hue(GM.aget(GM.vget(self, "v_background_blend"), l_count)))))
			(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_saturation(GM.aget(GM.vget(self, "v_background_blend"), l_count)))))
			(GM.f_file_bin_write_byte(l_file, (GM.f_color_get_value(GM.aget(GM.vget(self, "v_background_blend"), l_count)))))
		else:
			(GM.f_file_bin_write_byte(l_file, 0.0))
		l_count = GM.add(l_count, 1.0)
	(GM.f_file_bin_close(l_file))
	(self.script_console_pack_open((GM.f_filename_change_ext(argument0, ".scpak"))))
	(self.script_console_pack_add(argument0))
	l_count = 0.0
	while ((l_count < GM.vget(self, "v_includeNumber"))):
		(self.script_console_pack_add(GM.aget(GM.vget(self, "v_include"), l_count)))
		l_count = GM.add(l_count, 1.0)
	(self.script_console_pack_close())
	(GM.f_file_delete(argument0))
	(GM.f_file_rename((GM.f_filename_change_ext(argument0, ".scpak")), argument0))
	(self.script_console_map_settingsSave(argument0, 1.0))
	return 0.0
	return 0.0
func script_console_map_load(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SCMAP Files|*.scmap", ""))
	if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
		return 0.0
	(GM.f_file_rename(argument0, (GM.f_filename_change_ext(argument0, ".scpak"))))
	(self.script_console_pack_unpack((GM.f_filename_change_ext(argument0, ".scpak"))))
	if (((GM.f_file_exists(GM.add((GM.f_filename_path(argument0)), "room_create.sccom"))))) >= 0.5:
		(self.script_console_run_file(GM.add((GM.f_filename_path(argument0)), "room_create.sccom")))
	var l_file = 0.0
	var l_len = 0.0
	var l_count2 = 0.0
	var l_tileTrans = 0.0
	var l_obX = 0.0
	var l_obY = 0.0
	var l_obHSnap = 0.0
	var l_obVSnap = 0.0
	var l_prop = 0.0
	var l_backTrans = 0.0
	var l_backLayer = 0.0
	l_file = (GM.f_file_bin_open(argument0, 0.0))
	l_obX = (GM.f_file_bin_read_byte(l_file))
	l_obY = (GM.f_file_bin_read_byte(l_file))
	l_obHSnap = (GM.f_file_bin_read_byte(l_file))
	l_obVSnap = (GM.f_file_bin_read_byte(l_file))
	l_count2 = 0.0
	while ((l_count2 < 5.0)):
		l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(l_prop, l_count2, "")
		while ((not GM.eq(l_len, 0.0))):
			GM.aset(l_prop, l_count2, GM.add(GM.aget(l_prop, l_count2), (GM.f_chr(l_len))))
			l_len = (GM.f_file_bin_read_byte(l_file))
		l_count2 = GM.add(l_count2, 1.0)
	l_len = (GM.f_file_bin_read_byte(l_file))
	GM.vset(self, "v_tileSet", "")
	while ((not GM.eq(l_len, 0.0))):
		GM.vset(self, "v_tileSet", GM.add(GM.vget(self, "v_tileSet"), (GM.f_chr(l_len))))
		l_len = (GM.f_file_bin_read_byte(l_file))
	l_tileTrans = (GM.f_file_bin_read_byte(l_file))
	if (((GM.f_file_exists(GM.add(GM.add((GM.f_filename_path(argument0)), GM.vget(self, "v_tileSet")), ".bmp"))))) >= 0.5:
		GM.vset(self, "v_tileSet", (GM.f_background_add(GM.add(GM.add((GM.f_filename_path(argument0)), GM.vget(self, "v_tileSet")), ".bmp"), l_tileTrans, 0.0, 0.0)))
		(self.script_console_deleteItem(2.0, GM.vget(self, "v_tileSet")))
	else:
		(GM.f_execute_string(self, GM.add(GM.add("tileSet = ", GM.vget(self, "v_tileSet")), ";")))
	if ((GM.error_occurred)) >= 0.5:
		GM.error_occurred = 0.0
		GM.error_last = ""
		(GM.f_file_bin_close(l_file))
		(GM.f_file_delete(argument0))
		var l_num = 0.0
		l_num = (self.script_console_pack_contents((GM.f_filename_change_ext(argument0, ".scpak"))))
		GM.vset(self, "v_count", 0.0)
		while ((GM.vget(self, "v_count") < l_num)):
			(GM.f_file_delete(GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(318.0, "v_array"), GM.vget(self, "v_count")))))
			GM.vset(self, "v_count", GM.add(GM.vget(self, "v_count"), 1.0))
		(GM.f_file_rename((GM.f_filename_change_ext(argument0, ".scpak")), argument0))
		(self.script_console_dll_messageBox("An error occurred while trying to load the map's tileset.", "SC Map Loader", 0.0, 0.0))
		return 0.0
	var l_tileH = 0.0
	var l_tileV = 0.0
	var l_tileO = 0.0
	var l_tiHSnap = 0.0
	var l_tiVSnap = 0.0
	var l_objectNumber = 0.0
	l_tileH = (GM.f_file_bin_read_byte(l_file))
	l_tileV = (GM.f_file_bin_read_byte(l_file))
	l_tileO = (GM.f_file_bin_read_byte(l_file))
	l_tiHSnap = (GM.f_file_bin_read_byte(l_file))
	l_tiVSnap = (GM.f_file_bin_read_byte(l_file))
	GM.vset(self, "v_done", 0.0)
	l_len = (GM.f_file_bin_read_byte(l_file))
	while ((not GM.eq(l_len, 0.0))):
		(GM.f_tile_add(GM.vget(self, "v_tileSet"), (((255.0 - l_len)) * (GM.add(l_tileH, l_tileO))), (((255.0 - (GM.f_file_bin_read_byte(l_file)))) * (GM.add(l_tileV, l_tileO))), l_tileH, l_tileV, (((255.0 - (GM.f_file_bin_read_byte(l_file)))) * l_tiHSnap), (((255.0 - (GM.f_file_bin_read_byte(l_file)))) * l_tiVSnap), ((GM.add(((GM.f_file_bin_read_byte(l_file)) * 256.0), (GM.f_file_bin_read_byte(l_file)))) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))))
		l_len = (GM.f_file_bin_read_byte(l_file))
	l_objectNumber = (255.0 - (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_count", 0.0)
	while ((GM.vget(self, "v_count") < l_objectNumber)):
		l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 0.0), "")
		while ((not GM.eq(l_len, 0.0))):
			GM.aset(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 0.0), GM.add(GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 0.0)), (GM.f_chr(l_len))))
			l_len = (GM.f_file_bin_read_byte(l_file))
		l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 1.0), "")
		while ((not GM.eq(l_len, 0.0))):
			GM.aset(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 1.0), GM.add(GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 1.0)), (GM.f_chr(l_len))))
			l_len = (GM.f_file_bin_read_byte(l_file))
		if ((GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 1.0)) != "")):
			l_count2 = 0.0
			while ((l_count2 < (GM.f_string_count(GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 1.0)), "|")))):
				GM.aset(GM.vget(318.0, "v_array"), l_count2, (self.script_stringArray(GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 1.0)), l_count2)))
				l_count2 = GM.add(l_count2, 1.0)
		l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 2.0), "")
		while ((not GM.eq(l_len, 0.0))):
			GM.aset(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 2.0), GM.add(GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 2.0)), (GM.f_chr(l_len))))
			l_len = (GM.f_file_bin_read_byte(l_file))
		if (((GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 2.0)) != "") and ((GM.f_file_exists(GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 2.0)))))) >= 0.5)):
			(self.script_console_run_file(GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 2.0)))))
		(GM.f_execute_string(self, GM.add(GM.add("list[count,0] = ", GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 0.0))), ";")))
		if ((GM.error_occurred)) >= 0.5:
			GM.error_occurred = 0.0
			GM.error_last = ""
			(GM.f_file_bin_close(l_file))
			(GM.f_file_delete(argument0))
			var l_num = 0.0
			l_num = (self.script_console_pack_contents((GM.f_filename_change_ext(argument0, ".scpak"))))
			GM.vset(self, "v_count", 0.0)
			while ((GM.vget(self, "v_count") < l_num)):
				(GM.f_file_delete(GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(318.0, "v_array"), GM.vget(self, "v_count")))))
				GM.vset(self, "v_count", GM.add(GM.vget(self, "v_count"), 1.0))
			(GM.f_file_rename((GM.f_filename_change_ext(argument0, ".scpak")), argument0))
			(self.script_console_dll_messageBox(("An error occurred while trying to define the following map's object: " + (GM.f_string(GM.aget(GM.vget(self, "v_list"), GM.k2(GM.vget(self, "v_count"), 0.0))))), "SC Map Loader", 0.0, 0.0))
			return 0.0
		GM.vset(self, "v_count", GM.add(GM.vget(self, "v_count"), 1.0))
	l_len = (GM.f_file_bin_read_byte(l_file))
	while ((not GM.eq(l_len, 0.0))):
		(GM.f_instance_create((((255.0 - (GM.f_file_bin_read_byte(l_file)))) * l_obHSnap), (((255.0 - (GM.f_file_bin_read_byte(l_file)))) * l_obVSnap), GM.aget(GM.vget(self, "v_list"), GM.k2((255.0 - l_len), 0.0))))
		l_len = (GM.f_file_bin_read_byte(l_file))
	GM.vset(self, "v_count", 0.0)
	GM.background_color = (GM.f_make_color_hsv((GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file))))
	while ((GM.vget(self, "v_count") < 8.0)):
		if GM.truth(((GM.f_file_bin_read_byte(l_file)))):
			l_len = (GM.f_file_bin_read_byte(l_file))
			GM.aset(l_backLayer, GM.vget(self, "v_count"), "")
			while ((not GM.eq(l_len, 0.0))):
				GM.aset(l_backLayer, GM.vget(self, "v_count"), GM.add(GM.aget(l_backLayer, GM.vget(self, "v_count")), (GM.f_chr(l_len))))
				l_len = (GM.f_file_bin_read_byte(l_file))
			GM.aset(l_backLayer, GM.vget(self, "v_count"), GM.add((GM.f_filename_path(argument0)), GM.aget(l_backLayer, GM.vget(self, "v_count"))))
			GM.vset(self, "v_semimark", (GM.f_file_bin_read_byte(l_file)))
			if ((GM.vget(self, "v_semimark") >= 16.0)):
				GM.aset(l_backTrans, GM.vget(self, "v_count"), 1.0)
				GM.vset(self, "v_semimark", GM.vget(self, "v_semimark") - 16.0)
			else:
				GM.aset(l_backTrans, GM.vget(self, "v_count"), 0.0)
			GM.background_index[int(GM.vget(self, "v_count"))] = (GM.f_background_add(GM.aget(l_backLayer, GM.vget(self, "v_count")), GM.aget(l_backTrans, GM.vget(self, "v_count")), 0.0, 0.0))
			(self.script_console_deleteItem(2.0, GM.background_index[int(GM.vget(self, "v_count"))]))
			if ((GM.vget(self, "v_semimark") >= 8.0)):
				GM.aset(GM.vget(self, "v_background_vtiled"), GM.vget(self, "v_count"), 1.0)
				GM.vset(self, "v_semimark", GM.vget(self, "v_semimark") - 8.0)
			else:
				GM.aset(GM.vget(self, "v_background_vtiled"), GM.vget(self, "v_count"), 0.0)
			if ((GM.vget(self, "v_semimark") >= 4.0)):
				GM.aset(GM.vget(self, "v_background_htiled"), GM.vget(self, "v_count"), 1.0)
				GM.vset(self, "v_semimark", GM.vget(self, "v_semimark") - 4.0)
			else:
				GM.aset(GM.vget(self, "v_background_htiled"), GM.vget(self, "v_count"), 0.0)
			if ((GM.vget(self, "v_semimark") >= 2.0)):
				GM.background_foreground[int(GM.vget(self, "v_count"))] = 1.0
				GM.vset(self, "v_semimark", GM.vget(self, "v_semimark") - 2.0)
			else:
				GM.background_foreground[int(GM.vget(self, "v_count"))] = 0.0
			GM.background_visible[int(GM.vget(self, "v_count"))] = GM.vget(self, "v_semimark")
			GM.background_x[int(GM.vget(self, "v_count"))] = ((GM.add(((GM.f_file_bin_read_byte(l_file)) * 256.0), (GM.f_file_bin_read_byte(l_file)))) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.background_y[int(GM.vget(self, "v_count"))] = ((GM.add(((GM.f_file_bin_read_byte(l_file)) * 256.0), (GM.f_file_bin_read_byte(l_file)))) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.aset(GM.vget(self, "v_background_xscale"), GM.vget(self, "v_count"), ((((GM.f_file_bin_read_byte(l_file)) / 100.0)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0))))
			GM.aset(GM.vget(self, "v_background_yscale"), GM.vget(self, "v_count"), ((((GM.f_file_bin_read_byte(l_file)) / 100.0)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0))))
			GM.background_hspeed[int(GM.vget(self, "v_count"))] = ((GM.f_file_bin_read_byte(l_file)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.background_vspeed[int(GM.vget(self, "v_count"))] = ((GM.f_file_bin_read_byte(l_file)) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))
			GM.background_alpha[int(GM.vget(self, "v_count"))] = ((GM.f_file_bin_read_byte(l_file)) / 100.0)
			GM.aset(GM.vget(self, "v_background_blend"), GM.vget(self, "v_count"), (GM.f_make_color_hsv((GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)), (GM.f_file_bin_read_byte(l_file)))))
		GM.vset(self, "v_count", GM.add(GM.vget(self, "v_count"), 1.0))
	(GM.f_file_bin_close(l_file))
	(GM.f_file_delete(argument0))
	var l_num = 0.0
	l_num = (self.script_console_pack_contents((GM.f_filename_change_ext(argument0, ".scpak"))))
	GM.vset(self, "v_count", 0.0)
	while ((GM.vget(self, "v_count") < l_num)):
		(GM.f_file_delete(GM.add((GM.f_filename_path(argument0)), GM.aget(GM.vget(318.0, "v_array"), GM.vget(self, "v_count")))))
		GM.vset(self, "v_count", GM.add(GM.vget(self, "v_count"), 1.0))
	(GM.f_file_rename((GM.f_filename_change_ext(argument0, ".scpak")), argument0))
	GM.vset(self, "v_count", 0.0)
	while ((GM.vget(self, "v_count") < 5.0)):
		GM.aset(GM.vget(318.0, "v_array"), GM.vget(self, "v_count"), GM.aget(l_prop, GM.vget(self, "v_count")))
		GM.vset(self, "v_count", GM.add(GM.vget(self, "v_count"), 1.0))
	return 1.0
	return 0.0
func script_console_map_loadEditor(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SCMED Files|*.scmed", ""))
	if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
		return 0.0
	if (not (((GM.f_file_exists((GM.f_filename_change_ext(argument0, ".scmap"))))) >= 0.5)):
		return 0.0
	if ((absf((self.script_console_dll_messageBox("Are you sure you want to load an existing map file?  All current information will be lost...", "SC Map Designer", 2.0, 4.0)) - 3.0) >= 0.00001)):
		return 0.0
	(self.script_console_map_settingsLoad(argument0))
	var l_file = 0.0
	var l_len = 0.0
	var l_count2 = 0.0
	var l_tileTrans = 0.0
	var l_temp = 0.0
	l_file = (GM.f_file_bin_open((GM.f_filename_change_ext(argument0, ".scmap")), 0.0))
	var l_winX = 0.0
	var l_winY = 0.0
	l_winX = (GM.f_round(((GM.f_window_get_width()) / 2.0)))
	l_winY = (GM.f_round(((GM.f_window_get_height()) / 2.0)))
	(GM.f_draw_set_font(GM.vget(318.0, "v_font")))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_valign(0.0))
	(GM.f_draw_rectangle_color((l_winX - 100.0), (l_winY - 50.0), GM.add(l_winX, 100.0), GM.add(l_winY, 50.0), 16777215.0, 16777215.0, 16777215.0, 16777215.0, 0.0))
	(GM.f_draw_rectangle_color((l_winX - 100.0), (l_winY - 50.0), GM.add(l_winX, 100.0), GM.add(l_winY, 50.0), 0.0, 0.0, 0.0, 0.0, 1.0))
	(GM.f_draw_text_color((l_winX - (GM.f_round(((GM.f_string_width("Loading Map File...")) / 2.0)))), (l_winY - (GM.f_round(((GM.f_string_height("Loading Map File...")) / 2.0)))), "Loading Map File...", 0.0, 0.0, 0.0, 0.0, 1.0))
	(GM.f_screen_refresh())
	l_temp = (GM.f_file_bin_read_byte(l_file))
	l_temp = (GM.f_file_bin_read_byte(l_file))
	l_temp = (GM.f_file_bin_read_byte(l_file))
	l_temp = (GM.f_file_bin_read_byte(l_file))
	l_count2 = 0.0
	while ((l_count2 < 5.0)):
		l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(GM.vget(self, "v_Prop"), l_count2, "")
		while ((not GM.eq(l_len, 0.0))):
			GM.aset(GM.vget(self, "v_Prop"), l_count2, GM.add(GM.aget(GM.vget(self, "v_Prop"), l_count2), (GM.f_chr(l_len))))
			l_len = (GM.f_file_bin_read_byte(l_file))
		l_count2 = GM.add(l_count2, 1.0)
	l_len = (GM.f_file_bin_read_byte(l_file))
	l_temp = ""
	while ((not GM.eq(l_len, 0.0))):
		l_temp = GM.add(l_temp, (GM.f_chr(l_len)))
		l_len = (GM.f_file_bin_read_byte(l_file))
	l_temp = (GM.f_file_bin_read_byte(l_file))
	var l_tileH = 0.0
	var l_tileV = 0.0
	var l_tileO = 0.0
	var l_tiHSnap = 0.0
	var l_tiVSnap = 0.0
	var l_xit = 0.0
	var l_yit = 0.0
	var l_objectNumber = 0.0
	l_tileH = (GM.f_file_bin_read_byte(l_file))
	l_tileV = (GM.f_file_bin_read_byte(l_file))
	l_tileO = (GM.f_file_bin_read_byte(l_file))
	l_tiHSnap = (GM.f_file_bin_read_byte(l_file))
	l_tiVSnap = (GM.f_file_bin_read_byte(l_file))
	GM.vset(self, "v_done", 0.0)
	l_len = (GM.f_file_bin_read_byte(l_file))
	while ((not GM.eq(l_len, 0.0))):
		l_temp = (GM.f_tile_add(GM.vget(self, "v_tileBack"), (((255.0 - l_len)) * (GM.add(l_tileH, l_tileO))), (((255.0 - (GM.f_file_bin_read_byte(l_file)))) * (GM.add(l_tileV, l_tileO))), l_tileH, l_tileV, (((255.0 - (GM.f_file_bin_read_byte(l_file)))) * l_tiHSnap), (((255.0 - (GM.f_file_bin_read_byte(l_file)))) * l_tiVSnap), ((GM.add(((GM.f_file_bin_read_byte(l_file)) * 256.0), (GM.f_file_bin_read_byte(l_file)))) * (((GM.f_file_bin_read_byte(l_file)) - 1.0)))))
		l_xit = (GM.f_tile_get_x(l_temp))
		l_yit = (GM.f_tile_get_y(l_temp))
		GM.aset(GM.vget(self, "v_tileA"), GM.k2(GM.idiv(l_xit, l_tiHSnap), GM.idiv(l_yit, l_tiVSnap)), l_temp)
		l_len = (GM.f_file_bin_read_byte(l_file))
	l_objectNumber = (255.0 - (GM.f_file_bin_read_byte(l_file)))
	GM.vset(self, "v_count", 0.0)
	while ((GM.vget(self, "v_count") < l_objectNumber)):
		l_len = (GM.f_file_bin_read_byte(l_file))
		l_temp = ""
		while ((not GM.eq(l_len, 0.0))):
			l_temp = GM.add(l_temp, (GM.f_chr(l_len)))
			l_len = (GM.f_file_bin_read_byte(l_file))
		l_len = (GM.f_file_bin_read_byte(l_file))
		l_temp = ""
		while ((not GM.eq(l_len, 0.0))):
			l_temp = GM.add(l_temp, (GM.f_chr(l_len)))
			l_len = (GM.f_file_bin_read_byte(l_file))
		l_len = (GM.f_file_bin_read_byte(l_file))
		l_temp = ""
		while ((not GM.eq(l_len, 0.0))):
			l_temp = GM.add(l_temp, (GM.f_chr(l_len)))
			l_len = (GM.f_file_bin_read_byte(l_file))
		GM.vset(self, "v_count", GM.add(GM.vget(self, "v_count"), 1.0))
	l_len = (GM.f_file_bin_read_byte(l_file))
	while ((not GM.eq(l_len, 0.0))):
		l_xit = (255.0 - (GM.f_file_bin_read_byte(l_file)))
		l_yit = (255.0 - (GM.f_file_bin_read_byte(l_file)))
		GM.aset(GM.vget(self, "v_objectA"), GM.k2(l_xit, l_yit), (GM.f_instance_create((l_xit * GM.vget(self, "v_obHSnap")), (l_yit * GM.vget(self, "v_obVSnap")), GM.vget(self, "v_marker"))))
		GM.vset(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_xit, l_yit)), "v_object", (255.0 - l_len))
		GM.vsetb(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_xit, l_yit)), "sprite_index", GM.aget(GM.vget(self, "v_objectList"), GM.k2((255.0 - l_len), 1.0)))
		GM.vsetb(GM.aget(GM.vget(self, "v_objectA"), GM.k2(l_xit, l_yit)), "depth", GM.aget(GM.vget(self, "v_objectList"), GM.k2((255.0 - l_len), 9.0)))
		l_len = (GM.f_file_bin_read_byte(l_file))
	(GM.f_file_bin_close(l_file))
	return 1.0
	return 0.0
func script_console_map_size(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SCMAP Files|*.scmap", ""))
	if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
		return 0.0
	var l_file = 0.0
	var l_rX = 0.0
	var l_rY = 0.0
	l_file = (GM.f_file_bin_open(argument0, 0.0))
	l_rX = (GM.f_file_bin_read_byte(l_file))
	l_rY = (GM.f_file_bin_read_byte(l_file))
	GM.aset(GM.vget(318.0, "v_array"), 0.0, (l_rX * (GM.f_file_bin_read_byte(l_file))))
	GM.aset(GM.vget(318.0, "v_array"), 1.0, (l_rY * (GM.f_file_bin_read_byte(l_file))))
	(GM.f_file_bin_close(l_file))
	return 1.0
	return 0.0
func script_console_map_properties(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (GM.eq(argument0, GM.vget(self, "v_c_dialog"))):
		argument0 = (GM.f_get_open_filename("SCMAP Files|*.scmap", ""))
	if ((not (((GM.f_file_exists(argument0))) >= 0.5) or (argument0 == ""))):
		return 0.0
	var l_file = 0.0
	var l_len = 0.0
	var l_count = 0.0
	l_file = (GM.f_file_bin_open(argument0, 0.0))
	l_count = 0.0
	while ((l_count < 4.0)):
		l_len = (GM.f_file_bin_read_byte(l_file))
		l_count = GM.add(l_count, 1.0)
	l_count = 0.0
	while ((l_count < 5.0)):
		l_len = (GM.f_file_bin_read_byte(l_file))
		GM.aset(GM.vget(318.0, "v_array"), l_count, "")
		while ((not GM.eq(l_len, 0.0))):
			GM.aset(GM.vget(318.0, "v_array"), l_count, GM.add(GM.aget(GM.vget(318.0, "v_array"), l_count), (GM.f_chr(l_len))))
			l_len = (GM.f_file_bin_read_byte(l_file))
		l_count = GM.add(l_count, 1.0)
	(GM.f_file_bin_close(l_file))
	return 1.0
	return 0.0
func rc_0():
	GM.G["par"] = 3.0
func rc_2():
	GM.G["par"] = 3.0
func rc_3():
	GM.G["par"] = 4.0
func rc_6():
	GM.G["par"] = 3.0
func rc_7():
	GM.G["par"] = 3.0
func rc_8():
	GM.G["par"] = 3.0
func rc_9():
	GM.G["par"] = 3.0
func rc_11():
	GM.G["par"] = 3.0
func rc_12():
	GM.G["par"] = 4.0
func rc_13():
	GM.G["par"] = 3.0
func rc_14():
	GM.G["par"] = 3.0
func rc_15():
	GM.G["par"] = 2.0
func rc_16():
	GM.G["par"] = 3.0
func rc_18():
	for _w120 in GM.with_list((271.0), self):
		if _w120._dead:
			continue
		_w120.other = self
		_w120.visible = 1.0
func rc_19():
	GM.G["par"] = 3.0
func rc_21():
	GM.G["par"] = 3.0
func rc_22():
	GM.G["par"] = 3.0
func rc_23():
	GM.G["par"] = 4.0
func rc_26():
	(self.script_console_disable())
func rc_29():
	GM.G["par"] = 3.0
func rc_36():
	GM.G["par"] = 3.0
func rc_41():
	GM.G["par"] = 3.0
func rc_45():
	GM.G["par"] = 4.0
func rc_46():
	GM.G["par"] = 3.0
func rc_47():
	GM.G["par"] = 2.0
func rc_48():
	GM.G["par"] = 3.0
func rc_49():
	GM.G["par"] = 3.0
func rc_50():
	GM.G["par"] = 4.0
func rc_51():
	GM.G["par"] = 4.0
func rc_53():
	GM.G["par"] = 3.0
func rc_54():
	GM.G["par"] = 20.0
func rc_58():
	GM.G["par"] = 20.0
func rc_60():
	GM.G["par"] = 20.0
func rc_61():
	GM.G["par"] = 20.0
func rc_65():
	if (((self.script_console_map_load(GM.aget(GM.vget(318.0, "v_array"), 0.0))))) >= 0.5:
		GM.room_caption = GM.aget(GM.vget(318.0, "v_array"), 0.0)
	else:
		if ((absf(GM.G["online"] - 0.0) < 0.00001)):
			(GM.f_room_goto(18.0))
		else:
			(GM.f_room_goto(31.0))
func rc_67():
	if ((not GM.eq((self.script_console_create()), 0.0))):
		(self.script_console_dll_init())
		GM.vset(318.0, "v_secureMode", 1.0)
	(self.script_console_intro(26.0))
