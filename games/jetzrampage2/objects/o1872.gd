extends "res://games/jetzrampage2/objects/o474.gd"
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w376 in GM.with_list((67.0), self):
			if _w376._dead:
				continue
			_w376.other = self
			GM.vset(_w376, "v_show", 1.0)
			GM.vset(_w376, "v_mytext", "You know what your gonna do with this flame thrower ;)")
			GM.vset(_w376, "v_mytext2", "BURN 30 PEOPLE IN 30 SECONDS!")
			GM.vset(_w376, "v_mytext3", "press enter to accept")
	else:
		for _w377 in GM.with_list((67.0), self):
			if _w377._dead:
				continue
			_w377.other = self
			GM.vset(_w377, "v_show", 1.0)
			GM.vset(_w377, "v_mytext", "Your allready doing a mission")
			GM.vset(_w377, "v_mytext2", "Come back when your done")
			GM.vset(_w377, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			for _w378 in GM.with_list((0.0), self):
				if _w378._dead:
					continue
				_w378.other = self
				GM.vset(_w378, "v_flames", 1.0)
				GM.vset(_w378, "v_weaponselect", 2.0)
			(GM.f_instance_create(0.0, 0.0, 1894.0))
			(GM.f_instance_create(0.0, 0.0, 252.0))
			(GM.f_sound_play(87.0))
