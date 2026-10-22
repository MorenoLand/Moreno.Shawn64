extends "res://games/marblex/scripts.gd"
var v_dir = 0.0
func ev_create():
	v_dir = 0.0
func ev_step():
	v_dir = v_dir + 1.0
func ev_col_0():
	for _w42 in GM.with_list((self.other), self):
		if _w42._dead:
			continue
		_w42.other = self
		(GM.f_motion_add(_w42, GM.vget(13.0, "v_dir"), 1.0))
