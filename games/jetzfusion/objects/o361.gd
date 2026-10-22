extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
var v_mypower = 0.0
var v_poom = 0.0
func ev_create():
	v_mypower = 5.0
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	if ((absf(GM.room - 6.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(5.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			if ((absf(GM.vget(347.0, "v_s0") - 1.0) < 0.00001)):
				v_image_single = 0.0
				GM.vset(347.0, "v_s0", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 1.0) < 0.00001)):
			if ((absf(GM.vget(347.0, "v_s1") - 1.0) < 0.00001)):
				v_image_single = 1.0
				GM.vset(347.0, "v_s1", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 2.0) < 0.00001)):
			if ((absf(GM.vget(347.0, "v_s2") - 1.0) < 0.00001)):
				v_image_single = 2.0
				GM.vset(347.0, "v_s2", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 3.0) < 0.00001)):
			if ((absf(GM.vget(347.0, "v_s3") - 1.0) < 0.00001)):
				v_image_single = 3.0
				GM.vset(347.0, "v_s3", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 4.0) < 0.00001)):
			if ((absf(GM.vget(347.0, "v_s4") - 1.0) < 0.00001)):
				v_image_single = 4.0
				GM.vset(347.0, "v_s4", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 5.0) < 0.00001)):
			if ((absf(GM.vget(347.0, "v_s5") - 1.0) < 0.00001)):
				v_image_single = 5.0
				GM.vset(347.0, "v_s5", 0.0)
			else:
				(GM.f_instance_create(x, y, 361.0))
				(GM.f_instance_destroy(self))
	else:
		v_poom = (GM.f_round((GM.f_random(5.0))))
		if ((absf(v_poom - 0.0) < 0.00001)):
			if ((absf(GM.vget(406.0, "v_s0") - 1.0) < 0.00001)):
				v_image_single = 0.0
				GM.vset(406.0, "v_s0", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 1.0) < 0.00001)):
			if ((absf(GM.vget(406.0, "v_s1") - 1.0) < 0.00001)):
				v_image_single = 1.0
				GM.vset(406.0, "v_s1", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 2.0) < 0.00001)):
			if ((absf(GM.vget(406.0, "v_s2") - 1.0) < 0.00001)):
				v_image_single = 2.0
				GM.vset(406.0, "v_s2", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 3.0) < 0.00001)):
			if ((absf(GM.vget(406.0, "v_s3") - 1.0) < 0.00001)):
				v_image_single = 3.0
				GM.vset(406.0, "v_s3", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 4.0) < 0.00001)):
			if ((absf(GM.vget(406.0, "v_s4") - 1.0) < 0.00001)):
				v_image_single = 4.0
				GM.vset(406.0, "v_s4", 0.0)
			else:
				v_poom = v_poom + 1.0
		if ((absf(v_poom - 5.0) < 0.00001)):
			if ((absf(GM.vget(406.0, "v_s5") - 1.0) < 0.00001)):
				v_image_single = 5.0
				GM.vset(406.0, "v_s5", 0.0)
			else:
				(GM.f_instance_create(x, y, 361.0))
				(GM.f_instance_destroy(self))
func ev_col_53():
	if (((absf(v_mypower - 2.0) < 0.00001))):
		(GM.f_sound_play(36.0))
		for _r505 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		for _r506 in range(int((80.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(34.0))
		for _r507 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	v_mypower = v_mypower + (-1.0)
