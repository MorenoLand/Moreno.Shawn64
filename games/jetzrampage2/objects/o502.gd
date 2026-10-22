extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000100000", 3.0, 0.0))
func ev_other_1():
	for _w215 in GM.with_list((1870.0), self):
		if _w215._dead:
			continue
		_w215.other = self
		_w215.x = (GM.vb(502.0, "x") + 93.0)
		_w215.y = (GM.vb(502.0, "y") + 34.0)
func ev_other_0():
	if (((absf((GM.f_instance_number(1870.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 1870.0))
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
