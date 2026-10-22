extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w201 in GM.with_list((67.0), self):
		if _w201._dead:
			continue
		_w201.other = self
		GM.vset(_w201, "v_show", 0.0)
		GM.vset(_w201, "v_mytext", "")
		GM.vset(_w201, "v_mytext2", "")
		GM.vset(_w201, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w202 in GM.with_list((67.0), self):
			if _w202._dead:
				continue
			_w202.other = self
			GM.vset(_w202, "v_show", 1.0)
			GM.vset(_w202, "v_mytext", "I lost my birdie...")
			GM.vset(_w202, "v_mytext2", "It is attracted to the color blue.  Find it quick!")
			GM.vset(_w202, "v_mytext3", "press enter to accept")
	else:
		for _w203 in GM.with_list((67.0), self):
			if _w203._dead:
				continue
			_w203.other = self
			GM.vset(_w203, "v_show", 1.0)
			GM.vset(_w203, "v_mytext", "Your allready doing a mission")
			GM.vset(_w203, "v_mytext2", "Come back when your done")
			GM.vset(_w203, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(400.0, 12.0, 483.0))
				(GM.f_instance_create(0.0, 0.0, 250.0))
				(GM.f_sound_play(87.0))
