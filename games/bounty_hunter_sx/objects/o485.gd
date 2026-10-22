extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	if ((((GM.f_random(3.0)) < 1.0))):
		sprite_index = 489.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 490.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	(GM.f_motion_set(self, ((GM.vget(482.0, "v_my_direction") - 190.0) + (GM.f_random(20.0))), (5.0 + (GM.f_random(5.0)))))
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	alarm[int(0.0)] = (1.0 + (GM.f_random(20.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
