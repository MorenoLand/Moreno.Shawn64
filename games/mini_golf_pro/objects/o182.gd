extends "res://games/mini_golf_pro/scripts.gd"
var v_playername = ""
var v_wee = 0.0
var v_yglobal = 0.0
func ev_alarm_1():
	(GM.f_sound_play(25.0))
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		(GM.f_mplay_message_send_guaranteed(0.0, 80.0, GM.G["holeon"]))
	(GM.f_instance_create(0.0, 0.0, 266.0))
	GM.G["shoot"] = 0.0
	(GM.f_instance_destroy(self))
func ev_stepend():
	x = ((GM.view_xview[0] + (1024.0 / 2.0)) - (sprite_width / 2.0))
	y = ((GM.view_yview[0] + (768.0 / 2.0)) - (sprite_height / 2.0))
func ev_stepbegin():
	x = ((GM.view_xview[0] + (1024.0 / 2.0)) - (sprite_width / 2.0))
	y = ((GM.view_yview[0] + (768.0 / 2.0)) - (sprite_height / 2.0))
func ev_mouse_53():
	if ((absf((GM.f_instance_number(262.0)) - 0.0) < 0.00001)):
		alarm[int(1.0)] = 1.0
	else:
		if ((absf((GM.f_instance_number(0.0)) - 0.0) < 0.00001)):
			if (GM.eq(GM.G["yourplayer"], 1.0)):
				v_wee = GM.G["player1par"]
			if (GM.eq(GM.G["yourplayer"], 2.0)):
				v_wee = GM.G["player2par"]
			if (GM.eq(GM.G["yourplayer"], 3.0)):
				v_wee = GM.G["player3par"]
			if (GM.eq(GM.G["yourplayer"], 4.0)):
				v_wee = GM.G["player4par"]
			if (GM.eq(GM.G["yourplayer"], 5.0)):
				v_wee = GM.G["player5par"]
			if ((GM.eq(GM.G["players"], 1.0) or (absf(GM.G["online"] - 1.0) < 0.00001))):
				if ((((absf(GM.room - 8.0) < 0.00001) and (v_wee < GM.G["highscore1"])) and GM.eq(GM.G["levelset"], 1.0))):
					(GM.f_registry_write_real("swissc_score1", v_wee))
					GM.G["highscore1"] = v_wee
				else:
					if ((((absf(GM.room - 51.0) < 0.00001) and (v_wee < GM.G["highscore7"])) and GM.eq(GM.G["levelset"], 4.0))):
						(GM.f_registry_write_real("swissc_score7", v_wee))
						GM.G["highscore7"] = v_wee
					else:
						if (((absf(GM.room - 23.0) < 0.00001) and (v_wee < GM.G["highscore2"]))):
							(GM.f_registry_write_real("swissc_score2", v_wee))
							GM.G["highscore2"] = v_wee
						else:
							if (((absf(GM.room - 51.0) < 0.00001) and (v_wee < GM.G["highscore3"]))):
								(GM.f_registry_write_real("swissc_score3", v_wee))
								GM.G["highscore3"] = v_wee
							else:
								if (((absf(GM.room - 54.0) < 0.00001) and (v_wee < GM.G["highscore4"]))):
									(GM.f_registry_write_real("swissc_score4", v_wee))
									GM.G["highscore4"] = v_wee
								else:
									if (((absf(GM.room - 58.0) < 0.00001) and (v_wee < GM.G["highscore5"]))):
										(GM.f_registry_write_real("swissc_score5", v_wee))
										GM.G["highscore5"] = v_wee
									else:
										if (((absf(GM.room - 60.0) < 0.00001) and (v_wee < GM.G["highscore6"]))):
											(GM.f_registry_write_real("swissc_score6", v_wee))
											GM.G["highscore6"] = v_wee
				(GM.f_sound_stop(35.0))
				(GM.f_sound_play(16.0))
				GM.transition_kind = 13.0
				(GM.f_room_goto(57.0))
				(GM.f_instance_destroy(self))
			if (((absf(GM.room - 60.0) < 0.00001) and (GM.G["players"] > 1.0))):
				GM.G["cheat"] = 1.0
				await GM.f_show_message("Score can only be submitted in 1 player for this level!")
			if (((absf(GM.room - 54.0) < 0.00001) and (GM.G["players"] > 1.0))):
				GM.G["cheat"] = 1.0
				await GM.f_show_message("Score can only be submitted in 1 player for this level!")
			if (((((((absf(GM.room - 8.0) < 0.00001) or (absf(GM.room - 23.0) < 0.00001)) or (absf(GM.room - 51.0) < 0.00001)) or (absf(GM.room - 54.0) < 0.00001)) or (absf(GM.room - 58.0) < 0.00001)) or (absf(GM.room - 60.0) < 0.00001))):
				if ((absf(GM.G["cheat"] - 0.0) < 0.00001)):
					if ((absf((await GM.f_show_question("Do you want to submit your score Online?")) - 1.0) < 0.00001)):
						v_playername = (await GM.f_get_string("Enter your name (10 char limit):", ""))
						v_playername = (GM.f_string_copy(v_playername, 0.0, 10.0))
						if ((absf(GM.room - 8.0) < 0.00001)):
							(self.script_submit_score(("" + (GM.f_string(v_wee))), ("" + (GM.f_string(v_playername))), "12"))
						if ((absf(GM.room - 23.0) < 0.00001)):
							(self.script_submit_score(("" + (GM.f_string(v_wee))), ("" + (GM.f_string(v_playername))), "13"))
						if (((absf(GM.room - 51.0) < 0.00001) and GM.eq(GM.G["levelset"], 3.0))):
							(self.script_submit_score(("" + (GM.f_string(v_wee))), ("" + (GM.f_string(v_playername))), "14"))
						if (((absf(GM.room - 51.0) < 0.00001) and GM.eq(GM.G["levelset"], 4.0))):
							(self.script_submit_score(("" + (GM.f_string(v_wee))), ("" + (GM.f_string(v_playername))), "18"))
						if ((absf(GM.room - 54.0) < 0.00001)):
							(self.script_submit_score(("" + (GM.f_string(v_wee))), ("" + (GM.f_string(v_playername))), "15"))
						if ((absf(GM.room - 58.0) < 0.00001)):
							(self.script_submit_score(("" + (GM.f_string(v_wee))), ("" + (GM.f_string(v_playername))), "16"))
						if ((absf(GM.room - 60.0) < 0.00001)):
							(self.script_submit_score(("" + (GM.f_string(v_wee))), ("" + (GM.f_string(v_playername))), "17"))
						(GM.f_sound_play(16.0))
						(GM.f_instance_destroy(self))
		else:
			alarm[int(1.0)] = 1.0
