extends "res://games/infection2/scripts.gd"
var v_rounds = 0.0
func ev_step():
	(GM.f_instance_create((x + 14.0), (y + 2.0), 20.0))
	v_rounds = (GM.f_floor((GM.f_random(1.999999))))
	if ((absf(v_rounds - 1.0) < 0.00001)):
		(GM.f_instance_create((x + 14.0), (y - 10.0), 48.0))
