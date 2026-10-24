extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 6.0, 0.0))
func ev_other_7():
	(GM.f_instance_destroy(self))
