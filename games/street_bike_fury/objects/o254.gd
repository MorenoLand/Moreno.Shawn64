extends "res://games/street_bike_fury/objects/o20.gd"
func ev_create():
	alarm[int(0.0)] = 90.0
	(GM.f_instance_create(x, y, 251.0))
