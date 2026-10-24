extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = (GM.f_random(2.0))
	(GM.f_action_move(self, "000000010", (1.0 + (GM.f_random(5.0))), 0.0))
func ev_col_197():
	(GM.f_instance_destroy(self))
