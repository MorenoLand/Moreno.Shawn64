extends "res://gm/gm_inst.gd"
func script_outside_wrap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
	if (((y < 0.0) and (vspeed < 0.0))):
		y = (GM.room_height + sprite_yoffset)
	if (((y > GM.room_height) and (vspeed > 0.0))):
		y = ((-sprite_height) + sprite_yoffset)
	return 0.0
func script_outside_bounce(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((bbox_top < 0.0) and (vspeed < 0.0))):
		vspeed = 0.0
		y = 0.0
	if (((bbox_bottom > GM.room_height) and (vspeed > 0.0))):
		vspeed = 0.0
		y = y - 1.0
	return 0.0
func script_game_pause(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v___font_color", GM.font_color)
	GM.vset(self, "v___font_size", GM.vget(self, "v_font_size"))
	GM.vset(self, "v___font_style", GM.vget(self, "v_font_style"))
	GM.vset(self, "v___font_name", GM.vget(self, "v_font_name"))
	GM.vset(self, "v___font_align", GM.font_align)
	GM.font_color = 16777215.0
	GM.vset(self, "v_font_size", 16.0)
	GM.vset(self, "v_font_style", 1.0)
	GM.vset(self, "v_font_name", "system")
	GM.font_align = 1.0
	(GM.f_draw_text((GM.screen_w / 2.0), 100.0, "Game Paused. Press any key to continue."))
	(GM.f_screen_refresh())
	(GM.f_keyboard_wait())
	(GM.f_io_clear())
	GM.font_color = GM.vget(self, "v___font_color")
	GM.vset(self, "v_font_size", GM.vget(self, "v___font_size"))
	GM.vset(self, "v_font_style", GM.vget(self, "v___font_style"))
	GM.vset(self, "v_font_name", GM.vget(self, "v___font_name"))
	GM.font_align = GM.vget(self, "v___font_align")
	return 0.0
func script_person_died(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(sprite_index - 85.0) < 0.00001)):
		sprite_index = 111.0
	else:
		if ((absf(sprite_index - 82.0) < 0.00001)):
			sprite_index = 111.0
		else:
			if ((absf(sprite_index - 476.0) < 0.00001)):
				sprite_index = 493.0
			else:
				if ((absf(sprite_index - 477.0) < 0.00001)):
					sprite_index = 493.0
				else:
					if ((absf(sprite_index - 478.0) < 0.00001)):
						sprite_index = 493.0
					else:
						if ((absf(sprite_index - 83.0) < 0.00001)):
							sprite_index = 113.0
						else:
							if ((absf(sprite_index - 84.0) < 0.00001)):
								sprite_index = 113.0
							else:
								if ((absf(sprite_index - 219.0) < 0.00001)):
									sprite_index = 237.0
								else:
									if ((absf(sprite_index - 218.0) < 0.00001)):
										sprite_index = 237.0
									else:
										if ((absf(sprite_index - 217.0) < 0.00001)):
											sprite_index = 236.0
										else:
											if ((absf(sprite_index - 216.0) < 0.00001)):
												sprite_index = 236.0
											else:
												if ((absf(sprite_index - 249.0) < 0.00001)):
													sprite_index = 248.0
												else:
													if ((absf(sprite_index - 246.0) < 0.00001)):
														sprite_index = 248.0
													else:
														if ((absf(sprite_index - 243.0) < 0.00001)):
															sprite_index = 247.0
														else:
															if ((absf(sprite_index - 242.0) < 0.00001)):
																sprite_index = 247.0
	if ((absf(sprite_index - 252.0) < 0.00001)):
		sprite_index = 255.0
	else:
		if ((absf(sprite_index - 251.0) < 0.00001)):
			sprite_index = 255.0
		else:
			if ((absf(sprite_index - 254.0) < 0.00001)):
				sprite_index = 256.0
			else:
				if ((absf(sprite_index - 253.0) < 0.00001)):
					sprite_index = 256.0
				else:
					if ((absf(sprite_index - 262.0) < 0.00001)):
						sprite_index = 263.0
					else:
						if ((absf(sprite_index - 261.0) < 0.00001)):
							sprite_index = 263.0
	GM.vset(self, "v_alive", 0.0)
	GM.vset(476.0, "v_bdead", GM.vget(476.0, "v_bdead") - 1.0)
	return 0.0
