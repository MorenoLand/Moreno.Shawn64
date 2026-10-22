extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w355 in GM.with_list((67.0), self):
		if _w355._dead:
			continue
		_w355.other = self
		GM.vset(_w355, "v_show", 0.0)
		GM.vset(_w355, "v_mytext", "")
		GM.vset(_w355, "v_mytext2", "")
		GM.vset(_w355, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w356 in GM.with_list((67.0), self):
			if _w356._dead:
				continue
			_w356.other = self
			GM.vset(_w356, "v_show", 1.0)
			GM.vset(_w356, "v_mytext", "There are alot of people that got missed because there")
			GM.vset(_w356, "v_mytext2", "hiding in the buildings.  Kill 10 of them.")
			GM.vset(_w356, "v_mytext3", "press enter to accept")
	else:
		for _w357 in GM.with_list((67.0), self):
			if _w357._dead:
				continue
			_w357.other = self
			GM.vset(_w357, "v_show", 1.0)
			GM.vset(_w357, "v_mytext", "Your allready doing a mission")
			GM.vset(_w357, "v_mytext2", "Come back when your done")
			GM.vset(_w357, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 436.0))
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
