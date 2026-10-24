extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if ((((GM.f_random(3.0)) < 1.0))):
		sprite_index = 1173.0
		image_speed = 1.0
	(GM.f_motion_set(self, (170.0 + (GM.f_random(20.0))), ((GM.f_random(10.0)) + 10.0)))
	alarm[int(0.0)] = ((GM.f_random(10.0)) + 10.0)
func ev_alarm_0():
	(GM.f_instance_destroy(self))
