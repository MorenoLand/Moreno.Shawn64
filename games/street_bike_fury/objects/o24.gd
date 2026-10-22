extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	if ((absf((GM.f_instance_number(44.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create(x, (y + 40.0), 27.0))
