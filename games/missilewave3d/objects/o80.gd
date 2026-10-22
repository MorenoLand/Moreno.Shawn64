extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (70.0 + (GM.f_random(40.0))), ((GM.f_random(3.0)) + 1.0)))
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 53.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_other_7():
	(GM.f_instance_destroy(self))
