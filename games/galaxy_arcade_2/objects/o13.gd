extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_instance_create(0.0, ((GM.f_random(350.0)) + 100.0), 20.0))
	else:
		(GM.f_instance_create(0.0, ((GM.f_random(350.0)) + 100.0), 23.0))
	alarm[int(0.0)] = 500.0
func ev_step():
	if ((((GM.f_random(GM.G["speedy"])) < 1.0))):
		(GM.f_instance_create(0.0, ((GM.f_random(350.0)) + 100.0), 14.0))
	if (((absf((GM.f_instance_number(14.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, ((GM.f_random(350.0)) + 100.0), 14.0))
	if (((GM.G["deaths"] < 1.0))):
		if (((GM.G["pts"] > GM.G["srhigh"]))):
			(GM.f_sound_play(131.0))
			GM.G["srhigh"] = GM.G["pts"]
		(GM.f_room_goto(1.0))
