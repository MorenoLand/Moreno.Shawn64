extends "res://games/thrust/objects/o110.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 6.0, 0.0))
func ev_col_73():
	for _w48 in GM.with_list((0.0), self):
		if _w48._dead:
			continue
		_w48.other = self
		_w48.ev_user(0.0)
func ev_col_12():
	for _w49 in GM.with_list((0.0), self):
		if _w49._dead:
			continue
		_w49.other = self
		_w49.ev_user(0.0)
func ev_col_4():
	for _w50 in GM.with_list((0.0), self):
		if _w50._dead:
			continue
		_w50.other = self
		_w50.ev_user(0.0)
func ev_other_0():
	for _w51 in GM.with_list((0.0), self):
		if _w51._dead:
			continue
		_w51.other = self
		_w51.ev_user(0.0)
