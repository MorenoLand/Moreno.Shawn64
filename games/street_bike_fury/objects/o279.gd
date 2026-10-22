extends "res://games/street_bike_fury/scripts.gd"
var v_wit = 0.0
func ev_col_278():
	v_wit = (GM.f_instance_create(x, y, 280.0))
	GM.vsetb(v_wit, "direction", GM.vb(0.0, "direction"))
	GM.vsetb(v_wit, "speed", (GM.vb(0.0, "speed") / 10.0))
	(GM.f_sound_play(36.0))
	(GM.f_instance_destroy(self))
