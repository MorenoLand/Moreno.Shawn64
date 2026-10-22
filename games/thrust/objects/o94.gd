extends "res://games/thrust/objects/o3.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 6.0, 0.0))
func ev_col_73():
	for _w39 in GM.with_list((0.0), self):
		if _w39._dead:
			continue
		_w39.other = self
		_w39.ev_user(0.0)
func ev_col_12():
	for _w40 in GM.with_list((0.0), self):
		if _w40._dead:
			continue
		_w40.other = self
		_w40.ev_user(0.0)
func ev_col_4():
	for _w41 in GM.with_list((0.0), self):
		if _w41._dead:
			continue
		_w41.other = self
		_w41.ev_user(0.0)
func ev_other_0():
	for _w42 in GM.with_list((0.0), self):
		if _w42._dead:
			continue
		_w42.other = self
		_w42.ev_user(0.0)
