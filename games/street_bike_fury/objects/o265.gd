extends "res://games/street_bike_fury/objects/o20.gd"
func ev_create():
	alarm[int(0.0)] = 2.0
func ev_other_10():
	(GM.f_sound_play(86.0))
	(GM.f_instance_destroy(self))
