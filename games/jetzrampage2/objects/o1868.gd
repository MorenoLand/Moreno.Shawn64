extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w326 in GM.with_list((67.0), self):
		if _w326._dead:
			continue
		_w326.other = self
		GM.vset(_w326, "v_show", 0.0)
		GM.vset(_w326, "v_mytext", "")
		GM.vset(_w326, "v_mytext2", "")
		GM.vset(_w326, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w327 in GM.with_list((67.0), self):
			if _w327._dead:
				continue
			_w327.other = self
			GM.vset(_w327, "v_show", 1.0)
			GM.vset(_w327, "v_mytext", "Clumsy me... I dropped my jetz letters")
			GM.vset(_w327, "v_mytext2", "Could you go find them for me????")
			GM.vset(_w327, "v_mytext3", "press enter to accept")
	else:
		for _w328 in GM.with_list((67.0), self):
			if _w328._dead:
				continue
			_w328.other = self
			GM.vset(_w328, "v_show", 1.0)
			GM.vset(_w328, "v_mytext", "GO GET MY JETZ LETTERS OR I WILL KILL YOU")
			GM.vset(_w328, "v_mytext2", "IT WILL BE A HORRIBLE DEATH...")
			GM.vset(_w328, "v_mytext3", "PUSH ENTER")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(0.0, 0.0, 257.0))
				(GM.f_sound_play(87.0))
				(GM.f_instance_create((-100.0), (-100.0), 1889.0))
				(GM.f_instance_create((-100.0), (-100.0), 1890.0))
				(GM.f_instance_create((-100.0), (-100.0), 1891.0))
				(GM.f_instance_create((-100.0), (-100.0), 1892.0))
