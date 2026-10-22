extends "res://games/infection2/scripts.gd"
var v_temp = 0.0
func ev_col_23():
	for _w7 in GM.with_list((self.other), self):
		if _w7._dead:
			continue
		_w7.other = self
		(GM.f_instance_destroy(_w7))
	for _r8 in range(int((10.0))):
		v_temp = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 64.0))
		GM.vsetb(v_temp, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_temp, "speed", (GM.f_random(10.0)))
