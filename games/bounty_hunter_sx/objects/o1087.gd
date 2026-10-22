extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - 512.0)
	y = ((GM.room_height / 2.0) - 384.0)
	alarm[int(0.0)] = 3.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
