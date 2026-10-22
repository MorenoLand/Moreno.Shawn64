extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 1073.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	(GM.f_motion_set(self, (GM.f_random(360.0)), (5.0 + (GM.f_random(10.0)))))
	alarm[int(0.0)] = (5.0 + (GM.f_random(10.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
