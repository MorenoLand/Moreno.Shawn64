extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), (GM.f_random(10.0))))
	gravity_direction = 270.0
	gravity = 0.45
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 184.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_other_0():
	(GM.f_instance_destroy(self))
