extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
	(GM.f_instance_create(0.0, 0.0, 177.0))
	alarm[int(0.0)] = 50.0
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_action_move(self, "000001000", 6.0, 0.0))
		sprite_index = 82.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		(GM.f_action_move(self, "000100000", 6.0, 0.0))
		sprite_index = 85.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 130.0))
	if (((hspeed > 0.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 172.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_instance_create((x + 0.0), (y + 0.0), 171.0))
		(GM.f_instance_destroy(self))
func ev_step():
	(GM.f_instance_create((x + 25.0), (y + 25.0), 169.0))
