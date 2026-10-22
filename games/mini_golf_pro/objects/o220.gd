extends "res://games/mini_golf_pro/scripts.gd"
var v_messid = 0.0
var v_myip = 0.0
var v_playerselect = 0.0
var v_poo = 0.0
var v_val = 0.0
var v_wee = 0.0
func ev_create():
	v_myip = (GM.f_mplay_ipaddress())
	v_playerselect = 0.0
	alarm[int(0.0)] = 1.0
	v_poo = (GM.f_instance_create(534.0, 432.0, 233.0))
	GM.vset(v_poo, "v_number", 1.0)
	v_poo = (GM.f_instance_create(534.0, 452.0, 233.0))
	GM.vset(v_poo, "v_number", 2.0)
	v_poo = (GM.f_instance_create(534.0, 472.0, 233.0))
	GM.vset(v_poo, "v_number", 3.0)
	v_poo = (GM.f_instance_create(534.0, 492.0, 233.0))
	GM.vset(v_poo, "v_number", 4.0)
	v_poo = (GM.f_instance_create(534.0, 512.0, 233.0))
	GM.vset(v_poo, "v_number", 5.0)
	v_poo = (GM.f_instance_create(534.0, 571.0, 236.0))
	GM.vset(v_poo, "v_number", 1.0)
	v_poo = (GM.f_instance_create(534.0, 591.0, 236.0))
	GM.vset(v_poo, "v_number", 2.0)
	v_poo = (GM.f_instance_create(22.0, 332.0, 263.0))
	GM.vset(v_poo, "v_number", 1.0)
	v_poo = (GM.f_instance_create(22.0, 352.0, 263.0))
	GM.vset(v_poo, "v_number", 2.0)
	v_poo = (GM.f_instance_create(22.0, 372.0, 263.0))
	GM.vset(v_poo, "v_number", 3.0)
	v_poo = (GM.f_instance_create(22.0, 392.0, 263.0))
	GM.vset(v_poo, "v_number", 4.0)
	v_poo = (GM.f_instance_create(22.0, 412.0, 263.0))
	GM.vset(v_poo, "v_number", 5.0)
	v_poo = (GM.f_instance_create(22.0, 432.0, 263.0))
	GM.vset(v_poo, "v_number", 6.0)
	v_poo = (GM.f_instance_create(22.0, 452.0, 263.0))
	GM.vset(v_poo, "v_number", 7.0)
	v_poo = (GM.f_instance_create(22.0, 472.0, 263.0))
	GM.vset(v_poo, "v_number", 8.0)
	v_poo = (GM.f_instance_create(22.0, 492.0, 263.0))
	GM.vset(v_poo, "v_number", 9.0)
	v_poo = (GM.f_instance_create(22.0, 512.0, 263.0))
	GM.vset(v_poo, "v_number", 10.0)
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		alarm[int(2.0)] = 10.0
	for _w34 in GM.with_list((241.0), self):
		if _w34._dead:
			continue
		_w34.other = self
		(GM.f_instance_destroy(_w34))
