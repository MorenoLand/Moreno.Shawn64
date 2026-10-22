extends "res://games/jetzrampage2/scripts.gd"
var v_wow = 0.0
func ev_create():
	gravity_direction = 270.0
	gravity = 0.3
	v_wow = 0.0
	if ((((GM.f_random(5.0)) < 1.0))):
		sprite_index = 539.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		if ((((GM.f_random(3.0)) < 1.0))):
			sprite_index = 540.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				sprite_index = 538.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
			else:
				sprite_index = 537.0
				if ((1.0 >= 0.0)):
					image_index = 1.0
				image_speed = 0.0
	(GM.f_motion_set(self, (GM.f_random(360.0)), ((GM.f_random(5.0)) + 5.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
