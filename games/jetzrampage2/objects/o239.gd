extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w100 in GM.with_list((67.0), self):
		if _w100._dead:
			continue
		_w100.other = self
		GM.vset(_w100, "v_show", 0.0)
		GM.vset(_w100, "v_mytext", "")
		GM.vset(_w100, "v_mytext2", "")
		GM.vset(_w100, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w101 in GM.with_list((67.0), self):
			if _w101._dead:
				continue
			_w101.other = self
			GM.vset(_w101, "v_show", 1.0)
			GM.vset(_w101, "v_mytext", "Wassup Gangsta!  I have a test for you..")
			GM.vset(_w101, "v_mytext2", "Collect Jetz in less than 60 seconds for some cash")
			GM.vset(_w101, "v_mytext3", "press enter to accept")
	else:
		for _w102 in GM.with_list((67.0), self):
			if _w102._dead:
				continue
			_w102.other = self
			GM.vset(_w102, "v_show", 1.0)
			GM.vset(_w102, "v_mytext", "Your allready doing a mission")
			GM.vset(_w102, "v_mytext2", "Come back when your done")
			GM.vset(_w102, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(0.0, 0.0, 257.0))
				(GM.f_sound_play(87.0))
				(GM.f_instance_create((-100.0), (-100.0), 253.0))
				(GM.f_instance_create((-100.0), (-100.0), 254.0))
				(GM.f_instance_create((-100.0), (-100.0), 255.0))
				(GM.f_instance_create((-100.0), (-100.0), 256.0))