func ev_alarm_2():
	if not ((GM.eq((GM.f_mplay_player_find()), GM.G["players"]))):
		GM.G["players"] = (GM.f_mplay_player_find())
		for _w35 in GM.with_list((231.0), self):
			if _w35._dead:
				continue
			_w35.other = self
			(GM.f_instance_destroy(_w35))
		if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
			alarm[int(0.0)] = 1.0
	if (GM.eq(GM.G["yourplayer"], 1.0)):
		(GM.f_mplay_message_send(0.0, 6.0, GM.G["collision"]))
		(GM.f_mplay_message_send(0.0, 1001.0, GM.G["levelset"]))
		(GM.f_mplay_message_send(0.0, 1.0, GM.G["player1ball"]))
		if ((GM.G["players"] > 1.0)):
			(GM.f_mplay_message_send(0.0, 2.0, GM.G["player2ball"]))
		if ((GM.G["players"] > 2.0)):
			(GM.f_mplay_message_send(0.0, 3.0, GM.G["player3ball"]))
		if ((GM.G["players"] > 3.0)):
			(GM.f_mplay_message_send(0.0, 4.0, GM.G["player4ball"]))
		if ((GM.G["players"] > 4.0)):
			(GM.f_mplay_message_send(0.0, 5.0, GM.G["player5ball"]))
	if ((GM.eq(GM.G["yourplayer"], 1.0) or (GM.G["players"] < 1.0))):
		GM.G["player1in"] = 1.0
		(GM.f_mplay_message_send(0.0, 1004.0, 0.0))
	if ((GM.eq(GM.G["yourplayer"], 2.0) or (GM.G["players"] < 2.0))):
		GM.G["player2in"] = 1.0
		(GM.f_mplay_message_send(0.0, 1005.0, 0.0))
	if ((GM.eq(GM.G["yourplayer"], 3.0) or (GM.G["players"] < 3.0))):
		GM.G["player3in"] = 1.0
		(GM.f_mplay_message_send(0.0, 1006.0, 0.0))
	if ((GM.eq(GM.G["yourplayer"], 4.0) or (GM.G["players"] < 4.0))):
		GM.G["player4in"] = 1.0
		(GM.f_mplay_message_send(0.0, 1007.0, 0.0))
	if ((GM.eq(GM.G["yourplayer"], 5.0) or (GM.G["players"] < 5.0))):
		GM.G["player5in"] = 1.0
		(GM.f_mplay_message_send(0.0, 1008.0, 0.0))
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
	alarm[int(2.0)] = 10.0
func ev_alarm_0():
	v_wee = 35.0
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 456.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 0.0)
	GM.vset(v_poo, "v_player", 1.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 456.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 1.0)
	if ((GM.G["players"] > 1.0)):
		GM.vset(v_poo, "v_player", 2.0)
	else:
		GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 456.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 2.0)
	if ((GM.G["players"] > 2.0)):
		GM.vset(v_poo, "v_player", 3.0)
	else:
		GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 456.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 3.0)
	if ((GM.G["players"] > 3.0)):
		GM.vset(v_poo, "v_player", 4.0)
	else:
		GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 456.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 4.0)
	if ((GM.G["players"] > 4.0)):
		GM.vset(v_poo, "v_player", 5.0)
	else:
		GM.vset(v_poo, "v_player", 0.0)
	v_wee = 35.0
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 491.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 5.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 491.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 6.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 491.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 7.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 491.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 8.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 491.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 9.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_wee = 35.0
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 526.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 10.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 526.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 11.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 526.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 12.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 526.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 13.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 526.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 14.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_wee = 35.0
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 561.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 15.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 561.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 16.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 561.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 17.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 561.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 18.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 561.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 19.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_wee = 35.0
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 596.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 20.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 596.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 21.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 596.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 22.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 596.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 23.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 596.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 24.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_wee = 35.0
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 631.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 25.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 631.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 26.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 631.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 27.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 631.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 28.0)
	GM.vset(v_poo, "v_player", 0.0)
	v_poo = (GM.f_instance_create(GM.add(778.0, v_wee), 631.0, 231.0))
	v_wee = GM.add(v_wee, 35.0)
	GM.vset(v_poo, "v_poo", 29.0)
	GM.vset(v_poo, "v_player", 0.0)
