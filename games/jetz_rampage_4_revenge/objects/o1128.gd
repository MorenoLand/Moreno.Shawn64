extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_myzap = 0.0
var v_wee = 0.0
func ev_create():
	alarm[int(0.0)] = 1.0
	v_myzap = 0.0
	(GM.f_sound_play(139.0))
	for _r785 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 734.0))
func ev_alarm_0():
	v_wee = (GM.f_instance_create(x, y, 1129.0))
	GM.vset(v_wee, "v_myzap", v_myzap)
	if (((v_myzap >= 30.0) and (absf((GM.f_instance_number(1102.0)) - 1.0) < 0.00001))):
		GM.G["j4var11"] = GM.G["j4var11"] + 400.0
		(GM.f_sound_play(224.0))
		for _w786 in GM.with_list((1102.0), self):
			if _w786._dead:
				continue
			_w786.other = self
			(GM.f_instance_destroy(_w786))
		for _w787 in GM.with_list((680.0), self):
			if _w787._dead:
				continue
			_w787.other = self
			_w787.ev_user(0.0)
		(GM.f_instance_destroy(self))
	if (((v_myzap >= 20.0) and (absf((GM.f_instance_number(1101.0)) - 1.0) < 0.00001))):
		GM.G["j4var11"] = GM.G["j4var11"] + 300.0
		(GM.f_sound_play(224.0))
		for _w788 in GM.with_list((1101.0), self):
			if _w788._dead:
				continue
			_w788.other = self
			(GM.f_instance_create(_w788.x, _w788.y, 1102.0))
			(GM.f_instance_destroy(_w788))
		for _w789 in GM.with_list((680.0), self):
			if _w789._dead:
				continue
			_w789.other = self
			_w789.ev_user(0.0)
		(GM.f_instance_destroy(self))
	(GM.f_instance_destroy(self))
func ev_col_531():
	for _w790 in GM.with_list((self.other), self):
		if _w790._dead:
			continue
		_w790.other = self
		_w790.ev_user(5.0)
	v_myzap = v_myzap + 1.0
	alarm[int(0.0)] = 1.0
