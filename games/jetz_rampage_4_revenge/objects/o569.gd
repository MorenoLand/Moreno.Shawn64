extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_text1 = ""
var v_text2 = ""
var v_wee = 0.0
var v_wowe = 0.0
func ev_create():
	if ((absf(GM.G["gogo1"] - 0.0) < 0.00001)):
		GM.G["gogo1"] = 1.0
		(GM.f_set_graphics_mode(1.0, 800.0, 16.0, 120.0, 1.0, 1.0, 1.0))
	if not ((((GM.f_sound_isplaying(253.0)))) >= 0.5):
		(GM.f_sound_loop(253.0))
	self.ev_user(1.0)
func ev_alarm_1():
	(GM.f_instance_create(0.0, 0.0, 990.0))
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 910.0))
	(GM.f_instance_destroy(self))
func ev_other_11():
	(GM.f_registry_write_real("jetz4_chainsaw", GM.G["j4var1"]))
	(GM.f_registry_write_real("jetz4_bazooka", GM.G["j4var2"]))
	(GM.f_registry_write_real("jetz4_flamethrower", GM.G["j4var3"]))
	(GM.f_registry_write_real("jetz4_electricgun", GM.G["j4var4"]))
	(GM.f_registry_write_real("jetz4_machinegun2", GM.G["j4var5"]))
	(GM.f_registry_write_real("jetz4_machinegun3", GM.G["j4var6"]))
	(GM.f_registry_write_real("jetz4_gravitygun", GM.G["j4var7"]))
	(GM.f_registry_write_real("jetz4_sniper", GM.G["j4var8"]))
	(GM.f_registry_write_real("jetz4_mace", GM.G["j4var9"]))
	(GM.f_registry_write_real("jetz4_bazooka2", GM.G["j4var10"]))
	(GM.f_registry_write_real("jetz4_money", GM.G["j4var11"]))
	(GM.f_registry_write_real("jetz4_level2", GM.G["j4var12"]))
	(GM.f_registry_write_real("jetz4_level3", GM.G["j4var13"]))
	(GM.f_registry_write_real("jetz4_killsc1", GM.G["j4var14"]))
	(GM.f_registry_write_real("jetz4_killsc2", GM.G["j4var15"]))
	(GM.f_registry_write_real("jetz4_killsc3", GM.G["j4var16"]))
	(GM.f_registry_write_real("jetz4_shotgun", GM.G["j4var17"]))
	(GM.f_registry_write_real("jetz4_lasergun", GM.G["j4var18"]))
	(GM.f_registry_write_real("jetz4_bazooka3", GM.G["j4var19"]))
	(GM.f_registry_write_real("jetz4_firecannon", GM.G["j4var20"]))
	(GM.f_registry_write_real("jetz4_grenade2", GM.G["j4var21"]))
	(GM.f_registry_write_real("jetz4_megagun", GM.G["j4var22"]))
	(GM.f_registry_write_real("jetz4_music", GM.G["j4var23"]))
	(GM.f_registry_write_real("jetz4_p1wins", GM.G["j4var24"]))
	(GM.f_registry_write_real("jetz4_p2wins", GM.G["j4var25"]))
	if ((absf(GM.G["j4var23"] - 1.0) < 0.00001)):
		(self.script_mp3_list())
