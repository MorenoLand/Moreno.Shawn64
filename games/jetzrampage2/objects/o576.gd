extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w290 in GM.with_list((67.0), self):
		if _w290._dead:
			continue
		_w290.other = self
		GM.vset(_w290, "v_show", 0.0)
		GM.vset(_w290, "v_mytext", "")
		GM.vset(_w290, "v_mytext2", "")
		GM.vset(_w290, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w291 in GM.with_list((67.0), self):
			if _w291._dead:
				continue
			_w291.other = self
			GM.vset(_w291, "v_show", 1.0)
			GM.vset(_w291, "v_mytext", "I lost my monkey...")
			GM.vset(_w291, "v_mytext2", "Get it for me or else")
			GM.vset(_w291, "v_mytext3", "PRESS ENTER NOW!")
	else:
		for _w292 in GM.with_list((67.0), self):
			if _w292._dead:
				continue
			_w292.other = self
			GM.vset(_w292, "v_show", 1.0)
			GM.vset(_w292, "v_mytext", "Get outa here!")
			GM.vset(_w292, "v_mytext2", "come back when your done with your mission!")
			GM.vset(_w292, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create((x + 430.0), 560.0, 578.0))
				(GM.f_instance_create(0.0, 0.0, 250.0))
				(GM.f_sound_play(87.0))
