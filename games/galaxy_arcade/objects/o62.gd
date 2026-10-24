extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, GM.vget(44.0, "v_my_direction"), 8.0))
func ev_col_51():
	(GM.f_instance_destroy(self))
func ev_col_40():
	(GM.f_instance_destroy(self))
