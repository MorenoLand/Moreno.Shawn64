extends "res://games/holiday_hunting/scripts.gd"
func ev_create():
	for _r15 in range(int((50.0))):
		(GM.f_instance_create((GM.f_random((GM.room_width - 50.0))), (GM.f_random((GM.room_height - 150.0))), 16.0))
func ev_step():
	if ((((GM.f_random(50.0)) < 1.0))):
		if ((((GM.f_instance_number(0.0)) < 3.0))):
			(GM.f_instance_create((-800.0), 0.0, 0.0))
	if ((((GM.f_random(50.0)) < 1.0))):
		if ((((GM.f_instance_number(20.0)) < 2.0))):
			(GM.f_instance_create((-1000.0), 0.0, 20.0))
	if ((((GM.f_random(50.0)) < 1.0))):
		(GM.f_instance_create(GM.room_width, (50.0 + (GM.f_random(150.0))), 23.0))
