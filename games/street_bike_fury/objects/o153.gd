extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_create():
	alarm[int(0.0)] = 5.0
	v_set = 0.0
func ev_alarm_0():
	v_set = 1.0
func ev_mouse_53():
	if (GM.eq(v_set, 1.0)):
		(GM.f_instance_create(x, y, 126.0))
		(GM.f_sound_play(35.0))
