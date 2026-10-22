extends "res://games/mini_golf_pro/scripts.gd"
var v_foo = 0.0
var v_i = 0.0
func ev_create():
	(GM.f_instance_create(x, y, 241.0))
	alarm[int(0.0)] = 30.0
func ev_alarm_0():
	alarm[int(0.0)] = 60.0
	if (((GM.f_instance_number(243.0)) > 0.0)):
		if ((GM.vb(243.0, "speed") > 0.0)):
			return
	if (((GM.f_instance_number(248.0)) > 0.0)):
		if ((GM.vb(248.0, "speed") > 0.0)):
			return
	if (((GM.f_instance_number(249.0)) > 0.0)):
		if ((GM.vb(249.0, "speed") > 0.0)):
			return
	if (((GM.f_instance_number(250.0)) > 0.0)):
		if ((GM.vb(250.0, "speed") > 0.0)):
			return
	if (((GM.f_instance_number(251.0)) > 0.0)):
		if ((GM.vb(251.0, "speed") > 0.0)):
			return
	if (((GM.f_instance_number(115.0)) > 0.0)):
		return
	if (((GM.f_instance_number(41.0)) > 0.0)):
		return
	if (((GM.f_instance_number(37.0)) > 0.0)):
		return
	if (((GM.f_instance_number(40.0)) > 0.0)):
		return
	if (((GM.f_instance_number(113.0)) > 0.0)):
		return
	if (((GM.f_instance_number(98.0)) > 0.0)):
		return
	v_i = 0.0
	while (v_i < (GM.f_instance_number(235.0))):
		v_foo = (GM.f_instance_find(235.0, v_i))
		if (GM.vb(v_foo, "speed") > 0.0):
			return
		v_i = v_i + 1.0
	if (GM.eq(GM.G["yourplayer"], 1.0)):
		GM.G["player1ready"] = 1.0
		(GM.f_mplay_message_send(0.0, 402.0, 0.0))
	if (GM.eq(GM.G["yourplayer"], 2.0)):
		GM.G["player2ready"] = 1.0
		(GM.f_mplay_message_send(0.0, 403.0, 0.0))
	if (GM.eq(GM.G["yourplayer"], 3.0)):
		GM.G["player3ready"] = 1.0
		(GM.f_mplay_message_send(0.0, 404.0, 0.0))
	if (GM.eq(GM.G["yourplayer"], 4.0)):
		GM.G["player4ready"] = 1.0
		(GM.f_mplay_message_send(0.0, 405.0, 0.0))
	if (GM.eq(GM.G["yourplayer"], 5.0)):
		GM.G["player5ready"] = 1.0
		(GM.f_mplay_message_send(0.0, 406.0, 0.0))
func ev_step():
	while GM.truth(((GM.f_mplay_message_receive(0.0)))):
		(self.script_receivemessage())
func ev_keypress_113():
	if (((absf(GM.G["online"] - 1.0) < 0.00001) and GM.eq(GM.G["yourplayer"], 1.0))):
		GM.G["player1ready"] = 1.0
		GM.G["player2ready"] = 1.0
		GM.G["player3ready"] = 1.0
		GM.G["player4ready"] = 1.0
		GM.G["player5ready"] = 1.0
		(GM.f_mplay_message_send(0.0, 929.0, 0.0))
		GM.G["player1shots"] = 0.0
		GM.G["player2shots"] = 0.0
		GM.G["player3shots"] = 0.0
		GM.G["player4shots"] = 0.0
		GM.G["player5shots"] = 0.0
		GM.G["personsturn"] = 1.0
		(GM.f_sound_play(13.0))
		(GM.f_room_restart())
func ev_keypress_57():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	(GM.f_sound_play(55.0))
	(GM.f_mplay_message_send(0.0, 559.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_56():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	(GM.f_sound_play(54.0))
	(GM.f_mplay_message_send(0.0, 558.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_55():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	(GM.f_sound_play(53.0))
	(GM.f_mplay_message_send(0.0, 557.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_54():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	(GM.f_sound_play(52.0))
	(GM.f_mplay_message_send(0.0, 556.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_53():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
		return
	(GM.f_sound_play(51.0))
	(GM.f_mplay_message_send(0.0, 554.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_52():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
		return
	(GM.f_sound_play(50.0))
	(GM.f_mplay_message_send(0.0, 553.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_51():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
		return
	(GM.f_sound_play(49.0))
	(GM.f_mplay_message_send(0.0, 552.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_50():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
		return
	(GM.f_sound_play(48.0))
	(GM.f_mplay_message_send(0.0, 551.0, 0.0))
	GM.keyboard_string = ""
func ev_keypress_49():
	if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
		return
	if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
		return
	(GM.f_sound_play(47.0))
	(GM.f_mplay_message_send(0.0, 550.0, 0.0))
	GM.keyboard_string = ""
