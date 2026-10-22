extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 10.0, 0.0))
func ev_col_74():
	for _w65 in GM.with_list((self.other), self):
		if _w65._dead:
			continue
		_w65.other = self
		(GM.f_instance_destroy(_w65))
func ev_other_0():
	(GM.f_instance_destroy(self))