func script_random_die(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(sprite_index - 85.0) < 0.00001)):
		(GM.f_sound_play(86.0))
	else:
		if ((absf(sprite_index - 82.0) < 0.00001)):
			(GM.f_sound_play(86.0))
		else:
			if ((absf(object_index - 488.0) < 0.00001)):
				(GM.f_sound_play(86.0))
			else:
				if ((absf(sprite_index - 83.0) < 0.00001)):
					(GM.f_sound_play(155.0))
				else:
					if ((absf(sprite_index - 84.0) < 0.00001)):
						(GM.f_sound_play(155.0))
					else:
						if ((absf(sprite_index - 219.0) < 0.00001)):
							(GM.f_sound_play(150.0))
						else:
							if ((absf(sprite_index - 218.0) < 0.00001)):
								(GM.f_sound_play(150.0))
							else:
								if ((absf(sprite_index - 217.0) < 0.00001)):
									(GM.f_sound_play(152.0))
								else:
									if ((absf(sprite_index - 216.0) < 0.00001)):
										(GM.f_sound_play(152.0))
									else:
										if ((absf(sprite_index - 249.0) < 0.00001)):
											(GM.f_sound_play(154.0))
										else:
											if ((absf(sprite_index - 246.0) < 0.00001)):
												(GM.f_sound_play(154.0))
											else:
												if ((absf(sprite_index - 243.0) < 0.00001)):
													(GM.f_sound_play(151.0))
												else:
													if ((absf(sprite_index - 242.0) < 0.00001)):
														(GM.f_sound_play(151.0))
	if ((absf(sprite_index - 252.0) < 0.00001)):
		(GM.f_sound_play(153.0))
	else:
		if ((absf(sprite_index - 251.0) < 0.00001)):
			(GM.f_sound_play(153.0))
		else:
			if ((absf(sprite_index - 254.0) < 0.00001)):
				(GM.f_sound_play(156.0))
			else:
				if ((absf(sprite_index - 253.0) < 0.00001)):
					(GM.f_sound_play(156.0))
				else:
					if ((absf(sprite_index - 262.0) < 0.00001)):
						(GM.f_sound_play(151.0))
					else:
						if ((absf(sprite_index - 261.0) < 0.00001)):
							(GM.f_sound_play(151.0))
	return 0.0
func script_random_powerup(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_rool", (GM.f_round((GM.f_random(3.0)))))
	if ((absf(GM.vget(self, "v_rool") - 3.0) < 0.00001)):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 480.0))
	if ((absf(GM.vget(self, "v_rool") - 2.0) < 0.00001)):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 481.0))
	if ((absf(GM.vget(self, "v_rool") - 1.0) < 0.00001)):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 127.0))
	return 0.0
func script_hover(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_position_meeting(GM.vb(583.0, "x"), GM.vb(583.0, "y"), self)))) >= 0.5:
		GM.vset(self, "v_image_single", 1.0)
	else:
		GM.vset(self, "v_image_single", 0.0)
	return 0.0
