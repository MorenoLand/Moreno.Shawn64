extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.5
	if ((((GM.f_random(3.0)) < 1.0))):
		sprite_index = 499.0
		image_speed = 1.0
	else:
		sprite_index = 500.0
		image_speed = 1.0
	(GM.f_motion_set(self, (70.0 + (GM.f_random(40.0))), (GM.f_random(15.0))))
func ev_other_0():
	(GM.f_instance_destroy(self))
