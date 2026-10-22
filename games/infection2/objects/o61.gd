extends "res://games/infection2/scripts.gd"
func ev_create():
	image_speed = 0.5
func ev_step():
	if (((GM.f_distance_to_object(self, 0.0)) < 100.0)):
		(GM.f_instance_create(x, (y + 3.0), 56.0))
		(GM.f_instance_destroy(self))
func ev_col_23():
	(GM.f_instance_create(x, (y + 3.0), 56.0))
	(GM.f_instance_destroy(self))
