extends "res://games/jetzrampage2/scripts.gd"
func ev_alarm_0():
	for _w242 in GM.with_list((67.0), self):
		if _w242._dead:
			continue
		_w242.other = self
		GM.vset(_w242, "v_show", 0.0)
		GM.vset(_w242, "v_mytext", "")
		GM.vset(_w242, "v_mytext2", "")
		GM.vset(_w242, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w243 in GM.with_list((67.0), self):
			if _w243._dead:
				continue
			_w243.other = self
			GM.vset(_w243, "v_show", 1.0)
			GM.vset(_w243, "v_mytext", "Yeah uhhh... Stenners....")
			GM.vset(_w243, "v_mytext2", "That guy needs to die! shoot down his plane!")
			GM.vset(_w243, "v_mytext3", " Push enter to accept")
	else:
		for _w244 in GM.with_list((67.0), self):
			if _w244._dead:
				continue
			_w244.other = self
			GM.vset(_w244, "v_show", 1.0)
			GM.vset(_w244, "v_mytext", "Get outa here....")
			GM.vset(_w244, "v_mytext2", "Come back when your done")
			GM.vset(_w244, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 252.0))
			(GM.f_sound_play(87.0))
			(GM.f_instance_create(0.0, 50.0, 546.0))
