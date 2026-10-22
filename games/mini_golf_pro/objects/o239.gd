extends "res://games/mini_golf_pro/scripts.gd"
var v_i = 0.0
var v_n = 0.0
var v_str = 0.0
var v_temp = 0.0
func ev_create():
	(self.script_script_initlines())
	GM.keyboard_string = ""
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		v_n = (GM.f_mplay_player_find())
		if ((v_n <= 1.0)):
			(self.script_script_addline("The host can push F2 at any time to reset a level.", 255.0))
			(self.script_script_addline("Make sure all players see each other.", 255.0))
			(self.script_script_addline("If they can't there is a connection issue.", 255.0))
			(self.script_script_addline("Routers and Firewalls can cause connection issues.", 255.0))
		else:
			v_str = "Currently present: "
			v_i = 1.0
			while (v_i < v_n):
				v_str = GM.add(v_str, GM.add((GM.f_mplay_player_name(v_i)), "  "))
				v_i = v_i + 1.0
			(self.script_script_addline("Make sure all players see each other.", 255.0))
			(self.script_script_addline("If they can't there is a connection issue.", 255.0))
			(self.script_script_addline("Routers and Firewalls can cause connection issues.", 255.0))
			(self.script_script_addline(v_str, 255.0))
		GM.G["myname"] = (GM.f_mplay_player_name(0.0))
		(GM.f_mplay_message_send(0.0, 8.0, GM.add(GM.G["myname"], " joined the lobby")))
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if (GM.eq(GM.G["yourplayer"], 1.0)):
				(GM.f_mplay_message_send(0.0, 700.0, GM.G["myname"]))
				GM.G["p1name"] = GM.G["myname"]
			if (GM.eq(GM.G["yourplayer"], 2.0)):
				(GM.f_mplay_message_send(0.0, 701.0, GM.G["myname"]))
				GM.G["p2name"] = GM.G["myname"]
			if (GM.eq(GM.G["yourplayer"], 3.0)):
				(GM.f_mplay_message_send(0.0, 702.0, GM.G["myname"]))
				GM.G["p3name"] = GM.G["myname"]
			if (GM.eq(GM.G["yourplayer"], 4.0)):
				(GM.f_mplay_message_send(0.0, 703.0, GM.G["myname"]))
				GM.G["p4name"] = GM.G["myname"]
			if (GM.eq(GM.G["yourplayer"], 5.0)):
				(GM.f_mplay_message_send(0.0, 704.0, GM.G["myname"]))
				GM.G["p5name"] = GM.G["myname"]
	else:
		(self.script_script_addline("To select a ball click on your old ball to select it.", 255.0))
		(self.script_script_addline("Then click on a new one.", 255.0))
func ev_step():
	pass
func ev_key_1():
	GM.keyboard_string = (GM.f_string_copy(GM.keyboard_string, 0.0, 45.0))
func ev_draw():
	(GM.f_draw_set_font(7.0))
	(GM.f_draw_set_halign(0.0))
	(self.script_script_drawlines(530.0, 325.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(530.0, 373.0, GM.add(GM.keyboard_string, "|")))
func ev_keypress_51():
	if (((GM.f_keyboard_check(16.0)))) >= 0.5:
		GM.keyboard_string = ""
func ev_keypress_13():
	if (((GM.keyboard_string == "/shawn64conlinecode454") and (absf(GM.G["swisscreg"] - 1.0) < 0.00001))):
		(GM.f_mplay_message_send(0.0, 1009.0, 0.0))
		(GM.f_sound_play(16.0))
		GM.keyboard_string = ":::Shawn64 Online Code Activated!:::"
	if (((GM.keyboard_string == "/shawn64makemegod454") and (absf(GM.G["swisscreg"] - 1.0) < 0.00001))):
		(GM.f_sound_play(16.0))
		GM.keyboard_string = ":::Shawn64 God Mode Activated!:::"
	if (((GM.keyboard_string == "/shawn64changehost") and (absf(GM.G["swisscreg"] - 1.0) < 0.00001))):
		(GM.f_sound_play(16.0))
		GM.G["hostchange"] = 1.0
		GM.keyboard_string = ":::Shawn64 Host Switch!:::"
	if (((GM.keyboard_string == "/shawn64minemadness") and (absf(GM.G["swisscreg"] - 1.0) < 0.00001))):
		(GM.f_sound_play(16.0))
		GM.G["minecheat"] = 1.0
		GM.keyboard_string = ":::Shawn64:::"
	v_temp = (GM.f_string_copy(GM.keyboard_string, 0.0, 1.0))
	if ((v_temp == "/")):
		GM.keyboard_string = ""
	else:
		(self.script_script_addline(GM.add(GM.add(GM.G["myname"], ": "), GM.keyboard_string), 16777215.0))
		(GM.f_mplay_message_send(0.0, 7.0, GM.keyboard_string))
		GM.keyboard_string = ""
		(GM.f_sound_play(2.0))
