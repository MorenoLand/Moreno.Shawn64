extends "res://games/mw2/objects/o111.gd"
func ev_create():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
