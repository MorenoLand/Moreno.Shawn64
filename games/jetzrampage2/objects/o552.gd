extends "res://games/jetzrampage2/scripts.gd"
var v_mission1beat = 0.0
func ev_alarm_0():
	for _w245 in GM.with_list((67.0), self):
		if _w245._dead:
			continue
		_w245.other = self
		GM.vset(_w245, "v_show", 0.0)
		GM.vset(_w245, "v_mytext", "")
		GM.vset(_w245, "v_mytext2", "")
		GM.vset(_w245, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w246 in GM.with_list((67.0), self):
			if _w246._dead:
				continue
			_w246.other = self
			GM.vset(_w246, "v_show", 1.0)
			GM.vset(_w246, "v_mytext", "DAMN BIRDS!  THEY ALL NEED TO DIE!")
			GM.vset(_w246, "v_mytext2", "(this game has such a good plot...)")
			GM.vset(_w246, "v_mytext3", " Push enter and kill 30 of them")
	else:
		for _w247 in GM.with_list((67.0), self):
			if _w247._dead:
				continue
			_w247.other = self
			GM.vset(_w247, "v_show", 1.0)
			GM.vset(_w247, "v_mytext", "Your allready doing a mission")
			GM.vset(_w247, "v_mytext2", "Come back when your done")
			GM.vset(_w247, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission1beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				for _w248 in GM.with_list((0.0), self):
					if _w248._dead:
						continue
					_w248.other = self
					GM.vset(_w248, "v_flames", 1.0)
					GM.vset(_w248, "v_weaponselect", 2.0)
				(GM.f_instance_create(0.0, 0.0, 252.0))
				(GM.f_sound_play(87.0))
				for _r249 in range(int((50.0))):
					(GM.f_instance_create(0.0, 0.0, 94.0))
				(GM.f_instance_create(0.0, 0.0, 575.0))
