extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w321 in GM.with_list((67.0), self):
		if _w321._dead:
			continue
		_w321.other = self
		GM.vset(_w321, "v_show", 0.0)
		GM.vset(_w321, "v_mytext", "")
		GM.vset(_w321, "v_mytext2", "")
		GM.vset(_w321, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w322 in GM.with_list((67.0), self):
			if _w322._dead:
				continue
			_w322.other = self
			GM.vset(_w322, "v_show", 1.0)
			GM.vset(_w322, "v_mytext", "Oh yeah.. I know what your thinking..")
			GM.vset(_w322, "v_mytext2", "another find mission.. WELL SHAWN'S A DUMB ASS")
			GM.vset(_w322, "v_mytext3", "AND CANT THINK OF NEW IDEAS.. FIND MY CAT!")
	else:
		for _w323 in GM.with_list((67.0), self):
			if _w323._dead:
				continue
			_w323.other = self
			GM.vset(_w323, "v_show", 1.0)
			GM.vset(_w323, "v_mytext", "Get outa here!")
			GM.vset(_w323, "v_mytext2", "come back when your done with your mission!")
			GM.vset(_w323, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(2480.0, 485.0, 1865.0))
				(GM.f_instance_create(0.0, 0.0, 250.0))
				(GM.f_sound_play(87.0))
