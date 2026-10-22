extends "res://games/jetzrampage2/objects/o569.gd"
func ev_create():
	v_packages = 6.0
	x = (100.0 + (GM.f_random((GM.room_width - 200.0))))
	y = (GM.f_random(500.0))
