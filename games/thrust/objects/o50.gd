extends "res://games/thrust/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(3.0))
	(GM.f_move_contact_solid(self, (GM.f_random(360.0)), (GM.f_random(300.0))))
	direction = (GM.f_point_direction(x, y, GM.vb(49.0, "x"), GM.vb(49.0, "y")))
func ev_step():
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(49.0, "x"), GM.vb(49.0, "y"))), 0.1))
func ev_col_49():
	(GM.f_instance_destroy(self))