func ev_step():
	while GM.truth(((GM.f_mplay_message_receive(0.0)))):
		v_messid = (GM.f_mplay_message_id())
		v_val = (GM.f_mplay_message_value())
		if (GM.eq(v_messid, 1.0)):
			GM.G["player1ball"] = v_val
			for _w36 in GM.with_list((231.0), self):
				if _w36._dead:
					continue
				_w36.other = self
				if ((absf(GM.vget(_w36, "v_player") - 1.0) < 0.00001)):
					GM.vset(_w36, "v_player", 0.0)
				if (GM.eq(GM.vget(_w36, "v_poo"), GM.G["player1ball"])):
					GM.vset(_w36, "v_player", 1.0)
		if (GM.eq(v_messid, 2.0)):
			GM.G["player2ball"] = v_val
			for _w37 in GM.with_list((231.0), self):
				if _w37._dead:
					continue
				_w37.other = self
				if ((absf(GM.vget(_w37, "v_player") - 2.0) < 0.00001)):
					GM.vset(_w37, "v_player", 0.0)
				if (GM.eq(GM.vget(_w37, "v_poo"), GM.G["player2ball"])):
					GM.vset(_w37, "v_player", 2.0)
		if (GM.eq(v_messid, 3.0)):
			GM.G["player3ball"] = v_val
			for _w38 in GM.with_list((231.0), self):
				if _w38._dead:
					continue
				_w38.other = self
				if ((absf(GM.vget(_w38, "v_player") - 3.0) < 0.00001)):
					GM.vset(_w38, "v_player", 0.0)
				if (GM.eq(GM.vget(_w38, "v_poo"), GM.G["player3ball"])):
					GM.vset(_w38, "v_player", 3.0)
		if (GM.eq(v_messid, 4.0)):
			GM.G["player4ball"] = v_val
			for _w39 in GM.with_list((231.0), self):
				if _w39._dead:
					continue
				_w39.other = self
				if ((absf(GM.vget(_w39, "v_player") - 4.0) < 0.00001)):
					GM.vset(_w39, "v_player", 0.0)
				if (GM.eq(GM.vget(_w39, "v_poo"), GM.G["player4ball"])):
					GM.vset(_w39, "v_player", 4.0)
		if (GM.eq(v_messid, 5.0)):
			GM.G["player5ball"] = v_val
			for _w40 in GM.with_list((231.0), self):
				if _w40._dead:
					continue
				_w40.other = self
				if ((absf(GM.vget(_w40, "v_player") - 5.0) < 0.00001)):
					GM.vset(_w40, "v_player", 0.0)
				if (GM.eq(GM.vget(_w40, "v_poo"), GM.G["player5ball"])):
					GM.vset(_w40, "v_player", 5.0)
		if (GM.eq(v_messid, 6.0)):
			GM.G["collision"] = v_val
		if (GM.eq(v_messid, 7.0)):
			(self.script_script_addline(GM.add(GM.add((GM.f_mplay_message_name()), ": "), (GM.f_mplay_message_value())), 65535.0))
			(GM.f_sound_play(2.0))
		if (GM.eq(v_messid, 8.0)):
			(self.script_script_addline((GM.f_mplay_message_value()), 255.0))
			(GM.f_sound_play(2.0))
		if (GM.eq(v_messid, 99.0)):
			self.ev_user(0.0)
		if (GM.eq(v_messid, 600.0)):
			if (GM.eq(GM.G["yourplayer"], 3.0)):
				GM.G["yourplayer"] = 2.0
			if (GM.eq(GM.G["yourplayer"], 4.0)):
				GM.G["yourplayer"] = 3.0
			if (GM.eq(GM.G["yourplayer"], 5.0)):
				GM.G["yourplayer"] = 4.0
		if (GM.eq(v_messid, 601.0)):
			if (GM.eq(GM.G["yourplayer"], 4.0)):
				GM.G["yourplayer"] = 3.0
			if (GM.eq(GM.G["yourplayer"], 5.0)):
				GM.G["yourplayer"] = 4.0
		if (GM.eq(v_messid, 602.0)):
			if (GM.eq(GM.G["yourplayer"], 5.0)):
				GM.G["yourplayer"] = 4.0
		if (GM.eq(v_messid, 610.0)):
			if (GM.eq(GM.G["yourplayer"], 2.0)):
				GM.G["yourplayer"] = 1.0
			if (GM.eq(GM.G["yourplayer"], 3.0)):
				GM.G["yourplayer"] = 2.0
			if (GM.eq(GM.G["yourplayer"], 4.0)):
				GM.G["yourplayer"] = 3.0
			if (GM.eq(GM.G["yourplayer"], 5.0)):
				GM.G["yourplayer"] = 4.0
		if (GM.eq(v_messid, 1001.0)):
			GM.G["levelset"] = v_val
		if (GM.eq(v_messid, 1002.0)):
			GM.G["lag"] = 1.0
		if (GM.eq(v_messid, 1003.0)):
			GM.G["lag"] = 0.0
		if (GM.eq(v_messid, 1004.0)):
			GM.G["player1in"] = 1.0
		if (GM.eq(v_messid, 1005.0)):
			GM.G["player2in"] = 1.0
		if (GM.eq(v_messid, 1006.0)):
			GM.G["player3in"] = 1.0
		if (GM.eq(v_messid, 1007.0)):
			GM.G["player4in"] = 1.0
		if (GM.eq(v_messid, 1008.0)):
			GM.G["player5in"] = 1.0
		if (GM.eq(v_messid, 1009.0)):
			GM.G["tempreg"] = 1.0
		if (GM.eq(v_messid, 1010.0)):
			if (((absf(GM.G["swisscreg"] - 1.0) < 0.00001) or (absf(GM.G["tempreg"] - 1.0) < 0.00001))):
				if (((GM.f_file_exists(GM.add(GM.add(GM.vget(318.0, "v_directory"), "\\Maps\\"), v_val))))) >= 0.5:
					(self.script_map_load(GM.add(GM.add(GM.vget(318.0, "v_directory"), "\\Maps\\"), v_val)))
				else:
					await GM.f_show_message("Failed to load custom map.  Make sure you have the same map as the host and that the map is located in the Maps folder.")
