extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 30.0, 0.0))
	friction = 0.2
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
