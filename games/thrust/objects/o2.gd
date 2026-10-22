extends "res://games/thrust/scripts.gd"
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		sprite_index = 2.0
	if ((absf(v_wow - 1.0) < 0.00001)):
		sprite_index = 3.0
func ev_col_4():
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
