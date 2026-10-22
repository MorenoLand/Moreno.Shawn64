extends "res://games/thrust/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 6.0, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