func ev_other_10():
	(GM.f_sound_stop(21.0))
	(GM.f_sound_play(16.0))
	GM.G["player1in"] = 0.0
	GM.G["player2in"] = 0.0
	GM.G["player3in"] = 0.0
	GM.G["player4in"] = 0.0
	GM.G["player5in"] = 0.0
	GM.transition_kind = 13.0
	if (GM.eq(GM.G["levelset"], 1.0)):
		(GM.f_room_goto(29.0))
	else:
		if (GM.eq(GM.G["levelset"], 9.0)):
			(GM.f_room_goto(58.0))
		else:
			if (((absf(GM.G["swisscreg"] - 1.0) < 0.00001) or (absf(GM.G["tempreg"] - 1.0) < 0.00001))):
				if (GM.eq(GM.G["levelset"], 2.0)):
					(GM.f_room_goto(19.0))
				if (GM.eq(GM.G["levelset"], 3.0)):
					(GM.f_room_goto(36.0))
				if (GM.eq(GM.G["levelset"], 4.0)):
					(GM.f_room_goto(29.0))
				if (GM.eq(GM.G["levelset"], 5.0)):
					(GM.f_room_goto(53.0))
				if (GM.eq(GM.G["levelset"], 6.0)):
					(GM.f_room_goto(54.0))
				if (GM.eq(GM.G["levelset"], 8.0)):
					(GM.f_room_goto(60.0))
				if (GM.eq(GM.G["levelset"], 7.0)):
					(GM.f_room_goto(61.0))
				if (GM.eq(GM.G["levelset"], 10.0)):
					if (((absf(GM.G["online"] - 0.0) < 0.00001) or GM.eq(GM.G["yourplayer"], 1.0))):
						if (((self.script_console_dll_openFileDialog("SC Map Files|*.scmap", GM.add(GM.vget(318.0, "v_directory"), "maps"), 0.0)))) >= 0.5:
							if ((((GM.f_file_exists(GM.aget(GM.vget(318.0, "v_dll_array"), 0.0)))) >= 0.5 and (GM.aget(GM.vget(318.0, "v_dll_array"), 0.0) != ""))):
								(GM.f_mplay_message_send(0.0, 1010.0, (GM.f_filename_name(GM.aget(GM.vget(318.0, "v_dll_array"), 0.0)))))
								(self.script_map_load(GM.aget(GM.vget(318.0, "v_dll_array"), 0.0)))
			else:
				await GM.f_show_message("Failed to load level.  You must be registered")
