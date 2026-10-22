extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	gravity = 0.4
	(GM.f_motion_add(self, (GM.f_random(180.0)), (GM.f_random(6.0))))
func ev_step():
	image_angle = image_angle + 3.0
	if ((y > (GM.view_yview[0] + 600.0))):
		(GM.f_instance_destroy(self))
