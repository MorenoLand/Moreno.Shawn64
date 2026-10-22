extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_instance_create((x + 80.0), (y + 80.0), 233.0))
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
