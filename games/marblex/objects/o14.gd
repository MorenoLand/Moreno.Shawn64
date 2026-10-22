extends "res://games/marblex/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, GM.vb(23.0, "direction"), GM.vb(23.0, "speed")))
func ev_other_7():
	(GM.f_instance_create((x + 40.0), (y + 40.0), 0.0))
	GM.view_hborder[int(0.0)] = 299.0
	GM.view_vborder[int(0.0)] = 219.0
	GM.view_object[int(0.0)] = 23.0
	(GM.f_instance_destroy(self))
