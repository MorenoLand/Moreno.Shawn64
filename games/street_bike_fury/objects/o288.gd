extends "res://games/street_bike_fury/scripts.gd"
func ev_step():
	if (((GM.f_instance_number(0.0)) > 0.0)):
		if (((GM.vb(0.0, "x") > x) and (absf(GM.vget(0.0, "v_die") - 0.0) < 0.00001))):
			self.ev_user(0.0)
	else:
		if (((GM.f_instance_number(21.0)) > 0.0)):
			if ((GM.vb(21.0, "x") > x)):
				self.ev_user(0.0)
func ev_other_10():
	for _w128 in GM.with_list((287.0), self):
		if _w128._dead:
			continue
		_w128.other = self
		(GM.f_instance_destroy(_w128))
	(GM.f_instance_destroy(self))
