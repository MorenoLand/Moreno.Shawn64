extends "res://games/bubblegum/objects/o92.gd"
func ev_create():
	(GM.f_action_move(self, "000100000", 4.0, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
