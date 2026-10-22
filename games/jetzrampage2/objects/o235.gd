extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
func ev_create():
	v_alive = 1.0
func ev_col_108():
	if (((absf(v_alive - 1.0) < 0.00001))):
		for _w96 in GM.with_list((236.0), self):
			if _w96._dead:
				continue
			_w96.other = self
			(GM.f_instance_destroy(_w96))
		(GM.f_sound_play(82.0))
		gravity_direction = 270.0
		gravity = 0.3
		v_alive = 0.0
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		for _w97 in GM.with_list((236.0), self):
			if _w97._dead:
				continue
			_w97.other = self
			(GM.f_instance_destroy(_w97))
		(GM.f_sound_play(82.0))
		gravity_direction = 270.0
		gravity = 0.3
		v_alive = 0.0
func ev_col_17():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((speed > 0.0))):
			for _w98 in GM.with_list((236.0), self):
				if _w98._dead:
					continue
				_w98.other = self
				(GM.f_instance_destroy(_w98))
			(GM.f_sound_play(82.0))
			gravity_direction = 270.0
			gravity = 0.3
			v_alive = 0.0
func ev_col_16():
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 234.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		for _w99 in GM.with_list((236.0), self):
			if _w99._dead:
				continue
			_w99.other = self
			(GM.f_instance_destroy(_w99))
		(GM.f_sound_play(82.0))
		gravity_direction = 270.0
		gravity = 0.3
		v_alive = 0.0
