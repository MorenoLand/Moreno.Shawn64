extends "res://games/marblex/scripts.gd"
var v_dir = 0.0
func ev_create():
	v_dir = 0.0
func ev_step():
	v_dir = v_dir + 1.0
func ev_col_0():
	for _w48 in GM.with_list((self.other), self):
		if _w48._dead:
			continue
		_w48.other = self
		(GM.f_motion_add(_w48, GM.vget(29.0, "v_dir"), 1.0))
