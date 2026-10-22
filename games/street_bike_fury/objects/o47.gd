extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	if (((absf(GM.room - 2.0) < 0.00001) or (absf(GM.room - 38.0) < 0.00001))):
		(GM.f_instance_create(x, (y + 10.0), 5.0))