func ev_draw():
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(51712.0))
	(GM.f_draw_sprite(213.0, 0.0, 779.0, 422.0))
	(GM.f_draw_rectangle(31.0, 300.0, 491.0, 670.0, 1.0))
	(GM.f_draw_rectangle(522.0, 300.0, 993.0, 390.0, 1.0))
	(GM.f_draw_rectangle(522.0, 400.0, 747.0, 670.0, 1.0))
	(GM.f_draw_rectangle(778.0, 400.0, 993.0, 670.0, 1.0))
	(GM.f_draw_rectangle(32.0, 301.0, 490.0, 321.0, 1.0))
	(GM.f_draw_rectangle(523.0, 301.0, 992.0, 321.0, 1.0))
	(GM.f_draw_rectangle(523.0, 401.0, 746.0, 421.0, 1.0))
	(GM.f_draw_rectangle(779.0, 401.0, 992.0, 421.0, 1.0))
	(GM.f_draw_line(300.0, 301.0, 300.0, 669.0))
	(GM.f_draw_line(400.0, 301.0, 400.0, 669.0))
	(GM.f_draw_rectangle(523.0, 541.0, 746.0, 561.0, 1.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_text(634.0, 434.0, "1"))
	(GM.f_draw_text(634.0, 454.0, "2"))
	(GM.f_draw_text(634.0, 474.0, "3"))
	(GM.f_draw_text(634.0, 494.0, "4"))
	(GM.f_draw_text(634.0, 514.0, "5"))
	(GM.f_draw_text(634.0, 573.0, "Off"))
	(GM.f_draw_text(634.0, 593.0, "On"))
	(GM.f_draw_text(884.0, 404.0, "Ball Select"))
	(GM.f_draw_text(634.0, 404.0, "Players"))
	(GM.f_draw_text(634.0, 543.0, "Ball Collision"))
	(GM.f_draw_text(758.0, 304.0, "Player Chat"))
	(GM.f_draw_text(165.0, 304.0, "Course/Hole Name"))
	(GM.f_draw_text(350.0, 304.0, "Holes"))
	(GM.f_draw_text(445.0, 304.0, "Score"))
	(GM.f_draw_text(165.0, 334.0, "Dream Land"))
	(GM.f_draw_text(350.0, 334.0, "9"))
	(GM.f_draw_text(445.0, 334.0, ("" + (GM.f_string(GM.G["highscore1"])))))
	if not (((absf(GM.G["swisscreg"] - 1.0) < 0.00001))):
		(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(165.0, 354.0, "Fun Land"))
	(GM.f_draw_text(350.0, 354.0, "9"))
	(GM.f_draw_text(445.0, 354.0, ("" + (GM.f_string(GM.G["highscore2"])))))
	(GM.f_draw_text(165.0, 374.0, "Moonlight Mania"))
	(GM.f_draw_text(350.0, 374.0, "9"))
	(GM.f_draw_text(445.0, 374.0, ("" + (GM.f_string(GM.G["highscore3"])))))
	(GM.f_draw_text(165.0, 394.0, "Champion Cup"))
	(GM.f_draw_text(350.0, 394.0, "27"))
	(GM.f_draw_text(445.0, 394.0, ("" + (GM.f_string(GM.G["highscore7"])))))
	(GM.f_draw_text(165.0, 414.0, "Survival Pool (mini game)"))
	(GM.f_draw_text(350.0, 414.0, "1"))
	(GM.f_draw_text(445.0, 414.0, "---"))
	(GM.f_draw_text(165.0, 434.0, "The Gauntlet (mini game)"))
	(GM.f_draw_text(350.0, 434.0, "1"))
	(GM.f_draw_text(445.0, 434.0, ("" + (GM.f_string(GM.G["highscore4"])))))
	(GM.f_draw_text(165.0, 454.0, "Crazy Balls (mini game)"))
	(GM.f_draw_text(350.0, 454.0, "1"))
	(GM.f_draw_text(445.0, 454.0, "---"))
	(GM.f_draw_text(165.0, 474.0, "The Wall (mini game)"))
	(GM.f_draw_text(350.0, 474.0, "1"))
	(GM.f_draw_text(445.0, 474.0, ("" + (GM.f_string(GM.G["highscore6"])))))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(165.0, 494.0, "Gravity Tower (mini game)"))
	(GM.f_draw_text(350.0, 494.0, "1"))
	(GM.f_draw_text(445.0, 494.0, ("" + (GM.f_string(GM.G["highscore5"])))))
	if not (((absf(GM.G["swisscreg"] - 1.0) < 0.00001))):
		(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(165.0, 514.0, "Load Custom Level"))
	(GM.f_draw_text(350.0, 514.0, "1"))
	(GM.f_draw_text(445.0, 514.0, "---"))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(512.0, 685.0, "PRESS F1 TO CONTINUE"))
	(GM.f_draw_set_color(51712.0))
	(GM.f_draw_rectangle(0.0, (GM.room_height - 42.0), GM.room_width, (GM.room_height - 12.0), (1.0 if not (((1.0)) >= 0.5) else 0.0)))
	(GM.f_draw_text((GM.room_width / 2.0), (GM.room_height - 37.0), "Copyright ©2004-2005 S64 Games. All rights reserved."))
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		(GM.f_draw_set_halign(0.0))
		(GM.f_draw_text(15.0, 12.0, ("You Are Player " + (GM.f_string(GM.G["yourplayer"])))))
		(GM.f_draw_text(15.0, 32.0, ("IP: " + (GM.f_string(v_myip)))))
		if (((absf(GM.G["player1in"] - 1.0) < 0.00001) and (GM.G["players"] > 0.0))):
			(GM.f_draw_text(15.0, 52.0, "Player 1 Ready"))
		if (((absf(GM.G["player2in"] - 1.0) < 0.00001) and (GM.G["players"] > 1.0))):
			(GM.f_draw_text(15.0, 72.0, "Player 2 Ready"))
		if (((absf(GM.G["player3in"] - 1.0) < 0.00001) and (GM.G["players"] > 2.0))):
			(GM.f_draw_text(15.0, 92.0, "Player 3 Ready"))
		if (((absf(GM.G["player4in"] - 1.0) < 0.00001) and (GM.G["players"] > 3.0))):
			(GM.f_draw_text(15.0, 112.0, "Player 4 Ready"))
		if (((absf(GM.G["player5in"] - 1.0) < 0.00001) and (GM.G["players"] > 4.0))):
			(GM.f_draw_text(15.0, 132.0, "Player 5 Ready"))
	if ((absf(GM.G["online"] - 0.0) < 0.00001)):
		(GM.f_draw_set_halign(0.0))
		(GM.f_draw_text(15.0, 12.0, "Press ESC to return to Menu"))
