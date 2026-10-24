extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000100000", 3.0, 0.0))
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.3
