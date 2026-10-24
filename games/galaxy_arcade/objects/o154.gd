extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.2
	(GM.f_action_move(self, "000101111", 6.0, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
