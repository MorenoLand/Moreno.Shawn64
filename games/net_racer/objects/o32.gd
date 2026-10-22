extends "res://games/net_racer/scripts.gd"
var v_messid = 0.0
var v_val = 0.0
var v_val1 = 0.0
var v_val2 = 0.0
func ev_create():
	(GM.f_mplay_data_mode(0.0))
	GM.G["start"] = 1.0
	v_val1 = 0.0
	v_val2 = 0.0
	(GM.f_sound_loop(12.0))
func ev_step():
	while GM.truth(((GM.f_mplay_message_receive(0.0)))):
		v_messid = (GM.f_mplay_message_id())
		v_val = (GM.f_mplay_message_value())
		if ((absf(GM.G["master"] - 0.0) < 0.00001)):
			if (GM.eq(v_messid, 55.0)):
				GM.vsetb(50.0, "vspeed", (-8.0))
			if (GM.eq(v_messid, 56.0)):
				GM.vsetb(50.0, "vspeed", 0.0)
			if (GM.eq(v_messid, 1.0)):
				GM.vsetb(50.0, "x", v_val)
			if (GM.eq(v_messid, 2.0)):
				GM.vsetb(50.0, "y", v_val)
			if (GM.eq(v_messid, 7.0)):
				GM.G["masterscore"] = GM.G["masterscore"] + 1.0
		if ((absf(GM.G["master"] - 1.0) < 0.00001)):
			if (GM.eq(v_messid, 55.0)):
				GM.vsetb(57.0, "vspeed", (-8.0))
			if (GM.eq(v_messid, 56.0)):
				GM.vsetb(57.0, "vspeed", 0.0)
			if (GM.eq(v_messid, 1.0)):
				GM.vsetb(57.0, "x", v_val)
			if (GM.eq(v_messid, 2.0)):
				GM.vsetb(57.0, "y", v_val)
			if (GM.eq(v_messid, 7.0)):
				GM.G["slavescore"] = GM.G["slavescore"] + 1.0
		if (GM.eq(v_messid, 66.0)):
			v_val1 = v_val
		if (GM.eq(v_messid, 67.0)):
			v_val2 = v_val
		if (GM.eq(v_messid, 68.0)):
			(GM.f_instance_create(v_val1, v_val2, 53.0))
			(GM.f_instance_create(GM.add(v_val1, GM.G["shoosh"]), v_val2, 53.0))
		if (GM.eq(v_messid, 3.0)):
			(GM.f_sound_play(16.0))
		if (GM.eq(v_messid, 4.0)):
			(GM.f_sound_play(17.0))
		if (GM.eq(v_messid, 5.0)):
			(GM.f_sound_play(18.0))
		if (GM.eq(v_messid, 6.0)):
			(GM.f_sound_play(19.0))
			GM.G["start"] = 1.0
		if (GM.eq(v_messid, 7.0)):
			self.ev_user(0.0)
	if (((GM.f_mplay_player_find()) < 2.0)):
		await GM.f_show_message("Other player has stopped!")
		(GM.f_mplay_session_end())
		(GM.f_room_goto(2.0))
func ev_other_10():
	(GM.f_room_goto(5.0))
func ev_other_4():
	GM.G["shoosh"] = (GM.vb(57.0, "x") - GM.vb(50.0, "x"))
func ev_draw():
	(GM.f_draw_sprite(44.0, (-1.0), 0.0, GM.view_yview[0]))
	(GM.f_draw_sprite(45.0, (-1.0), 0.0, (GM.view_yview[0] + (GM.vb(50.0, "y") / ((GM.room_height / 300.0))))))
	(GM.f_draw_sprite(46.0, (-1.0), 0.0, (GM.view_yview[0] + (GM.vb(57.0, "y") / ((GM.room_height / 300.0))))))
