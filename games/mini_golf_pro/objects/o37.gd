extends "res://games/mini_golf_pro/scripts.gd"
var v_endd = 0.0
var v_goto = 0.0
var v_implayer = 0.0
var v_wee = 0.0
var v_wee3 = 0.0
var v_wowz = 0.0
var v_yyy = 0.0
func ev_create():
	for _w6 in GM.with_list((291.0), self):
		if _w6._dead:
			continue
		_w6.other = self
		(GM.f_instance_destroy(_w6))
	v_yyy = y
	v_endd = 0.0
func ev_alarm_1():
	(GM.f_instance_create(x, y, 95.0))
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	if (((absf(GM.G["online"] - 1.0) < 0.00001) and GM.eq(v_implayer, GM.G["yourplayer"]))):
		if ((absf(v_implayer - 1.0) < 0.00001)):
			(GM.f_mplay_message_send_guaranteed(0.0, 81.0, 0.0))
		if ((absf(v_implayer - 2.0) < 0.00001)):
			(GM.f_mplay_message_send_guaranteed(0.0, 82.0, 0.0))
		if ((absf(v_implayer - 3.0) < 0.00001)):
			(GM.f_mplay_message_send_guaranteed(0.0, 83.0, 0.0))
		if ((absf(v_implayer - 4.0) < 0.00001)):
			(GM.f_mplay_message_send_guaranteed(0.0, 84.0, 0.0))
		if ((absf(v_implayer - 5.0) < 0.00001)):
			(GM.f_mplay_message_send_guaranteed(0.0, 85.0, 0.0))
	v_endd = 1.0
	v_wee3 = (GM.f_instance_create(x, y, 237.0))
	if ((absf(v_implayer - 1.0) < 0.00001)):
		v_wowz = GM.G["player1shots"]
	if ((absf(v_implayer - 2.0) < 0.00001)):
		v_wowz = GM.G["player2shots"]
	if ((absf(v_implayer - 3.0) < 0.00001)):
		v_wowz = GM.G["player3shots"]
	if ((absf(v_implayer - 4.0) < 0.00001)):
		v_wowz = GM.G["player4shots"]
	if ((absf(v_implayer - 5.0) < 0.00001)):
		v_wowz = GM.G["player5shots"]
	if (((absf(v_implayer - 1.0) < 0.00001) and (GM.G["player1shots"] < 1.0))):
		GM.G["player1shots"] = 1.0
	if (((absf(v_implayer - 2.0) < 0.00001) and (GM.G["player2shots"] < 1.0))):
		GM.G["player2shots"] = 1.0
	if (((absf(v_implayer - 3.0) < 0.00001) and (GM.G["player3shots"] < 1.0))):
		GM.G["player3shots"] = 1.0
	if (((absf(v_implayer - 4.0) < 0.00001) and (GM.G["player4shots"] < 1.0))):
		GM.G["player4shots"] = 1.0
	if (((absf(v_implayer - 5.0) < 0.00001) and (GM.G["player5shots"] < 1.0))):
		GM.G["player5shots"] = 1.0
	GM.vset(v_wee3, "v_showtext", "")
	if (GM.eq(v_wowz, 1.0)):
		GM.vset(v_wee3, "v_showtext", "Hole In One!")
		(GM.f_sound_play(36.0))
		(GM.f_sound_play(19.0))
		for _r7 in range(int((25.0))):
			(GM.f_instance_create(x, y, 106.0))
		for _r8 in range(int((50.0))):
			(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 313.0))
	else:
		if (((-((GM.G["par"] - v_wowz))) > 2.0)):
			GM.vset(v_wee3, "v_showtext", "")
			(GM.f_sound_play(34.0))
		else:
			if ((absf((-((GM.G["par"] - v_wowz))) - 2.0) < 0.00001)):
				GM.vset(v_wee3, "v_showtext", "Double Bogey")
				(GM.f_sound_play(34.0))
			else:
				if ((absf((-((GM.G["par"] - v_wowz))) - 1.0) < 0.00001)):
					GM.vset(v_wee3, "v_showtext", "Bogey")
					(GM.f_sound_play(34.0))
				else:
					if ((absf((-((GM.G["par"] - v_wowz))) - 0.0) < 0.00001)):
						GM.vset(v_wee3, "v_showtext", "Par")
						(GM.f_sound_play(35.0))
					else:
						if ((absf((-((GM.G["par"] - v_wowz))) - (-1.0)) < 0.00001)):
							GM.vset(v_wee3, "v_showtext", "Birdie!")
							(GM.f_sound_play(35.0))
						else:
							if ((absf((-((GM.G["par"] - v_wowz))) - (-2.0)) < 0.00001)):
								GM.vset(v_wee3, "v_showtext", "Eagle")
								(GM.f_sound_play(36.0))
							else:
								if (((-((GM.G["par"] - v_wowz))) < (-2.0))):
									GM.vset(v_wee3, "v_showtext", "Great Job!")
									(GM.f_sound_play(36.0))
	if ((((((absf((GM.f_instance_number(243.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(248.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(249.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(251.0)) - 0.0) < 0.00001))):
		alarm[int(1.0)] = 50.0
	else:
		v_goto = 0.0
		if (GM.eq(v_implayer, GM.G["personsturn"])):
			if ((absf(GM.G["online"] - 1.0) < 0.00001)):
				if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
					(GM.f_instance_create(0.0, 0.0, 256.0))
			if ((absf(GM.G["online"] - 0.0) < 0.00001)):
				(self.script_nextturn())
		(GM.f_instance_destroy(self))
func ev_step():
	if ((y < GM.add(v_yyy, 10.0))):
		y = y + 1.0
	else:
		if (((absf(alarm[int(0.0)] - (-1.0)) < 0.00001) and (absf(v_endd - 0.0) < 0.00001))):
			alarm[int(0.0)] = 30.0
func ev_draw():
	(GM.f_draw_set_color(41984.0))
	if ((absf(v_implayer - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player1ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 2.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player2ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 3.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player3ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 4.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player4ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 5.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player5ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
