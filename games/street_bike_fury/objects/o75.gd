extends "res://games/street_bike_fury/scripts.gd"
func ev_col_0():
	if ((absf((GM.f_instance_number(71.0)) - 0.0) < 0.00001)):
		(GM.f_effect_create_above(4.0, x, y, 2.0, 8421504.0))
		(GM.f_sound_play(19.0))
		(GM.f_instance_destroy(self))
