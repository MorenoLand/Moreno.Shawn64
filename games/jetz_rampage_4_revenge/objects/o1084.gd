extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_speed = 0.3
func ev_col_7():
	GM.G["j4var11"] = GM.G["j4var11"] + 100.0
	(GM.f_sound_play(224.0))
	for _w741 in GM.with_list((796.0), self):
		if _w741._dead:
			continue
		_w741.other = self
		(GM.f_instance_destroy(_w741))
	for _w742 in GM.with_list((1079.0), self):
		if _w742._dead:
			continue
		_w742.other = self
		(GM.f_instance_create(_w742.x, _w742.y, 1080.0))
		(GM.f_instance_destroy(_w742))
	for _w743 in GM.with_list((680.0), self):
		if _w743._dead:
			continue
		_w743.other = self
		_w743.ev_user(0.0)
	(GM.f_instance_destroy(self))
