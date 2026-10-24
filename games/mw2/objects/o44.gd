extends "res://games/mw2/scripts.gd"
func ev_create():
	for _r13 in range(int((GM.G["cool"]))):
		(GM.f_instance_create(0.0, 0.0, 92.0))
	GM.G["cool"] = 5.0
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