func ev_other_4():
	if ((((((absf(GM.room - 18.0) < 0.00001) or (absf(GM.room - 30.0) < 0.00001)) or (absf(GM.room - 32.0) < 0.00001)) or (absf(GM.room - 31.0) < 0.00001)) or (absf(GM.room - 57.0) < 0.00001))):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_font(1.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_sprite_ext(134.0, 0.0, ((GM.view_xview[0] - 225.0) + (1024.0 / 2.0)), ((GM.view_yview[0] - 90.0) + (768.0 / 2.0)), 1.0, 1.0, 0.0, 16777215.0, 0.75))
	v_yglobal = (y + 101.0)
	(GM.f_draw_set_alpha(0.5))
	(GM.f_draw_set_halign(0.0))
	if (GM.eq(GM.G["yourplayer"], 1.0)):
		(GM.f_draw_text((x + 11.0), (y + 55.0), ("Current par: " + (GM.f_string(GM.G["player1par"])))))
	if (GM.eq(GM.G["yourplayer"], 2.0)):
		(GM.f_draw_text((x + 11.0), (y + 55.0), ("Current par: " + (GM.f_string(GM.G["player2par"])))))
	if (GM.eq(GM.G["yourplayer"], 3.0)):
		(GM.f_draw_text((x + 11.0), (y + 55.0), ("Current par: " + (GM.f_string(GM.G["player3par"])))))
	if (GM.eq(GM.G["yourplayer"], 4.0)):
		(GM.f_draw_text((x + 11.0), (y + 55.0), ("Current par: " + (GM.f_string(GM.G["player4par"])))))
	if (GM.eq(GM.G["yourplayer"], 5.0)):
		(GM.f_draw_text((x + 11.0), (y + 55.0), ("Current par: " + (GM.f_string(GM.G["player5par"])))))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_text((x + 27.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole1"])))))
	(GM.f_draw_text((x + 71.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole2"])))))
	(GM.f_draw_text((x + 114.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole3"])))))
	(GM.f_draw_text((x + 158.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole4"])))))
	(GM.f_draw_text((x + 202.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole5"])))))
	(GM.f_draw_text((x + 246.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole6"])))))
	(GM.f_draw_text((x + 290.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole7"])))))
	(GM.f_draw_text((x + 334.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole8"])))))
	(GM.f_draw_text((x + 378.0), v_yglobal, ("" + (GM.f_string(GM.G["scorehole9"])))))
	if (GM.eq(GM.G["yourplayer"], 1.0)):
		(GM.f_draw_text((x + 422.0), v_yglobal, ("" + (GM.f_string(GM.G["player1score"])))))
	if (GM.eq(GM.G["yourplayer"], 2.0)):
		(GM.f_draw_text((x + 422.0), v_yglobal, ("" + (GM.f_string(GM.G["player2score"])))))
	if (GM.eq(GM.G["yourplayer"], 3.0)):
		(GM.f_draw_text((x + 422.0), v_yglobal, ("" + (GM.f_string(GM.G["player3score"])))))
	if (GM.eq(GM.G["yourplayer"], 4.0)):
		(GM.f_draw_text((x + 422.0), v_yglobal, ("" + (GM.f_string(GM.G["player4score"])))))
	if (GM.eq(GM.G["yourplayer"], 5.0)):
		(GM.f_draw_text((x + 422.0), v_yglobal, ("" + (GM.f_string(GM.G["player5score"])))))
	(GM.f_draw_set_alpha(1.0))
