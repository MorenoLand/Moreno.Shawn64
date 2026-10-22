extends "res://games/street_bike_fury/scripts.gd"
func ev_step():
	image_alpha = image_alpha - 0.05
func ev_other_7():
	(GM.f_instance_destroy(self))
