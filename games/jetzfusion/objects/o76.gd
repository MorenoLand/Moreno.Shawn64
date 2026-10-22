extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if (not (((GM.G["damage"] > 87.5)))):
		if (((GM.G["damage"] > 37.5))):
			if ((((GM.f_instance_number(118.0)) < 2.0))):
				(GM.f_instance_create((GM.f_random((GM.room_width - 40.0))), 480.0, 118.0))
		if (((GM.G["damage"] > 25.0))):
			if ((((GM.f_instance_number(113.0)) < 2.0))):
				(GM.f_instance_create((GM.f_random((GM.room_width - 40.0))), 480.0, 113.0))
		if (((GM.G["damage"] > 50.0))):
			if ((((GM.f_instance_number(120.0)) < 2.0))):
				(GM.f_instance_create((GM.f_random((GM.room_width - 40.0))), (GM.f_random((GM.room_height - 300.0))), 120.0))
		if (((GM.G["damage"] > 75.0))):
			if ((((GM.f_instance_number(127.0)) < 2.0))):
				(GM.f_instance_create((GM.f_random((GM.room_width - 40.0))), (GM.f_random((GM.room_height - 300.0))), 127.0))
		if (((GM.G["damage"] > 62.5))):
			if ((((GM.f_instance_number(129.0)) < 2.0))):
				(GM.f_instance_create((GM.f_random((GM.room_width - 40.0))), 480.0, 129.0))
	if (((GM.G["damage"] > 87.5))):
		if (((absf((GM.f_instance_number(175.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 175.0))
	(GM.f_instance_destroy(self))
