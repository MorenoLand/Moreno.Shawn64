extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_create((x + (-100.0)), (y + (-100.0)), 1232.0))
	(GM.f_instance_destroy(self))
func ev_step():
	for _r441 in range(int((5.0))):
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1247.0))