func ev_other_10():
	(GM.f_sound_play(216.0))
	(GM.f_sound_stop(253.0))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 48.0, 0.0, 0.0))
	(GM.f_draw_set_color(8388608.0))
	GM.font_align = 1.0
	v_wowe = 495.0
	if ((absf(GM.G["selection"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite(929.0, (-1.0), (400.0 - 16.0), 555.0))
		(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Silver City"))
		(GM.f_draw_sprite(930.0, 0.0, (400.0 - (sprite_width / 2.0)), 140.0))
	if ((absf(GM.G["selection"] - 2.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Lightning City"))
		(GM.f_draw_sprite(927.0, (-1.0), (400.0 - 16.0), 480.0))
		(GM.f_draw_sprite(929.0, (-1.0), (400.0 - 16.0), 555.0))
		(GM.f_draw_sprite(930.0, 1.0, (400.0 - (sprite_width / 2.0)), 140.0))
	if ((absf(GM.G["selection"] - 3.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Multiplayer"))
		(GM.f_draw_sprite(927.0, (-1.0), (400.0 - 16.0), 480.0))
		(GM.f_draw_sprite(929.0, (-1.0), (400.0 - 16.0), 555.0))
		(GM.f_draw_sprite(930.0, 6.0, (400.0 - (sprite_width / 2.0)), 140.0))
	if ((absf(GM.G["selection"] - 4.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Upgrade Shop"))
		(GM.f_draw_sprite(927.0, (-1.0), (400.0 - 16.0), 480.0))
		(GM.f_draw_sprite(929.0, (-1.0), (400.0 - 16.0), 555.0))
		(GM.f_draw_sprite(930.0, 2.0, (400.0 - (sprite_width / 2.0)), 140.0))
	if ((absf(GM.G["selection"] - 5.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Load Game"))
		(GM.f_draw_sprite(927.0, (-1.0), (400.0 - 16.0), 480.0))
		(GM.f_draw_sprite(929.0, (-1.0), (400.0 - 16.0), 555.0))
		(GM.f_draw_sprite(930.0, 3.0, (400.0 - (sprite_width / 2.0)), 140.0))
	if ((absf(GM.G["selection"] - 6.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Credits"))
		(GM.f_draw_sprite(927.0, (-1.0), (400.0 - 16.0), 480.0))
		(GM.f_draw_sprite(929.0, (-1.0), (400.0 - 16.0), 555.0))
		(GM.f_draw_sprite(930.0, 4.0, (400.0 - (sprite_width / 2.0)), 140.0))
	if ((absf(GM.G["selection"] - 7.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Exit"))
		(GM.f_draw_sprite(927.0, (-1.0), (400.0 - 16.0), 480.0))
		(GM.f_draw_sprite(930.0, 5.0, (400.0 - (sprite_width / 2.0)), 140.0))
	(GM.f_action_draw_font("Arial", 9.0, 1.0, 0.0))
	(GM.f_draw_set_color(16711680.0))
	GM.font_align = 0.0
	if ((absf(GM.G["selection"] - 1.0) < 0.00001)):
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 80.0), "Objectives:"))
		if ((absf(GM.G["j4var8"] - 0.0) < 0.00001)):
			v_wee = "Police Boss - Incomplete"
		else:
			v_wee = "Police Boss - Complete"
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 120.0), ("" + (GM.f_string(v_wee)))))
		if ((absf(GM.G["j4var10"] - 0.0) < 0.00001)):
			v_wee = "Mission Boss - Incomplete"
		else:
			v_wee = "Mission Boss - Complete"
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 160.0), ("" + (GM.f_string(v_wee)))))
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 200.0), "UNLOCKED"))
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 240.0), ("Kills - " + (GM.f_string(GM.G["j4var14"])))))
	if ((absf(GM.G["selection"] - 2.0) < 0.00001)):
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 80.0), "Objectives:"))
		if ((absf(GM.G["j4var7"] - 0.0) < 0.00001)):
			v_wee = "Police Boss - Incomplete"
		else:
			v_wee = "Police Boss - Complete"
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 120.0), ("" + (GM.f_string(v_wee)))))
		if ((absf(GM.G["j4var9"] - 0.0) < 0.00001)):
			v_wee = "Mission Boss - Incomplete"
		else:
			v_wee = "Mission Boss - Complete"
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 160.0), ("" + (GM.f_string(v_wee)))))
		if ((absf(GM.G["j4var10"] - 0.0) < 0.00001)):
			(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 200.0), "LOCKED"))
		else:
			(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 200.0), "UNLOCKED"))
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 240.0), ("Kills - " + (GM.f_string(GM.G["j4var15"])))))
	if ((absf(GM.G["selection"] - 3.0) < 0.00001)):
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 80.0), "Death Match:"))
		if ((absf(GM.G["j4var9"] - 0.0) < 0.00001)):
			v_wee = "LOCKED"
		else:
			v_wee = "UNLOCKED"
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 120.0), ("" + (GM.f_string(v_wee)))))
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 160.0), ("P1 Wins - " + (GM.f_string(GM.G["j4var24"])))))
		(GM.f_draw_text(((400.0 - (sprite_width / 2.0)) + 370.0), (140.0 + 200.0), ("P2 Wins - " + (GM.f_string(GM.G["j4var25"])))))
	GM.font_align = 1.0
	if ((absf(GM.G["pri"] - 0.0) < 0.00001)):
		v_text1 = "Game Priority: Normal (press P to change)"
	if ((absf(GM.G["pri"] - 1.0) < 0.00001)):
		v_text1 = "Game Priority: High (press P to change)"
	if ((absf(GM.G["pri"] - 2.0) < 0.00001)):
		v_text1 = "Game Priority: Highest (press P to change)"
	if ((absf(GM.G["colordepth"] - 0.0) < 0.00001)):
		v_text2 = "Color Depth: 16bit (press C to change)"
	if ((absf(GM.G["colordepth"] - 1.0) < 0.00001)):
		v_text2 = "Color Depth: 32bit (press C to change)"
	GM.font_color = 0.0
	(GM.f_draw_text(400.0, 585.0, (((("" + (GM.f_string(v_text1))) + " - ") + (GM.f_string(v_text2))) + " - Control+R (resets game)")))
