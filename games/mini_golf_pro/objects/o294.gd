extends "res://games/mini_golf_pro/scripts.gd"
var v_aaa = 0.0
var v_bbb = 0.0
var v_ccc = 0.0
var v_ddd = 0.0
var v_eee = 0.0
var v_showtext = 0.0
var v_wow = 0.0
func ev_create():
	if ((GM.G["players"] > 1.0)):
		if ((GM.G["players"] < 5.0)):
			GM.G["player5par"] = 10000.0
		if ((GM.G["players"] < 4.0)):
			GM.G["player4par"] = 10000.0
		if ((GM.G["players"] < 3.0)):
			GM.G["player3par"] = 10000.0
		if ((GM.G["players"] < 2.0)):
			GM.G["player2par"] = 10000.0
		v_aaa = GM.G["player1par"]
		v_bbb = GM.G["player2par"]
		v_ccc = GM.G["player3par"]
		v_ddd = GM.G["player4par"]
		v_eee = GM.G["player5par"]
		if (((((v_aaa < v_bbb) and (v_aaa < v_ccc)) and (v_aaa < v_ddd)) and (v_aaa < v_eee))):
			v_showtext = (("" + (GM.f_string(GM.G["p1name"]))) + " Wins!")
		else:
			if (((((v_bbb < v_aaa) and (v_bbb < v_ccc)) and (v_bbb < v_ddd)) and (v_bbb < v_eee))):
				v_showtext = (("" + (GM.f_string(GM.G["p2name"]))) + " Wins!")
			else:
				if (((((v_ccc < v_aaa) and (v_ccc < v_bbb)) and (v_ccc < v_ddd)) and (v_ccc < v_eee))):
					v_showtext = (("" + (GM.f_string(GM.G["p3name"]))) + " Wins!")
				else:
					if (((((v_ddd < v_aaa) and (v_ddd < v_bbb)) and (v_ddd < v_ccc)) and (v_ddd < v_eee))):
						v_showtext = (("" + (GM.f_string(GM.G["p4name"]))) + " Wins!")
					else:
						if (((((v_eee < v_aaa) and (v_eee < v_bbb)) and (v_eee < v_ccc)) and (v_eee < v_ddd))):
							v_showtext = (("" + (GM.f_string(GM.G["p5name"]))) + " Wins!")
						else:
							v_showtext = "Tie Game!"
	else:
		if ((GM.G["player1par"] > 20.0)):
			v_showtext = "Horrible!"
		else:
			if ((GM.G["player1par"] > 10.0)):
				v_showtext = "Practice More!"
			else:
				if ((GM.G["player1par"] > 0.0)):
					v_showtext = "Nice Job"
				else:
					if ((GM.G["player1par"] > (-10.0))):
						v_showtext = "Great Job!"
					else:
						if ((GM.G["player1par"] > (-20.0))):
							v_showtext = "Fantastic Job!"
						else:
							if ((GM.G["player1par"] > (-10000.0))):
								v_showtext = "AMAZING JOB!"
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		(GM.f_instance_create(0.0, 0.0, 241.0))
	(GM.f_sound_loop(46.0))
	(GM.f_instance_create(((512.0 - 45.0) + (GM.f_random(90.0))), 264.0, 298.0))
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_create(((512.0 - 45.0) + (GM.f_random(90.0))), 264.0, 298.0))
	alarm[int(0.0)] = 10.0
func ev_step():
	v_wow = (GM.f_floor((GM.f_random(15.999))))
	if ((v_wow < 5.0)):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 107.0))
	if ((absf(v_wow - 6.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 106.0))
	GM.G["player1ready"] = 1.0
	GM.G["player2ready"] = 1.0
	GM.G["player3ready"] = 1.0
	GM.G["player4ready"] = 1.0
	GM.G["player5ready"] = 1.0
	while GM.truth(((GM.f_mplay_message_receive(0.0)))):
		(self.script_receivemessage())
func ev_mouse_53():
	(GM.f_sound_stop(46.0))
	if ((absf(GM.G["online"] - 0.0) < 0.00001)):
		(GM.f_sound_play(16.0))
		GM.transition_kind = 13.0
		(GM.f_room_goto(30.0))
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		(GM.f_sound_play(16.0))
		GM.transition_kind = 13.0
		(GM.f_room_goto(31.0))
func ev_draw():
	(GM.f_draw_sprite(196.0, (-1.0), 512.0, (768.0 / 2.0)))
	(GM.f_draw_set_font(6.0))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_text((GM.view_xview[0] + 512.0), (GM.view_yview[0] + 80.0), ("" + (GM.f_string(v_showtext)))))
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_text((GM.view_xview[0] + 512.0), (GM.view_yview[0] + 650.0), "Click to Continue!"))
