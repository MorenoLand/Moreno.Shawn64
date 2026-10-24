extends "res://games/gm_hoops/scripts.gd"
var v_blah = 0.0
func ev_create():
	v_blah = 1.0
func ev_step():
	if (((absf(v_blah - 1.0) < 0.00001))):
		image_single = 0.0
	else:
		image_single = (-1.0)
func ev_other_7():
	(GM.f_instance_destroy(self))
