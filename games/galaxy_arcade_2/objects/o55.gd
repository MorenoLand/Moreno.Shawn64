extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.4
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 66.0
		image_speed = 1.0
	else:
		sprite_index = 67.0
		image_speed = 1.0
	(GM.f_motion_set(self, (130.0 + (GM.f_random(10.0))), (GM.f_random(25.0))))
