extends "res://games/net_racer/scripts.gd"
var v_messid = 0.0
var v_val = 0.0
func ev_create():
	(GM.f_sound_stop(12.0))
	(GM.f_mplay_data_mode(0.0))
	GM.G["start"] = 0.0
	GM.G["othertalk"] = ""
	if (((absf(GM.G["master"] - 1.0) < 0.00001))):
		GM.score = GM.G["masterscore"]
		GM.lives = GM.G["slavescore"]
	else:
		GM.score = GM.G["slavescore"]
		GM.lives = GM.G["masterscore"]
func ev_step():
	while GM.truth(((GM.f_mplay_message_receive(0.0)))):
		v_messid = (GM.f_mplay_message_id())
		v_val = (GM.f_mplay_message_value())
		if (GM.eq(v_messid, 1.0)):
			GM.G["othertalk"] = v_val
			(GM.f_sound_play(14.0))
		if (GM.eq(v_messid, 88.0)):
			(GM.f_sound_play(19.0))
			self.ev_user(0.0)
	if (((GM.f_mplay_player_find()) < 2.0)):
		await GM.f_show_message("Other player has stopped!")
		(GM.f_mplay_session_end())
		(GM.f_room_goto(2.0))
func ev_other_10():
	(GM.f_room_goto(0.0))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Arial", 11.0, 1.0, 0.0))
	(GM.f_draw_set_color(16711680.0))
	(GM.f_draw_text((GM.room_width / 2.0), 25.0, ("You: " + (GM.f_string(GM.keyboard_string)))))
	(GM.f_draw_text((GM.room_width / 2.0), 55.0, ("P2: " + (GM.f_string(GM.G["othertalk"])))))
	(GM.f_draw_text((GM.room_width / 2.0), 250.0, "HOST PUSH F1"))
func ev_keypress_112():
	if (((absf(GM.G["master"] - 1.0) < 0.00001))):
		(GM.f_sound_play(19.0))
		(GM.f_mplay_message_send(0.0, 88.0, 0.0))
		(GM.f_room_goto(0.0))
func ev_keypress_13():
	(GM.f_mplay_message_send(0.0, 1.0, GM.keyboard_string))
	GM.keyboard_string = ""
	(GM.f_sound_play(13.0))
