extends "res://games/mini_golf_pro/scripts.gd"
var v_player = 0.0
var v_poo = 0.0
var v_red = 0.0
var v_wee = 0.0
func ev_create():
	(GM.f_sprite_set_alpha_from_sprite(61.0, 63.0))
	v_wee = 0.0
	v_red = 0.0
func ev_step():
	v_wee = GM.add(v_wee, 4.0)
func ev_mouse_4():
	if (((v_player > 0.0) and (absf(GM.vget(220.0, "v_playerselect") - 0.0) < 0.00001))):
		(GM.f_sound_play(25.0))
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			if (GM.eq(GM.G["yourplayer"], v_player)):
				v_red = 1.0
				GM.vset(220.0, "v_playerselect", v_player)
		else:
			v_red = 1.0
			GM.vset(220.0, "v_playerselect", v_player)
	if (((absf(v_player - 0.0) < 0.00001) and (absf(GM.vget(220.0, "v_playerselect") - 1.0) < 0.00001))):
		GM.G["player1ball"] = v_poo
		(GM.f_sound_play(25.0))
		for _w41 in GM.with_list((231.0), self):
			if _w41._dead:
				continue
			_w41.other = self
			if ((absf(GM.vget(_w41, "v_player") - 1.0) < 0.00001)):
				GM.vset(_w41, "v_player", 0.0)
			GM.vset(_w41, "v_red", 0.0)
		v_player = 1.0
		GM.vset(220.0, "v_playerselect", 0.0)
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			(GM.f_mplay_message_send(0.0, 1.0, GM.G["player1ball"]))
	if (((absf(v_player - 0.0) < 0.00001) and (absf(GM.vget(220.0, "v_playerselect") - 2.0) < 0.00001))):
		GM.G["player2ball"] = v_poo
		(GM.f_sound_play(25.0))
		for _w42 in GM.with_list((231.0), self):
			if _w42._dead:
				continue
			_w42.other = self
			if ((absf(GM.vget(_w42, "v_player") - 2.0) < 0.00001)):
				GM.vset(_w42, "v_player", 0.0)
			GM.vset(_w42, "v_red", 0.0)
		v_player = 2.0
		GM.vset(220.0, "v_playerselect", 0.0)
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			(GM.f_mplay_message_send(0.0, 2.0, GM.G["player2ball"]))
	if (((absf(v_player - 0.0) < 0.00001) and (absf(GM.vget(220.0, "v_playerselect") - 3.0) < 0.00001))):
		GM.G["player3ball"] = v_poo
		(GM.f_sound_play(25.0))
		for _w43 in GM.with_list((231.0), self):
			if _w43._dead:
				continue
			_w43.other = self
			if ((absf(GM.vget(_w43, "v_player") - 3.0) < 0.00001)):
				GM.vset(_w43, "v_player", 0.0)
			GM.vset(_w43, "v_red", 0.0)
		v_player = 3.0
		GM.vset(220.0, "v_playerselect", 0.0)
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			(GM.f_mplay_message_send(0.0, 3.0, GM.G["player3ball"]))
	if (((absf(v_player - 0.0) < 0.00001) and (absf(GM.vget(220.0, "v_playerselect") - 4.0) < 0.00001))):
		GM.G["player4ball"] = v_poo
		(GM.f_sound_play(25.0))
		for _w44 in GM.with_list((231.0), self):
			if _w44._dead:
				continue
			_w44.other = self
			if ((absf(GM.vget(_w44, "v_player") - 4.0) < 0.00001)):
				GM.vset(_w44, "v_player", 0.0)
			GM.vset(_w44, "v_red", 0.0)
		v_player = 4.0
		GM.vset(220.0, "v_playerselect", 0.0)
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			(GM.f_mplay_message_send(0.0, 4.0, GM.G["player4ball"]))
	if (((absf(v_player - 0.0) < 0.00001) and (absf(GM.vget(220.0, "v_playerselect") - 5.0) < 0.00001))):
		GM.G["player5ball"] = v_poo
		(GM.f_sound_play(25.0))
		for _w45 in GM.with_list((231.0), self):
			if _w45._dead:
				continue
			_w45.other = self
			if ((absf(GM.vget(_w45, "v_player") - 5.0) < 0.00001)):
				GM.vset(_w45, "v_player", 0.0)
			GM.vset(_w45, "v_red", 0.0)
		v_player = 5.0
		GM.vset(220.0, "v_playerselect", 0.0)
		if ((absf(GM.G["online"] - 1.0) < 0.00001)):
			(GM.f_mplay_message_send(0.0, 5.0, GM.G["player5ball"]))
func ev_draw():
	(GM.f_draw_sprite_ext(0.0, v_poo, x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
	if ((absf(v_red - 0.0) < 0.00001)):
		if ((absf(v_player - 1.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 0.0, x, y))
		if ((absf(v_player - 2.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 1.0, x, y))
		if ((absf(v_player - 3.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 2.0, x, y))
		if ((absf(v_player - 4.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 3.0, x, y))
		if ((absf(v_player - 5.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 4.0, x, y))
	else:
		if ((absf(v_player - 1.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 5.0, x, y))
		if ((absf(v_player - 2.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 6.0, x, y))
		if ((absf(v_player - 3.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 7.0, x, y))
		if ((absf(v_player - 4.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 8.0, x, y))
		if ((absf(v_player - 5.0) < 0.00001)):
			(GM.f_draw_sprite(158.0, 9.0, x, y))
