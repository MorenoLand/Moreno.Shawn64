extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_col_965():
	pass
func ev_col_656():
	v_wee = (GM.f_floor((GM.f_random(10.9999))))
	if (GM.eq(v_wee, 0.0)):
		for _w603 in GM.with_list((946.0), self):
			if _w603._dead:
				continue
			_w603.other = self
			_w603.ev_user(0.0)
func ev_col_502():
	for _w604 in GM.with_list((946.0), self):
		if _w604._dead:
			continue
		_w604.other = self
		_w604.ev_user(0.0)
