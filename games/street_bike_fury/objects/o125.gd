extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	image_yscale = 0.0
	alarm[int(0.0)] = 60.0
	GM.G["musicon"] = 1.0
	(GM.f_sound_play(34.0))
func ev_alarm_0():
	(GM.f_instance_create(x, y, 126.0))
func ev_step():
	if ((image_yscale < 1.0)):
		image_yscale = image_yscale + 0.05
