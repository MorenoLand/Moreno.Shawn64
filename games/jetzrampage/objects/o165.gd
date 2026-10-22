extends "res://games/jetzrampage/scripts.gd"
func ev_col_0():
	for _w99 in GM.with_list((0.0), self):
		if _w99._dead:
			continue
		_w99.other = self
		GM.vset(_w99, "v_flames", 1.0)
	(GM.f_instance_destroy(self))