func ev_keypress_112():
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if ((((((absf(GM.G["player1in"] - 0.0) < 0.00001) or (absf(GM.G["player2in"] - 0.0) < 0.00001)) or (absf(GM.G["player3in"] - 0.0) < 0.00001)) or (absf(GM.G["player4in"] - 0.0) < 0.00001)) or (absf(GM.G["player5in"] - 0.0) < 0.00001))):
			await GM.f_show_message("All Players Are Not In This Room!")
			(GM.f_sound_play(16.0))
			return
	if ((GM.eq(GM.G["yourplayer"], 1.0) or (absf(GM.G["hostchange"] - 1.0) < 0.00001))):
		if (GM.eq(GM.G["levelset"], 5.0)):
			if (GM.eq(GM.G["collision"], 1.0)):
				await GM.f_show_message("Collision must be on!")
				return
		if ((GM.eq(GM.G["levelset"], 5.0) or GM.eq(GM.G["levelset"], 7.0))):
			if (GM.eq(GM.G["players"], 1.0)):
				await GM.f_show_message("2 or more players needed!")
				return
		(GM.f_mplay_message_send(0.0, 99.0, 0.0))
		self.ev_user(0.0)
func ev_keypress_87():
	if (((GM.f_keyboard_check(17.0)))) >= 0.5:
		if ((absf((GM.f_window_get_fullscreen()) - 0.0) < 0.00001)):
			(GM.f_display_set_all(1024.0, 768.0, (-1.0), 32.0))
			(GM.f_window_set_fullscreen(1.0))
			(self.script_console_dll_refresh())
		else:
			if ((absf((GM.f_window_get_fullscreen()) - 1.0) < 0.00001)):
				(GM.f_display_reset())
				(GM.f_window_set_fullscreen(0.0))
				(GM.f_window_set_size(800.0, 600.0))
				(GM.f_window_center())
				(GM.f_window_set_showborder(1.0))
				(self.script_console_dll_refresh())
