extends "res://games/jetzrampage2/scripts.gd"
var v_mission1beat = 0.0
func ev_alarm_0():
	for _w216 in GM.with_list((67.0), self):
		if _w216._dead:
			continue
		_w216.other = self
		GM.vset(_w216, "v_show", 0.0)
		GM.vset(_w216, "v_mytext", "")
		GM.vset(_w216, "v_mytext2", "")
		GM.vset(_w216, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w217 in GM.with_list((67.0), self):
			if _w217._dead:
				continue
			_w217.other = self
			GM.vset(_w217, "v_show", 1.0)
			GM.vset(_w217, "v_mytext", "Tibit's lost his monkeys!")
			GM.vset(_w217, "v_mytext2", "Go kill em! Killing stuff is fun!")
			GM.vset(_w217, "v_mytext3", " Push enter to accept")
	else:
		for _w218 in GM.with_list((67.0), self):
			if _w218._dead:
				continue
			_w218.other = self
			GM.vset(_w218, "v_show", 1.0)
			GM.vset(_w218, "v_mytext", "Your allready doing a mission")
			GM.vset(_w218, "v_mytext2", "Come back when your done")
			GM.vset(_w218, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission1beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(0.0, 0.0, 252.0))
				(GM.f_sound_play(87.0))
				for _r219 in range(int((20.0))):
					(GM.f_instance_create(560.0, 380.0, 524.0))
				(GM.f_instance_create(0.0, 0.0, 525.0))
