extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
func ev_col_0():
	if ((GM.vb(self.other, "hspeed") > 10.0)):
		for _w124 in GM.with_list((269.0), self):
			if _w124._dead:
				continue
			_w124.other = self
			(GM.f_instance_create(_w124.x, _w124.y, 268.0))
			(GM.f_instance_destroy(_w124))
			(GM.f_instance_create(_w124.x, _w124.y, 271.0))
		(GM.f_instance_create(x, y, 217.0))
		for _r125 in range(int((50.0))):
			v_wee = (GM.f_instance_create(x, y, 249.0))
		(GM.f_instance_create(x, y, 138.0))
		(GM.f_instance_destroy(self))
