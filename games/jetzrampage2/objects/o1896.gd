extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w358 in GM.with_list((67.0), self):
		if _w358._dead:
			continue
		_w358.other = self
		GM.vset(_w358, "v_show", 0.0)
		GM.vset(_w358, "v_mytext", "")
		GM.vset(_w358, "v_mytext2", "")
		GM.vset(_w358, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w359 in GM.with_list((67.0), self):
			if _w359._dead:
				continue
			_w359.other = self
			GM.vset(_w359, "v_show", 1.0)
			GM.vset(_w359, "v_mytext", "Man... I forgot where i put my 10 packages")
			GM.vset(_w359, "v_mytext2", "go find them for me.")
			GM.vset(_w359, "v_mytext3", "press enter to accept")
	else:
		for _w360 in GM.with_list((67.0), self):
			if _w360._dead:
				continue
			_w360.other = self
			GM.vset(_w360, "v_show", 1.0)
			GM.vset(_w360, "v_mytext", "GO GET MY JETZ LETTERS OR I WILL KILL YOU")
			GM.vset(_w360, "v_mytext2", "IT WILL BE A HORRIBLE DEATH...")
			GM.vset(_w360, "v_mytext3", "PUSH ENTER")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				for _r361 in range(int((10.0))):
					(GM.f_instance_create(0.0, 0.0, 1898.0))
				(GM.f_instance_create(0.0, 0.0, 252.0))
				(GM.f_sound_play(87.0))
