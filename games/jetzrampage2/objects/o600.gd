extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w312 in GM.with_list((67.0), self):
		if _w312._dead:
			continue
		_w312.other = self
		GM.vset(_w312, "v_show", 0.0)
		GM.vset(_w312, "v_mytext", "")
		GM.vset(_w312, "v_mytext2", "")
		GM.vset(_w312, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w313 in GM.with_list((67.0), self):
			if _w313._dead:
				continue
			_w313.other = self
			GM.vset(_w313, "v_show", 1.0)
			GM.vset(_w313, "v_mytext", "Ok... Tibit has gone insain.")
			GM.vset(_w313, "v_mytext2", "He's dressed up as a repair person to fool you")
			GM.vset(_w313, "v_mytext3", "He must be exterminated.... NOW")
	else:
		for _w314 in GM.with_list((67.0), self):
			if _w314._dead:
				continue
			_w314.other = self
			GM.vset(_w314, "v_show", 1.0)
			GM.vset(_w314, "v_mytext", "Get outa here....")
			GM.vset(_w314, "v_mytext2", "Come back when your done")
			GM.vset(_w314, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(178.0))
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
			(GM.f_instance_create(2500.0, 480.0, 601.0))
