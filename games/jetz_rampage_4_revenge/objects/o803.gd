extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.4
	(GM.f_sound_play(122.0))
	image_single = 0.0
func ev_col_489():
	if (((vspeed > 2.0))):
		(GM.f_sound_play(144.0))
	vspeed = 0.0
	hspeed = 0.0
func ev_col_7():
	GM.G["j4var11"] = GM.G["j4var11"] + 100.0
	(GM.f_sound_play(224.0))
	for _w479 in GM.with_list((680.0), self):
		if _w479._dead:
			continue
		_w479.other = self
		_w479.ev_user(0.0)
	for _w480 in GM.with_list((676.0), self):
		if _w480._dead:
			continue
		_w480.other = self
		(GM.f_instance_destroy(_w480))
		(GM.f_instance_create(_w480.x, _w480.y, 989.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	for _w481 in GM.with_list((680.0), self):
		if _w481._dead:
			continue
		_w481.other = self
		_w481.ev_user(0.0)
