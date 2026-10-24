extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	x = 0.0
	y = (-1000.0)
	alarm[int(0.0)] = 500.0
func ev_alarm_1():
	x = 0.0
	y = (-1000.0)
	alarm[int(0.0)] = 500.0
func ev_alarm_0():
	x = xstart
	y = ystart
	alarm[int(1.0)] = 200.0
func ev_col_168():
	(GM.f_instance_destroy(self))
