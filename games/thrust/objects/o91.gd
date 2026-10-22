extends "res://games/thrust/objects/o1.gd"
func ev_create():
	if (((absf(GM.room - 53.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 102.0))
		(GM.f_instance_destroy(self))
