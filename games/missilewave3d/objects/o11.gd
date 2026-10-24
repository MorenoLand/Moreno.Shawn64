extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, ((GM.f_point_direction(x, y, (GM.view_xview[int(0.0)] + 400.0), (GM.view_yview[int(0.0)] + 300.0))) - 180.0), 10.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
