extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w346 in GM.with_list((67.0), self):
		if _w346._dead:
			continue
		_w346.other = self
		GM.vset(_w346, "v_show", 0.0)
		GM.vset(_w346, "v_mytext", "")
		GM.vset(_w346, "v_mytext2", "")
		GM.vset(_w346, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w347 in GM.with_list((67.0), self):
			if _w347._dead:
				continue
			_w347.other = self
			GM.vset(_w347, "v_show", 1.0)
			GM.vset(_w347, "v_mytext", "Apparently none of those clones were really Skiracer")
			GM.vset(_w347, "v_mytext2", "He has been caught cross dressing lately if")
			GM.vset(_w347, "v_mytext3", "that means anything to you. Push enter to accept")
	else:
		for _w348 in GM.with_list((67.0), self):
			if _w348._dead:
				continue
			_w348.other = self
			GM.vset(_w348, "v_show", 1.0)
			GM.vset(_w348, "v_mytext", "Get outa here....")
			GM.vset(_w348, "v_mytext2", "Come back when your done")
			GM.vset(_w348, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
			(GM.f_instance_create(120.0, 480.0, 1893.0))
