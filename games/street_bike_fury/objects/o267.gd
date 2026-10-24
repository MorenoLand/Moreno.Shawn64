extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
func ev_col_0():
	for _w119 in GM.with_list((self.other), self):
		if _w119._dead:
			continue
		_w119.other = self
		if (((absf(GM.vget(_w119, "v_die") - 0.0) < 0.00001) and (absf(GM.vget(_w119, "v_tricky") - 0.0) < 0.00001))):
			(GM.f_sound_play(31.0))
			(GM.f_instance_create(_w119.x, _w119.y, 217.0))
			GM.vset(_w119, "v_wee", (GM.f_instance_create(_w119.x, _w119.y, 95.0)))
			GM.vset(GM.vget(_w119, "v_wee"), "v_seti", (GM.vget(_w119, "v_rotate") - 90.0))
			GM.vset(_w119, "v_tricky", 1.0)
			GM.vset(_w119, "v_rate", (-10.0))
			_w119.alarm[int(7.0)] = 1.0
	(GM.f_instance_create(x, y, 261.0))
	for _r120 in range(int((100.0))):
		v_wee = (GM.f_instance_create(x, y, 72.0))
		GM.vsetb(v_wee, "hspeed", ((-10.0) + (GM.f_random(10.0))))
		GM.vsetb(v_wee, "vspeed", (-(GM.f_random(25.0))))
	for _r121 in range(int((50.0))):
		v_wee = (GM.f_instance_create(x, y, 249.0))
	(GM.f_instance_create(x, y, 218.0))
	(GM.f_instance_create(x, y, 138.0))
	(GM.f_instance_destroy(self))
