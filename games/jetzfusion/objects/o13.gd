extends "res://games/jetzfusion/scripts.gd"
var v_e_big_orange = 0.0
var v_e_big_orange2 = 0.0
var v_e_big_orange3 = 0.0
var v_wow = 0.0
func ev_create():
	(GM.f_instance_create(0.0, 0.0, 358.0))
	v_wow = (GM.f_round((GM.f_random(2.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		sprite_index = v_e_big_orange
	if ((absf(v_wow - 1.0) < 0.00001)):
		sprite_index = v_e_big_orange2
	if ((absf(v_wow - 2.0) < 0.00001)):
		sprite_index = v_e_big_orange3
func ev_other_7():
	(GM.f_instance_destroy(self))
