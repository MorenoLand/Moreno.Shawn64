extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000100000", 15.0, 0.0))
func ev_step():
	(GM.f_instance_create((x + 20.0), (y + (-20.0)), 1899.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
