extends "res://games/thrust/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000100000", 8.0, 0.0))
func ev_other_0():
	(self.script_outsidewrap(0.0, 0.0, 0.0, 0.0, 0.0))
