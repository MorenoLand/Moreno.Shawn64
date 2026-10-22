extends "res://games/net_racer/scripts.gd"
var v_moves = 0.0
func ev_create():
	if (((absf(GM.G["master"] - 1.0) < 0.00001))):
		GM.view_object[0] = 50.0
		v_moves = 1.0
func ev_alarm_0():
	vspeed = 0.0
	(GM.f_mplay_message_send(0.0, 1.0, x))
	(GM.f_mplay_message_send(0.0, 2.0, y))
	(GM.f_mplay_message_send(0.0, 56.0, 0.0))
	v_moves = 1.0
func ev_col_56():
	if (((absf(GM.G["master"] - 1.0) < 0.00001))):
		GM.G["masterscore"] = GM.G["masterscore"] + 1.0
		(GM.f_sound_play(19.0))
		(GM.f_mplay_message_send(0.0, 7.0, 0.0))
		(GM.f_room_goto(5.0))
func ev_keypress_38():
	if (((absf(GM.G["start"] - 1.0) < 0.00001))):
		if (((absf(GM.G["master"] - 1.0) < 0.00001))):
			if (((absf(v_moves - 1.0) < 0.00001))):
				if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + (-32.0)), 53.0)))) >= 0.5)):
					(GM.f_sound_play(13.0))
					(GM.f_mplay_message_send(0.0, 4.0, 0.0))
					(GM.f_mplay_message_send(0.0, 55.0, 0.0))
					(GM.f_action_move(self, "000000010", 8.0, 0.0))
					(GM.f_mplay_message_send(0.0, 3.0, 0.0))
					v_moves = 0.0
					alarm[int(0.0)] = 4.0
				else:
					(GM.f_sound_play(15.0))
					x = x + 0.0
					y = y + 320.0
					(GM.f_mplay_message_send(0.0, 5.0, 0.0))
					(GM.f_mplay_message_send(0.0, 1.0, x))
					(GM.f_mplay_message_send(0.0, 2.0, y))
func ev_keypress_17():
	if (((absf(GM.G["start"] - 1.0) < 0.00001))):
		if (((absf(GM.G["master"] - 1.0) < 0.00001))):
			if (((absf(v_moves - 1.0) < 0.00001))):
				if ((((GM.f_place_meeting(self, (x + 0.0), (y + (-32.0)), 53.0))))) >= 0.5:
					(GM.f_sound_play(14.0))
					(GM.f_action_move(self, "000000010", 8.0, 0.0))
					(GM.f_mplay_message_send(0.0, 4.0, 0.0))
					(GM.f_mplay_message_send(0.0, 55.0, 0.0))
					v_moves = 0.0
					alarm[int(0.0)] = 8.0
