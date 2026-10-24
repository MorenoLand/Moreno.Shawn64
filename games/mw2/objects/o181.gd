extends "res://games/mw2/objects/o30.gd"
func ev_create():
	alarm[int(0.0)] = 150.0
func ev_destroy():
	(GM.f_sound_play(46.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 183.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 183.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 183.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 183.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
