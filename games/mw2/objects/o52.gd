extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "100100100", (GM.f_random(8.0)), 0.0))
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.5
func ev_other_0():
	(GM.f_instance_destroy(self))
