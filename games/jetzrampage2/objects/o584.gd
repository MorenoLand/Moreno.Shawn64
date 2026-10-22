extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w301 in GM.with_list((67.0), self):
		if _w301._dead:
			continue
		_w301.other = self
		GM.vset(_w301, "v_show", 0.0)
		GM.vset(_w301, "v_mytext", "")
		GM.vset(_w301, "v_mytext2", "")
		GM.vset(_w301, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w302 in GM.with_list((67.0), self):
			if _w302._dead:
				continue
			_w302.other = self
			GM.vset(_w302, "v_show", 1.0)
			GM.vset(_w302, "v_mytext", "FUCK that bird.....")
			GM.vset(_w302, "v_mytext2", "not litterally... just go find my bird")
			GM.vset(_w302, "v_mytext3", "PRESS ENTER!")
	else:
		for _w303 in GM.with_list((67.0), self):
			if _w303._dead:
				continue
			_w303.other = self
			GM.vset(_w303, "v_show", 1.0)
			GM.vset(_w303, "v_mytext", "Get outa here!")
			GM.vset(_w303, "v_mytext2", "come back when your done with your mission!")
			GM.vset(_w303, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(3280.0, 344.0, 586.0))
				(GM.f_instance_create(0.0, 0.0, 250.0))
				(GM.f_sound_play(87.0))
