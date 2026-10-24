extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	image_single = (GM.f_random(2.0))
func ev_step():
	if (((x < ((-500.0) + GM.view_xview[int(0.0)])))):
		(GM.f_instance_destroy(self))
func ev_col_1237():
	(GM.f_instance_destroy(self))
