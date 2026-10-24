extends "res://games/galaxy_arcade_2/objects/o489.gd"
func ev_create():
	(GM.f_motion_set(self, GM.vget(1245.0, "v_my_direction"), (GM.vb(1245.0, "speed") + 20.0)))
func ev_col_490():
	(GM.f_instance_destroy(self))
func ev_col_487():
	(GM.f_instance_destroy(self))
func ev_col_486():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
