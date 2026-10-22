extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w220 in GM.with_list((67.0), self):
		if _w220._dead:
			continue
		_w220.other = self
		GM.vset(_w220, "v_show", 0.0)
		GM.vset(_w220, "v_mytext", "")
		GM.vset(_w220, "v_mytext2", "")
		GM.vset(_w220, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w221 in GM.with_list((67.0), self):
			if _w221._dead:
				continue
			_w221.other = self
			GM.vset(_w221, "v_show", 1.0)
			GM.vset(_w221, "v_mytext", "Capn Chubs thinks he's some tough shit!")
			GM.vset(_w221, "v_mytext2", "You'll have to catch him in his car.")
			GM.vset(_w221, "v_mytext3", " Push enter to accept")
	else:
		for _w222 in GM.with_list((67.0), self):
			if _w222._dead:
				continue
			_w222.other = self
			GM.vset(_w222, "v_show", 1.0)
			GM.vset(_w222, "v_mytext", "Get outa here....")
			GM.vset(_w222, "v_mytext2", "Come back when your done")
			GM.vset(_w222, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			for _r223 in range(int((5.0))):
				(GM.f_instance_create(((50.0 + (GM.f_random(GM.room_width))) - 100.0), 100.0, 526.0))
			(GM.f_instance_create(0.0, 0.0, 252.0))
			(GM.f_sound_play(87.0))
			(GM.f_instance_create((x + 430.0), 560.0, 517.0))
