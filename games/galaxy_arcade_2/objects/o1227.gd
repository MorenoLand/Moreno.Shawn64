extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.vb(1198.0, "direction") - 90.0), (GM.f_random(15.0))))
	if ((((GM.f_random(3.0)) < 1.0))):
		sprite_index = 1199.0
		image_speed = 1.0
func ev_other_7():
	(GM.f_instance_destroy(self))
