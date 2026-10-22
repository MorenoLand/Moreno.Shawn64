extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	GM.vset(0.0, "v_intro", 0.0)
	GM.vset(0.0, "v_intro2", 1.0)
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_create(x, y, 45.0))
