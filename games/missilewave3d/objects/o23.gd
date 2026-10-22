extends "res://games/missilewave3d/scripts.gd"
var v_view_left = {}
var v_view_top = 0.0
func ev_create():
	(GM.f_motion_set(self, ((GM.f_point_direction(x, y, GM.add(GM.aget(v_view_left, 0.0), 400.0), GM.add(GM.aget(v_view_top, 0.0), 300.0))) - 180.0), 6.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
