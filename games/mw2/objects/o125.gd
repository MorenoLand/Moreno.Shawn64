extends "res://games/mw2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	depth = (-9.0)
	if (not (((absf(GM.G["bow"] - 360.0) < 0.00001)))):
		GM.G["bow"] = GM.G["bow"] + 4.0
	else:
		GM.G["bow"] = 0.0
	(GM.f_instance_create((x + 4.5), (y + 4.5), 126.0))
	(GM.f_instance_create((x + 4.5), (y + 4.5), 128.0))
