extends "res://games/jetzrampage2/scripts.gd"
var v_packages = 0.0
func ev_create():
	v_packages = 4.0
	x = (100.0 + (GM.f_random((GM.room_width - 200.0))))
	y = (GM.f_random(500.0))
func ev_col_0():
	(GM.f_sound_play(32.0))
	(GM.f_instance_create(((60.0 + (GM.f_random(GM.room_width))) - 120.0), 508.0, 571.0))
	x = (-200.0)
	y = (-200.0)
