extends "res://games/mini_golf_pro/scripts.gd"
var v_n = 0.0
func ev_create():
	if (((GM.f_instance_number(241.0)) > 1.0)):
		(GM.f_instance_destroy(self))
		return
	(self.script_script_initlines())
	GM.keyboard_string = ""
	v_n = (GM.f_mplay_player_find())
	if ((v_n <= 1.0)):
		(self.script_script_addline("No other people are in this game.", 255.0))
	GM.G["myname"] = (GM.f_mplay_player_name(0.0))
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
func ev_step():
	pass
func ev_key_1():
	GM.keyboard_string = (GM.f_string_copy(GM.keyboard_string, 0.0, 30.0))
func ev_draw():
	(GM.f_draw_set_font(8.0))
	(GM.f_draw_set_halign(1.0))
	(self.script_script_drawlines((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 12.0)))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + (1024.0 / 2.0)), (GM.view_yview[0] + 75.0), GM.add(GM.keyboard_string, "|")))
	(GM.f_draw_set_halign(0.0))
	if ((absf(GM.G["player1ready"] - 0.0) < 0.00001)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 247.0), (("" + (GM.f_string(GM.G["p1name"]))) + " not ready")))
	if ((absf(GM.G["player2ready"] - 0.0) < 0.00001)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 267.0), (("" + (GM.f_string(GM.G["p2name"]))) + " not ready")))
	if ((absf(GM.G["player3ready"] - 0.0) < 0.00001)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 287.0), (("" + (GM.f_string(GM.G["p3name"]))) + " not ready")))
	if ((absf(GM.G["player4ready"] - 0.0) < 0.00001)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 307.0), (("" + (GM.f_string(GM.G["p4name"]))) + " not ready")))
	if ((absf(GM.G["player5ready"] - 0.0) < 0.00001)):
		(GM.f_draw_text((GM.view_xview[0] + 22.0), (GM.view_yview[0] + 327.0), (("" + (GM.f_string(GM.G["p5name"]))) + " not ready")))
func ev_keypress_51():
	if (((GM.f_keyboard_check(16.0)))) >= 0.5:
		GM.keyboard_string = ""
func ev_keypress_13():
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
	if ((((GM.f_keyboard_check(17.0))) >= 0.5 and GM.eq(GM.G["yourplayer"], 1.0))):
		(GM.f_sound_play(36.0))
		(GM.f_mplay_message_send(0.0, 555.0, GM.keyboard_string))
	if ((GM.keyboard_string == "Poofer")):
		for _w50 in GM.with_list((35.0), self):
			if _w50._dead:
				continue
			_w50.other = self
			(GM.f_instance_destroy(_w50))
	(self.script_script_addline(GM.add(GM.add(GM.G["myname"], ": "), GM.keyboard_string), 16777215.0))
	(GM.f_mplay_message_send(0.0, 7.0, GM.keyboard_string))
	GM.keyboard_string = ""
	(GM.f_sound_play(2.0))
