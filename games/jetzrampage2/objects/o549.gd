extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 150.0
func ev_alarm_0():
	(GM.f_sound_stop(182.0))
	(GM.f_sound_stop(190.0))
	(GM.f_sound_stop(192.0))
	(GM.f_sound_stop(9.0))
	(GM.f_room_goto(31.0))
	(GM.f_instance_destroy(self))
