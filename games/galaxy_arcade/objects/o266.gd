extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 15.0, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
