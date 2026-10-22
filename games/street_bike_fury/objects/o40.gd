extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	if ((absf(GM.room - 2.0) < 0.00001)):
		(GM.f_instance_create(x, (y + 100.0), 5.0))
		(GM.f_instance_create((x + 46.0), (y + 54.0), 5.0))
