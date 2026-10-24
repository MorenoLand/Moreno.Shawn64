extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if ((((GM.f_random(5.0)) < 1.0))):
		sprite_index = 1151.0
		image_speed = 1.0
	(GM.f_motion_set(self, ((GM.vb(339.0, "direction") - 190.0) + (GM.f_random(20.0))), (10.0 + (GM.f_random(10.0)))))
	alarm[int(0.0)] = ((GM.f_random(20.0)) + 1.0)
func ev_alarm_0():
	(GM.f_instance_destroy(self))
