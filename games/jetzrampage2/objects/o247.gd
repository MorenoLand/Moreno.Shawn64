extends "res://games/jetzrampage2/scripts.gd"
var v_mission1beat = 0.0
func ev_alarm_0():
	for _w103 in GM.with_list((67.0), self):
		if _w103._dead:
			continue
		_w103.other = self
		GM.vset(_w103, "v_show", 0.0)
		GM.vset(_w103, "v_mytext", "")
		GM.vset(_w103, "v_mytext2", "")
		GM.vset(_w103, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w104 in GM.with_list((67.0), self):
			if _w104._dead:
				continue
			_w104.other = self
			GM.vset(_w104, "v_show", 1.0)
			GM.vset(_w104, "v_mytext", "This kid called Skiracer901 really pissed me off today")
			GM.vset(_w104, "v_mytext2", "Kill him and I'll pay big!  Make it quick though.")
			GM.vset(_w104, "v_mytext3", " Push enter to accept")
	else:
		for _w105 in GM.with_list((67.0), self):
			if _w105._dead:
				continue
			_w105.other = self
			GM.vset(_w105, "v_show", 1.0)
			GM.vset(_w105, "v_mytext", "Your allready doing a mission")
			GM.vset(_w105, "v_mytext2", "Come back when your done")
			GM.vset(_w105, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission1beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_sound_play(178.0))
				(GM.f_instance_create(0.0, 0.0, 252.0))
				(GM.f_sound_play(87.0))
				(GM.f_instance_create(2000.0, 500.0, 249.0))
