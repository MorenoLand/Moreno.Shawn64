extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	if ((y < 200.0)):
		depth = 10.0
func ev_col_7():
	if ((absf((GM.f_instance_number(993.0)) - 1.0) < 0.00001)):
		GM.G["j4var11"] = GM.G["j4var11"] + 200.0
		(GM.f_sound_play(224.0))
		for _w656 in GM.with_list((680.0), self):
			if _w656._dead:
				continue
			_w656.other = self
			_w656.ev_user(0.0)
		for _w657 in GM.with_list((989.0), self):
			if _w657._dead:
				continue
			_w657.other = self
			(GM.f_instance_destroy(_w657))
	(GM.f_sound_play(152.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	for _w658 in GM.with_list((680.0), self):
		if _w658._dead:
			continue
		_w658.other = self
		_w658.ev_user(0.0)
