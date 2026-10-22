extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_sound_play(29.0))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create(((x + (-10.0)) + (GM.f_random(50.0))), ((y + (-10.0)) + (GM.f_random(50.0))), 8.0))
func ev_other_7():
	if (((GM.G["saylevel"] < 2.0))):
		if (((absf((GM.f_instance_number(113.0)) - 0.0) < 0.00001))):
			if ((((GM.f_random(2.0)) < 1.0))):
				(GM.f_instance_create(((GM.vb(7.0, "x") + 450.0) + (GM.f_random(400.0))), 480.0, 113.0))
			else:
				(GM.f_instance_create(((GM.vb(7.0, "x") - 450.0) - (GM.f_random(400.0))), 480.0, 113.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 117.0))
	for _r114 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
	for _r115 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	for _r116 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	(GM.f_instance_destroy(self))
