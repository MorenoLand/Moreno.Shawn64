extends "res://games/mw2/objects/o111.gd"
func ev_create():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_step():
	depth = 10.0
func ev_other_7():
	(GM.f_instance_destroy(self))
