extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if ((105.0 > 0.0)):
		x = ((GM.f_round((x / 105.0))) * 105.0)
	if ((123.0 > 0.0)):
		y = ((GM.f_round((y / 123.0))) * 123.0)
	(GM.f_instance_create((x + 86.0), (y + 0.0), 1232.0))
	alarm[int(0.0)] = 200.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
