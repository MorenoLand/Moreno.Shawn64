extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w349 in GM.with_list((67.0), self):
		if _w349._dead:
			continue
		_w349.other = self
		GM.vset(_w349, "v_show", 0.0)
		GM.vset(_w349, "v_mytext", "")
		GM.vset(_w349, "v_mytext2", "")
		GM.vset(_w349, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w350 in GM.with_list((67.0), self):
			if _w350._dead:
				continue
			_w350.other = self
			GM.vset(_w350, "v_show", 1.0)
			GM.vset(_w350, "v_mytext", "go find my bird again.  please.")
			GM.vset(_w350, "v_mytext2", "please. please. please please.")
			GM.vset(_w350, "v_mytext3", "press enter please")
	else:
		for _w351 in GM.with_list((67.0), self):
			if _w351._dead:
				continue
			_w351.other = self
			GM.vset(_w351, "v_show", 1.0)
			GM.vset(_w351, "v_mytext", "Get outa here!")
			GM.vset(_w351, "v_mytext2", "come back when your done with your mission!")
			GM.vset(_w351, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(3160.0, 369.0, 1886.0))
				(GM.f_instance_create(0.0, 0.0, 250.0))
				(GM.f_sound_play(87.0))
