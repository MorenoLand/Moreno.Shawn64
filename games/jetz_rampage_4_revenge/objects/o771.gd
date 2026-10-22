extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	if ((absf(GM.room - 16.0) < 0.00001)):
		sprite_index = 902.0