func script_lives_add(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((GM.G["lives"] < 100.0)):
		if ((absf(GM.vget(0.0, "v_poopoo") - 0.0) < 0.00001)):
			if ((GM.G["lives"] < 80.0)):
				GM.G["lives"] = GM.G["lives"] + 1.0
			else:
				GM.G["lives"] = 80.0
		else:
			GM.G["lives"] = GM.G["lives"] + 1.0
	return 0.0
func script_ControllerInit(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_textFileName", "credits.txt")
	(GM.f_file_open_read(GM.vget(self, "v_textFileName")))
	GM.vset(self, "v_nTextLines", 0.0)
	GM.aset(GM.vget(self, "v_fontSize"), 0.0, 0.0)
	GM.vset(self, "v_normalFont", 15.0)
	GM.vset(self, "v_headingFont", 25.0)
	GM.vset(self, "v_TextRed", 10.0)
	GM.vset(self, "v_TextGreen", 10.0)
	GM.vset(self, "v_TextBlue", 225.0)
	GM.vset(self, "v_FadingFactor", 1.0)
	GM.vset(self, "v_DeltaFading", 0.02)
	GM.vset(self, "v_startingY", GM.room_height)
	GM.vset(self, "v_startingLine", 0.0)
	GM.vset(self, "v_scrollSpeed", 1.0)
	GM.vset(self, "v_topOfScreen", 0.0)
	while (not (GM.truth((GM.f_file_eof())))):
		GM.vset(self, "v_textLine", (GM.f_file_read_string()))
		(GM.f_file_readln())
		GM.aset(GM.vget(self, "v_fontSize"), GM.vget(self, "v_nTextLines"), GM.vget(self, "v_normalFont"))
		if ((((GM.f_string_copy(GM.vget(self, "v_textLine"), 1.0, 1.0)) == "[") and ((GM.f_string_copy(GM.vget(self, "v_textLine"), 3.0, 1.0)) == "]"))):
			if (((GM.f_string_upper((GM.f_string_copy(GM.vget(self, "v_textLine"), 2.0, 1.0)))) == "H")):
				GM.aset(GM.vget(self, "v_fontSize"), GM.vget(self, "v_nTextLines"), GM.vget(self, "v_headingFont"))
			GM.vset(self, "v_textLine", (GM.f_string_delete(GM.vget(self, "v_textLine"), 1.0, 3.0)))
		GM.aset(GM.vget(self, "v_creditLine"), GM.vget(self, "v_nTextLines"), GM.vget(self, "v_textLine"))
		GM.vset(self, "v_nTextLines", GM.vget(self, "v_nTextLines") + 1.0)
	return 0.0
func script_ControllerStep(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	pass
	return 0.0
func script_ControllerDraw(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.font_color = (GM.f_make_color((GM.vget(self, "v_TextRed") * GM.vget(self, "v_FadingFactor")), (GM.vget(self, "v_TextGreen") * GM.vget(self, "v_FadingFactor")), (GM.vget(self, "v_TextBlue") * GM.vget(self, "v_FadingFactor"))))
	GM.vset(self, "v_font_name", "Arial")
	GM.vset(self, "v_nextY", GM.vget(self, "v_startingY"))
	GM.vset(self, "v_currentLine", GM.vget(self, "v_startingLine"))
	GM.font_align = 1.0
	while (((GM.vget(self, "v_currentLine") < GM.vget(self, "v_nTextLines")) and (GM.vget(self, "v_nextY") < GM.room_height))):
		GM.vset(self, "v_font_size", GM.aget(GM.vget(self, "v_fontSize"), GM.vget(self, "v_currentLine")))
		(GM.f_draw_text((GM.room_width / 2.0), GM.vget(self, "v_nextY"), GM.aget(GM.vget(self, "v_creditLine"), GM.vget(self, "v_currentLine"))))
		GM.vset(self, "v_strHeight", (GM.f_max((GM.f_string_height(GM.aget(GM.vget(self, "v_creditLine"), GM.vget(self, "v_currentLine")))), GM.vget(self, "v_normalFont"))))
		GM.vset(self, "v_nextY", GM.vget(self, "v_nextY") + GM.vget(self, "v_strHeight"))
		if (((absf(GM.vget(self, "v_currentLine") - GM.vget(self, "v_startingLine")) < 0.00001) and ((GM.vget(self, "v_startingY") + GM.vget(self, "v_strHeight")) < GM.vget(self, "v_topOfScreen")))):
			GM.vset(self, "v_startingY", GM.vget(self, "v_nextY"))
			GM.vset(self, "v_startingLine", GM.vget(self, "v_startingLine") + 1.0)
		GM.vset(self, "v_currentLine", GM.vget(self, "v_currentLine") + 1.0)
	GM.vset(self, "v_startingY", GM.vget(self, "v_startingY") - GM.vget(self, "v_scrollSpeed"))
	if (((GM.vget(self, "v_nextY") < (GM.room_height / 2.0)) and (GM.vget(self, "v_FadingFactor") > 0.0))):
		GM.vset(self, "v_FadingFactor", (GM.f_max(0.0, (GM.vget(self, "v_FadingFactor") - GM.vget(self, "v_DeltaFading")))))
	return 0.0
