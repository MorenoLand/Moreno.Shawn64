extends "res://games/bubblegum/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(45.0)) - 1.0) < 0.00001))):
		if (((absf(GM.vget(45.0, "v_blab") - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(46.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create((x + 0.0), (y + 0.0), 46.0))
				(GM.f_instance_destroy(self))
