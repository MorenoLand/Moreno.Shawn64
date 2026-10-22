extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w307 in GM.with_list((67.0), self):
		if _w307._dead:
			continue
		_w307.other = self
		GM.vset(_w307, "v_show", 0.0)
		GM.vset(_w307, "v_mytext", "")
		GM.vset(_w307, "v_mytext2", "")
		GM.vset(_w307, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w308 in GM.with_list((67.0), self):
			if _w308._dead:
				continue
			_w308.other = self
			GM.vset(_w308, "v_show", 1.0)
			GM.vset(_w308, "v_mytext", "Ski has somehow formed a army of clones")
			GM.vset(_w308, "v_mytext2", "GUESS WHAT YOU HAVE TO DO! KILL EM YEAH!!")
			GM.vset(_w308, "v_mytext3", "Push enter to accept")
	else:
		for _w309 in GM.with_list((67.0), self):
			if _w309._dead:
				continue
			_w309.other = self
			GM.vset(_w309, "v_show", 1.0)
			GM.vset(_w309, "v_mytext", "Get outa here....")
			GM.vset(_w309, "v_mytext2", "Come back when your done")
			GM.vset(_w309, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(178.0))
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
			for _r310 in range(int((10.0))):
				(GM.f_instance_create(2500.0, 480.0, 553.0))
			(GM.f_instance_create(0.0, 0.0, 554.0))
