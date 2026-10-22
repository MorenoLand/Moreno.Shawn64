extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	vspeed = (15.0 + (GM.f_random(9.0)))
func ev_col_1():
	(GM.f_instance_destroy(self))
