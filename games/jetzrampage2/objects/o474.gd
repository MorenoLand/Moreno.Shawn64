extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w175 in GM.with_list((67.0), self):
		if _w175._dead:
			continue
		_w175.other = self
		GM.vset(_w175, "v_show", 0.0)
		GM.vset(_w175, "v_mytext", "")
		GM.vset(_w175, "v_mytext2", "")
		GM.vset(_w175, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w176 in GM.with_list((67.0), self):
			if _w176._dead:
				continue
			_w176.other = self
			GM.vset(_w176, "v_show", 1.0)
			GM.vset(_w176, "v_mytext", "There are too many people in this city")
			GM.vset(_w176, "v_mytext2", "Cut down on the population.  Kill 30 people in 30 seconds")
			GM.vset(_w176, "v_mytext3", "press enter to accept")
	else:
		for _w177 in GM.with_list((67.0), self):
			if _w177._dead:
				continue
			_w177.other = self
			GM.vset(_w177, "v_show", 1.0)
			GM.vset(_w177, "v_mytext", "Your allready doing a mission")
			GM.vset(_w177, "v_mytext2", "Come back when your done")
			GM.vset(_w177, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			for _w178 in GM.with_list((0.0), self):
				if _w178._dead:
					continue
				_w178.other = self
				GM.vset(_w178, "v_elect", 1.0)
				GM.vset(_w178, "v_weaponselect", 4.0)
			(GM.f_instance_create(0.0, 0.0, 476.0))
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