func ev_keypress_82():
	if ((absf((GM.f_keyboard_check(17.0)) - 1.0) < 0.00001)):
		(GM.f_registry_write_real("jetz4_data", 1.0))
		(self.script_deletegame())
func ev_keypress_80():
	if ((absf(GM.G["pri"] - 0.0) < 0.00001)):
		GM.G["pri"] = 1.0
		(GM.f_set_program_priority(0.0))
	else:
		if ((absf(GM.G["pri"] - 1.0) < 0.00001)):
			GM.G["pri"] = 2.0
			(GM.f_set_program_priority(1.0))
		else:
			if ((absf(GM.G["pri"] - 2.0) < 0.00001)):
				GM.G["pri"] = 0.0
				(GM.f_set_program_priority(2.0))
func ev_keypress_67():
	if ((absf(GM.G["colordepth"] - 0.0) < 0.00001)):
		GM.G["colordepth"] = 1.0
		(GM.f_set_graphics_mode(1.0, 800.0, 32.0, 120.0, 1.0, 1.0, 1.0))
	else:
		if ((absf(GM.G["colordepth"] - 1.0) < 0.00001)):
			GM.G["colordepth"] = 0.0
			(GM.f_set_graphics_mode(1.0, 800.0, 16.0, 120.0, 1.0, 1.0, 1.0))
func ev_keypress_40():
	if not (((absf(GM.G["selection"] - 7.0) < 0.00001))):
		GM.G["selection"] = GM.G["selection"] + 1.0
		(GM.f_sound_play(216.0))
func ev_keypress_38():
	if not (((absf(GM.G["selection"] - 1.0) < 0.00001))):
		GM.G["selection"] = GM.G["selection"] - 1.0
		(GM.f_sound_play(216.0))
func ev_keypress_27():
	(GM.f_game_end())
func ev_keypress_13():
	if ((absf(GM.G["selection"] - 1.0) < 0.00001)):
		self.ev_user(0.0)
		(GM.f_room_goto(1.0))
	else:
		if (((absf(GM.G["selection"] - 2.0) < 0.00001) and (absf(GM.G["j4var10"] - 1.0) < 0.00001))):
			self.ev_user(0.0)
			(GM.f_room_goto(16.0))
		else:
			if (((absf(GM.G["selection"] - 3.0) < 0.00001) and (absf(GM.G["j4var9"] - 1.0) < 0.00001))):
				self.ev_user(0.0)
				(GM.f_room_goto(20.0))
			else:
				if ((absf(GM.G["selection"] - 4.0) < 0.00001)):
					alarm[int(0.0)] = 1.0
				else:
					if (((absf(GM.G["selection"] - 5.0) < 0.00001) and ((GM.f_file_exists("Jetz4TempData"))) >= 0.5)):
						(GM.f_sound_play(216.0))
						(GM.f_sound_stop(253.0))
						(GM.f_game_load("Jetz4TempData"))
					else:
						if ((absf(GM.G["selection"] - 6.0) < 0.00001)):
							alarm[int(1.0)] = 1.0
						else:
							if ((absf(GM.G["selection"] - 7.0) < 0.00001)):
								(GM.f_game_end())
							else:
								(GM.f_sound_play(245.0))
