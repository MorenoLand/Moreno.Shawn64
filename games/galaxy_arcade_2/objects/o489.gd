extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, GM.vget(482.0, "v_my_direction"), (GM.vb(482.0, "speed") + 20.0)))
func ev_col_490():
	(GM.f_instance_destroy(self))
func ev_col_487():
	(GM.f_instance_destroy(self))
func ev_col_486():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
