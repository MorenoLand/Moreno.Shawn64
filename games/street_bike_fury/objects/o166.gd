extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_col_197():
	for _r71 in range(int((100.0))):
		v_set = (GM.f_instance_create(x, ((y - 30.0) + (GM.f_random(60.0))), 72.0))
		GM.vsetb(v_set, "direction", (90.0 + (GM.f_random(180.0))))
		GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(8.0))))
		GM.vsetb(v_set, "depth", 6.0)
	(GM.f_effect_create_above(4.0, x, y, 2.0, 8421504.0))
	if ((absf((1.0 if not ((GM.room) >= 0.5) else 0.0) - 38.0) < 0.00001)):
		(GM.f_sound_play(52.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	(GM.f_instance_create((x + 500.0), y, 140.0))
	for _r72 in range(int((100.0))):
		v_set = (GM.f_instance_create(x, ((y - 30.0) + (GM.f_random(60.0))), 72.0))
		GM.vsetb(v_set, "direction", (90.0 + (GM.f_random(180.0))))
		GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(8.0))))
		GM.vsetb(v_set, "depth", 6.0)
	(GM.f_effect_create_above(4.0, x, y, 2.0, 8421504.0))
	(GM.f_sound_play(52.0))
	(GM.f_instance_destroy(self))
