extends "res://games/mini_golf_pro/scripts.gd"
var v_prep = 0.0
var v_wee = 0.0
func ev_create():
	if (((GM.f_instance_number(95.0)) >= 2.0)):
		(GM.f_instance_destroy(self))
		return
	(GM.f_sound_stop(4.0))
	(GM.f_sound_stop(7.0))
	(GM.f_sound_stop(11.0))
	(GM.f_sound_stop(14.0))
	(GM.f_sound_stop(15.0))
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(24.0))
	if not (((absf(GM.room - 26.0) < 0.00001))):
		if not (((absf(GM.room - 24.0) < 0.00001))):
			if ((GM.eq(GM.G["players"], 1.0) or (absf(GM.G["online"] - 1.0) < 0.00001))):
				if ((absf(GM.G["online"] - 1.0) < 0.00001)):
					if (GM.eq(GM.G["yourplayer"], 1.0)):
						v_prep = GM.G["player1shots"]
					if (GM.eq(GM.G["yourplayer"], 2.0)):
						v_prep = GM.G["player2shots"]
					if (GM.eq(GM.G["yourplayer"], 3.0)):
						v_prep = GM.G["player3shots"]
					if (GM.eq(GM.G["yourplayer"], 4.0)):
						v_prep = GM.G["player4shots"]
					if (GM.eq(GM.G["yourplayer"], 5.0)):
						v_prep = GM.G["player5shots"]
				else:
					v_prep = GM.G["player1shots"]
				if ((absf(GM.G["holeon"] - 1.0) < 0.00001)):
					GM.G["scorehole1"] = v_prep
				if ((absf(GM.G["holeon"] - 2.0) < 0.00001)):
					GM.G["scorehole2"] = v_prep
				if ((absf(GM.G["holeon"] - 3.0) < 0.00001)):
					GM.G["scorehole3"] = v_prep
				if ((absf(GM.G["holeon"] - 4.0) < 0.00001)):
					GM.G["scorehole4"] = v_prep
				if ((absf(GM.G["holeon"] - 5.0) < 0.00001)):
					GM.G["scorehole5"] = v_prep
				if ((absf(GM.G["holeon"] - 6.0) < 0.00001)):
					GM.G["scorehole6"] = v_prep
				if ((absf(GM.G["holeon"] - 7.0) < 0.00001)):
					GM.G["scorehole7"] = v_prep
				if ((absf(GM.G["holeon"] - 8.0) < 0.00001)):
					GM.G["scorehole8"] = v_prep
				if ((absf(GM.G["holeon"] - 9.0) < 0.00001)):
					GM.G["scorehole9"] = v_prep
			GM.G["player1par"] = GM.G["player1par"] - (GM.G["par"] - GM.G["player1shots"])
			GM.G["player2par"] = GM.G["player2par"] - (GM.G["par"] - GM.G["player2shots"])
			GM.G["player3par"] = GM.G["player3par"] - (GM.G["par"] - GM.G["player3shots"])
			GM.G["player4par"] = GM.G["player4par"] - (GM.G["par"] - GM.G["player4shots"])
			GM.G["player5par"] = GM.G["player5par"] - (GM.G["par"] - GM.G["player5shots"])
			GM.G["player1score"] = GM.add(GM.G["player1score"], GM.G["player1shots"])
			GM.G["player2score"] = GM.add(GM.G["player2score"], GM.G["player2shots"])
			GM.G["player3score"] = GM.add(GM.G["player3score"], GM.G["player3shots"])
			GM.G["player4score"] = GM.add(GM.G["player4score"], GM.G["player4shots"])
			GM.G["player5score"] = GM.add(GM.G["player5score"], GM.G["player5shots"])
			GM.G["player1shots"] = 0.0
			GM.G["player2shots"] = 0.0
			GM.G["player3shots"] = 0.0
			GM.G["player4shots"] = 0.0
			GM.G["player5shots"] = 0.0
			GM.G["personsturn"] = 1.0
			GM.G["holeon"] = GM.G["holeon"] + 1.0
			if ((GM.G["holeon"] > 9.0)):
				if not (((absf(GM.room - 51.0) < 0.00001))):
					if (GM.eq(GM.G["levelset"], 4.0)):
						GM.G["scorehole1"] = 0.0
						GM.G["scorehole2"] = 0.0
						GM.G["scorehole3"] = 0.0
						GM.G["scorehole4"] = 0.0
						GM.G["scorehole5"] = 0.0
						GM.G["scorehole6"] = 0.0
						GM.G["scorehole7"] = 0.0
						GM.G["scorehole8"] = 0.0
						GM.G["scorehole9"] = 0.0
				GM.G["holeon"] = 1.0
			(GM.f_sound_play(13.0))
	v_wee = 0.0
	if (((absf((GM.f_instance_number(262.0)) - 0.0) < 0.00001))):
		hspeed = 0.0
	else:
		if ((GM.eq(GM.G["players"], 1.0) or (absf(GM.G["online"] - 1.0) < 0.00001))):
			(GM.f_sound_play(36.0))
			(GM.f_sound_loop(35.0))
			(GM.f_instance_create(x, y, 182.0))
			(GM.f_instance_destroy(self))
		else:
			if ((GM.G["players"] > 1.0)):
				(GM.f_sound_play(36.0))
				(GM.f_sound_loop(35.0))
				(GM.f_instance_create(x, y, 242.0))
				(GM.f_instance_destroy(self))
func ev_step():
	v_wee = GM.add(v_wee, 0.05)
	if ((v_wee > 1.0)):
		self.ev_user(0.0)
func ev_other_10():
	if (((absf(GM.room - GM.room_last()) >= 0.00001))):
		(GM.f_room_goto_next())
	else:
		if (((absf(GM.G["online"] - 0.0) < 0.00001))):
			(GM.f_room_goto(30.0))
		else:
			(GM.f_room_goto(31.0))
func ev_draw():
	(GM.f_draw_set_alpha(v_wee))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 0.0, GM.room_width, GM.room_height, 0.0))
	(GM.f_draw_set_alpha(1.0))
