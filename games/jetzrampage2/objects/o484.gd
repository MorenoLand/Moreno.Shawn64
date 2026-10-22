extends "res://games/jetzrampage2/scripts.gd"
var v_mission2beat = 0.0
func ev_alarm_0():
	for _w198 in GM.with_list((67.0), self):
		if _w198._dead:
			continue
		_w198.other = self
		GM.vset(_w198, "v_show", 0.0)
		GM.vset(_w198, "v_mytext", "")
		GM.vset(_w198, "v_mytext2", "")
		GM.vset(_w198, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w199 in GM.with_list((67.0), self):
			if _w199._dead:
				continue
			_w199.other = self
			GM.vset(_w199, "v_show", 1.0)
			GM.vset(_w199, "v_mytext", "My poor little kitten is lost!")
			GM.vset(_w199, "v_mytext2", "Yeah... I know I have a soft side... Find him quick!")
			GM.vset(_w199, "v_mytext3", "press enter to accept")
	else:
		for _w200 in GM.with_list((67.0), self):
			if _w200._dead:
				continue
			_w200.other = self
			GM.vset(_w200, "v_show", 1.0)
			GM.vset(_w200, "v_mytext", "Your allready doing a mission")
			GM.vset(_w200, "v_mytext2", "Come back when your done")
			GM.vset(_w200, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if (((absf(v_mission2beat - 0.0) < 0.00001))):
		if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(2800.0, 502.0, 482.0))
				(GM.f_instance_create(0.0, 0.0, 250.0))
				(GM.f_sound_play(87.0))
