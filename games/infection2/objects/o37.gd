extends "res://games/infection2/scripts.gd"
func ev_create():
	image_speed = 0.0
	image_index = (GM.f_random(4.0))
	direction = (GM.f_random(180.0))
	speed = (10.0 + (GM.f_random(15.0)))
	gravity = 0.5
	gravity_direction = 270.0
	alarm[int(0.0)] = ((GM.f_random(30.0)) + 30.0)
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_stepend():
	if (((GM.f_place_meeting(self, (x + hspeed), y, 1.0)))) >= 0.5:
		hspeed = 0.0
func ev_col_1():
	if ((vspeed > 0.0)):
		friction = 1.0
	if (((vspeed > 0.0) and not (((GM.f_place_free(self, x, (y + vspeed)))) >= 0.5))):
		if (((vspeed > 0.0) and ((GM.f_place_free(self, x, ((y + vspeed) + 1.0)))) >= 0.5)):
			(GM.f_move_contact(self, 270.0))
	vspeed = 0.0
