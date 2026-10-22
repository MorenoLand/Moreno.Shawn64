extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_move_towards_point(self, (GM.vb(7.0, "x") + ((GM.vb(7.0, "sprite_width") / 2.0))), (GM.vb(7.0, "y") + ((GM.vb(7.0, "sprite_height") / 2.0))), (20.0 + (GM.f_random(10.0)))))
func ev_col_7():
	(GM.f_instance_destroy(self))
