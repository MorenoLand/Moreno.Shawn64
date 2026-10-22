extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	if ((absf(GM.room - 2.0) < 0.00001)):
		(GM.f_instance_create((x + 18.0), (y + 43.0), 102.0))
