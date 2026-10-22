extends "res://games/street_bike_fury/objects/o214.gd"
func ev_create():
	GM.room_speed = 15.0
	alarm[int(0.0)] = 70.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
