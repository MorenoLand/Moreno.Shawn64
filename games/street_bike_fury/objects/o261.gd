extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	for _r115 in range(int((15.0))):
		(GM.f_instance_create(((x - 100.0) + (GM.f_random(200.0))), ((y - 100.0) + (GM.f_random(200.0))), 262.0))
	(GM.f_sound_play(84.0))
	(GM.f_sound_play(8.0))
	(GM.f_instance_create(x, y, 138.0))
