extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if (((absf((GM.f_instance_number(449.0)) - 1.0) < 0.00001))):
		alarm[int(0.0)] = 50.0
	else:
		alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((absf((GM.f_instance_number(442.0)) - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000000010", 30.0, 0.0))
	else:
		(GM.f_action_move(self, "000000010", 15.0, 0.0))
