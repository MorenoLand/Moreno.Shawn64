extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w172 in GM.with_list((67.0), self):
		if _w172._dead:
			continue
		_w172.other = self
		GM.vset(_w172, "v_show", 0.0)
		GM.vset(_w172, "v_mytext", "")
		GM.vset(_w172, "v_mytext2", "")
		GM.vset(_w172, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w173 in GM.with_list((67.0), self):
			if _w173._dead:
				continue
			_w173.other = self
			GM.vset(_w173, "v_show", 1.0)
			GM.vset(_w173, "v_mytext", "Whats even more fun than killing people on the ground is")
			GM.vset(_w173, "v_mytext2", "making them fall out of buildings.  Kill 10 of them.")
			GM.vset(_w173, "v_mytext3", "press enter to accept")
	else:
		for _w174 in GM.with_list((67.0), self):
			if _w174._dead:
				continue
			_w174.other = self
			GM.vset(_w174, "v_show", 1.0)
			GM.vset(_w174, "v_mytext", "Your allready doing a mission")
			GM.vset(_w174, "v_mytext2", "Come back when your done")
			GM.vset(_w174, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 436.0))
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
