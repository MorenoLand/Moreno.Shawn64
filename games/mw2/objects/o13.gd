extends "res://games/mw2/scripts.gd"
func ev_alarm_6():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 143.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 180.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 26.0))
func ev_alarm_5():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create(0.0, 560.0, 64.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 83.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 109.0))
func ev_alarm_4():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 45.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 63.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 62.0))
func ev_alarm_3():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 24.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 32.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 24.0))
func ev_alarm_2():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 27.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 28.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 29.0))
func ev_alarm_1():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 12.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 25.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 26.0))
func ev_alarm_0():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 18.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 24.0))
		else:
			(GM.f_instance_create((x + 0.0), (y + 0.0), 19.0))
func ev_step():
	if ((((GM.f_random(GM.G["missils"])) < 1.0))):
		(GM.f_sound_play(9.0))
		if ((((GM.f_random(7.0)) < 1.0))):
			alarm[int(0.0)] = 1.0
		else:
			if ((((GM.f_random(6.0)) < 1.0))):
				alarm[int(1.0)] = 1.0
			else:
				if ((((GM.f_random(5.0)) < 1.0))):
					alarm[int(2.0)] = 1.0
				else:
					if ((((GM.f_random(4.0)) < 1.0))):
						alarm[int(3.0)] = 1.0
					else:
						if ((((GM.f_random(3.0)) < 1.0))):
							alarm[int(4.0)] = 1.0
						else:
							if ((((GM.f_random(2.0)) < 1.0))):
								alarm[int(5.0)] = 1.0
							else:
								alarm[int(6.0)] = 1.0
	if (((absf(GM.G["doom"] - 1.0) < 0.00001))):
		(GM.f_instance_destroy(self))
