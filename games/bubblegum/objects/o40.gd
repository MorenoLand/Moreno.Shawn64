extends "res://games/bubblegum/scripts.gd"
var v_beary = 0.0
func ev_step():
	if (((absf((GM.f_instance_number(38.0)) - 1.0) < 0.00001))):
		if (((absf(v_beary - 1.0) < 0.00001))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 41.0))
			(GM.f_instance_destroy(self))
