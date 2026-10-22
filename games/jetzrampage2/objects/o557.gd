extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	if (((absf(GM.room - 37.0) < 0.00001))):
		sprite_index = 523.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_alarm_0():
	for _w271 in GM.with_list((67.0), self):
		if _w271._dead:
			continue
		_w271.other = self
		GM.vset(_w271, "v_show", 0.0)
		GM.vset(_w271, "v_mytext", "")
		GM.vset(_w271, "v_mytext2", "")
		GM.vset(_w271, "v_mytext3", "")
func ev_col_0():
	if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
		for _w272 in GM.with_list((67.0), self):
			if _w272._dead:
				continue
			_w272.other = self
			GM.vset(_w272, "v_show", 1.0)
			GM.vset(_w272, "v_mytext", "Yeah me and my gang are trying to smuggle in some drugs..")
			GM.vset(_w272, "v_mytext2", "That jet pack of yours could be very helpful...")
			GM.vset(_w272, "v_mytext3", "so will you help us? push enter")
	else:
		for _w273 in GM.with_list((67.0), self):
			if _w273._dead:
				continue
			_w273.other = self
			GM.vset(_w273, "v_show", 1.0)
			GM.vset(_w273, "v_mytext", "Your allready doing a mission")
			GM.vset(_w273, "v_mytext2", "Come back when your done")
			GM.vset(_w273, "v_mytext3", "")
	alarm[int(0.0)] = 15.0
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(250.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 569.0))
			(GM.f_instance_create(0.0, 0.0, 570.0))
			(GM.f_instance_create(0.0, 0.0, 250.0))
			(GM.f_sound_play(87.0))
