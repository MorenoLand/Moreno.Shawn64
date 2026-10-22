extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w331 in GM.with_list((67.0), self):
		if _w331._dead:
			continue
		_w331.other = self
		GM.vset(_w331, "v_show", 0.0)
		GM.vset(_w331, "v_mytext", "")
		GM.vset(_w331, "v_mytext2", "")
		GM.vset(_w331, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w332 in GM.with_list((67.0), self):
			if _w332._dead:
				continue
			_w332.other = self
			GM.vset(_w332, "v_show", 1.0)
			GM.vset(_w332, "v_mytext", "Your gonna have to defeat the nerd squad!")
			GM.vset(_w332, "v_mytext2", "That's Skiracer,Dex and CapnChubby")
			GM.vset(_w332, "v_mytext3", "Push enter to accept")
	else:
		for _w333 in GM.with_list((67.0), self):
			if _w333._dead:
				continue
			_w333.other = self
			GM.vset(_w333, "v_show", 1.0)
			GM.vset(_w333, "v_mytext", "Get outa here....")
			GM.vset(_w333, "v_mytext2", "Come back when your done")
			GM.vset(_w333, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(178.0))
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
			(GM.f_instance_create(0.0, 0.0, 1880.0))
			(GM.f_instance_create(0.0, 0.0, 1882.0))
			(GM.f_instance_create(0.0, 0.0, 178.0))
			(GM.f_instance_create(2000.0, 0.0, 1881.0))
			(GM.f_instance_create(1000.0, 0.0, 1879.0))
			(GM.f_instance_create(0.0, 0.0, 71.0))
			(GM.f_instance_create(0.0, 0.0, 1883.0))
