extends "res://games/bubblegum/scripts.gd"
func ev_col_24():
	for _w73 in GM.with_list((109.0), self):
		if _w73._dead:
			continue
		_w73.other = self
		(GM.f_instance_destroy(_w73))
