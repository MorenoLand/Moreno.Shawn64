extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	gravity_direction = 0.0
	gravity = 0.3
	(GM.f_action_move(self, "000101111", 8.0, 0.0))
