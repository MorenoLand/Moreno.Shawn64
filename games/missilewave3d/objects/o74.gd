extends "res://games/missilewave3d/scripts.gd"
var v_randoom = 0.0
func ev_create():
	v_randoom = (GM.f_round((GM.f_random(4.0))))
	(GM.f_sound_play(8.0))
	alarm[int(1.0)] = 15.0
	alarm[int(0.0)] = 100.0
func ev_alarm_1():
	if ((absf(v_randoom - 1.0) < 0.00001)):
		(GM.f_instance_create(350.0, 250.0, 4.0))
	else:
		if ((absf(v_randoom - 2.0) < 0.00001)):
			(GM.f_instance_create(350.0, 250.0, 43.0))
		else:
			if ((absf(v_randoom - 3.0) < 0.00001)):
				(GM.f_instance_create(350.0, 250.0, 33.0))
			else:
				if ((absf(v_randoom - 4.0) < 0.00001)):
					(GM.f_instance_create(350.0, 250.0, 1.0))
	alarm[int(1.0)] = 15.0
func ev_alarm_0():
	for _w114 in GM.with_list((34.0), self):
		if _w114._dead:
			continue
		_w114.other = self
		GM.vset(_w114, "v_level", GM.vget(_w114, "v_level") + 1.0)
	(GM.f_instance_destroy(self))
