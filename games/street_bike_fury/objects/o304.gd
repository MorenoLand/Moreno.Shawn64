extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	if ((absf(GM.room - 2.0) < 0.00001)):
		if ((absf(GM.G["cannons"] - 1.0) < 0.00001)):
			(GM.f_instance_create(x, y, 302.0))
			(GM.f_instance_destroy(self))
