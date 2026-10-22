extends "res://games/thrust/scripts.gd"
var v_reek = 0.0
func ev_create():
	v_reek = (GM.f_round((GM.f_random(3.0))))
	(GM.f_instance_create(0.0, 0.0, 15.0))
	if (((absf(v_reek - 0.0) < 0.00001))):
		(GM.f_room_goto(44.0))
	if (((absf(v_reek - 1.0) < 0.00001))):
		(GM.f_room_goto(43.0))
	if (((absf(v_reek - 2.0) < 0.00001))):
		(GM.f_room_goto(45.0))
	if (((absf(v_reek - 3.0) < 0.00001))):
		(GM.f_room_goto(56.0))
