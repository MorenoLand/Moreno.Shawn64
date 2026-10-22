extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w234 in GM.with_list((67.0), self):
		if _w234._dead:
			continue
		_w234.other = self
		GM.vset(_w234, "v_show", 0.0)
		GM.vset(_w234, "v_mytext", "")
		GM.vset(_w234, "v_mytext2", "")
		GM.vset(_w234, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w235 in GM.with_list((67.0), self):
			if _w235._dead:
				continue
			_w235.other = self
			GM.vset(_w235, "v_show", 1.0)
			GM.vset(_w235, "v_mytext", "I lost my JETZ letters again")
			GM.vset(_w235, "v_mytext2", "Get out there and get em.")
			GM.vset(_w235, "v_mytext3", "press enter to accept")
	else:
		for _w236 in GM.with_list((67.0), self):
			if _w236._dead:
				continue
			_w236.other = self
			GM.vset(_w236, "v_show", 1.0)
			GM.vset(_w236, "v_mytext", "Your allready doing a mission")
			GM.vset(_w236, "v_mytext2", "Come back when your done")
			GM.vset(_w236, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(0.0, 0.0, 252.0))
				(GM.f_sound_play(87.0))
				(GM.f_instance_create((-100.0), (-100.0), 534.0))
				(GM.f_instance_create((-100.0), (-100.0), 535.0))
				(GM.f_instance_create((-100.0), (-100.0), 536.0))
				(GM.f_instance_create((-100.0), (-100.0), 537.0))
