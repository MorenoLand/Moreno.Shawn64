extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	if ((absf(GM.room - 1.0) < 0.00001)):
		image_single = 0.0
	if ((absf(GM.room - 16.0) < 0.00001)):
		image_single = 1.0
