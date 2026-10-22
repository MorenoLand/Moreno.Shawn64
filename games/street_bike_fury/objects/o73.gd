extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_col_0():
	if ((absf((GM.f_instance_number(71.0)) - 0.0) < 0.00001)):
		for _w55 in GM.with_list((214.0), self):
			if _w55._dead:
				continue
			_w55.other = self
			(GM.f_instance_destroy(_w55))
		(GM.f_instance_create((x + 500.0), y, 138.0))
		for _r56 in range(int((100.0))):
			v_set = (GM.f_instance_create(x, ((y - 30.0) + (GM.f_random(60.0))), 72.0))
			GM.vsetb(v_set, "direction", ((-90.0) + (GM.f_random(180.0))))
			GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(15.0))))
		for _r57 in range(int((50.0))):
			v_set = (GM.f_instance_create(x, ((y - 30.0) + (GM.f_random(60.0))), 285.0))
			GM.vsetb(v_set, "direction", ((-45.0) + (GM.f_random(90.0))))
			GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(15.0))))
		(GM.f_sound_play(89.0))
		(GM.f_effect_create_above(4.0, x, y, 2.0, 8421504.0))
		(GM.f_instance_destroy(self))
