extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
func ev_col_1898():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
func ev_col_117():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
func ev_col_17():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
func ev_col_10():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1897.0))
	(GM.f_instance_destroy(self))
