extends "res://games/jetzrampage2/scripts.gd"
func ev_col_0():
	for _w88 in GM.with_list((0.0), self):
		if _w88._dead:
			continue
		_w88.other = self
		GM.vset(_w88, "v_flames", 1.0)
	(GM.f_instance_destroy(self))
