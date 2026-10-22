extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_speed = 0.3
func ev_col_7():
	GM.G["j4var11"] = GM.G["j4var11"] + 200.0
	(GM.f_sound_play(224.0))
	for _w744 in GM.with_list((796.0), self):
		if _w744._dead:
			continue
		_w744.other = self
		(GM.f_instance_destroy(_w744))
	for _w745 in GM.with_list((1080.0), self):
		if _w745._dead:
			continue
		_w745.other = self
		(GM.f_instance_destroy(_w745))
	for _w746 in GM.with_list((680.0), self):
		if _w746._dead:
			continue
		_w746.other = self
		_w746.ev_user(0.0)
	(GM.f_instance_destroy(self))
