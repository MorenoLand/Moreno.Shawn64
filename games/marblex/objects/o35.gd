extends "res://games/marblex/scripts.gd"
func ev_col_0():
	for _w47 in GM.with_list((self.other), self):
		if _w47._dead:
			continue
		_w47.other = self
		_w47.speed = _w47.speed + 6.5
	(GM.f_instance_destroy(self))
