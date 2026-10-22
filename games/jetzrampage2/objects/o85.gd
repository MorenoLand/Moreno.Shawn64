extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
var v_boom = 0.0
var v_door = 0.0
var v_image_single = 0.0
var v_mypower = 0.0
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = y
	v_mypower = 2.0
	v_alive = 1.0
	v_boom = (GM.f_round(((GM.f_random(15.0)) + 1.0)))
	if ((absf(v_boom - 1.0) < 0.00001)):
		sprite_index = 84.0
		hspeed = (-3.0)
	if ((absf(v_boom - 2.0) < 0.00001)):
		sprite_index = 83.0
		hspeed = 3.0
	if ((absf(v_boom - 3.0) < 0.00001)):
		sprite_index = 85.0
		hspeed = (-3.0)
	if ((absf(v_boom - 4.0) < 0.00001)):
		sprite_index = 82.0
		hspeed = 3.0
	if ((absf(v_boom - 5.0) < 0.00001)):
		sprite_index = 216.0
		hspeed = (-3.0)
	if ((absf(v_boom - 6.0) < 0.00001)):
		sprite_index = 217.0
		hspeed = 3.0
	if ((absf(v_boom - 7.0) < 0.00001)):
		sprite_index = 218.0
		hspeed = (-3.0)
	if ((absf(v_boom - 8.0) < 0.00001)):
		sprite_index = 219.0
		hspeed = 3.0
	if ((absf(v_boom - 9.0) < 0.00001)):
		sprite_index = 242.0
		hspeed = (-3.0)
	if ((absf(v_boom - 10.0) < 0.00001)):
		sprite_index = 243.0
		hspeed = 3.0
	if ((absf(v_boom - 11.0) < 0.00001)):
		sprite_index = 246.0
		hspeed = (-3.0)
	if ((absf(v_boom - 12.0) < 0.00001)):
		sprite_index = 249.0
		hspeed = 3.0
	if ((absf(v_boom - 13.0) < 0.00001)):
		sprite_index = 254.0
		hspeed = (-3.0)
	if ((absf(v_boom - 14.0) < 0.00001)):
		sprite_index = 253.0
		hspeed = 3.0
	if ((absf(v_boom - 15.0) < 0.00001)):
		sprite_index = 251.0
		hspeed = (-3.0)
	if ((absf(v_boom - 16.0) < 0.00001)):
		sprite_index = 252.0
		hspeed = 3.0
	v_door = 0.0
	alarm[int(0.0)] = 25.0
func ev_alarm_3():
	(GM.f_instance_create((-39.0), y, 231.0))
	GM.vset(476.0, "v_bdead", GM.vget(476.0, "v_bdead") - 1.0)
	if (((hspeed > 0.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 172.0))
	else:
		(GM.f_instance_create((x + 0.0), (y + 0.0), 171.0))
	(GM.f_instance_destroy(self))
func ev_alarm_2():
	(GM.f_instance_create((x + (-3.0)), (y + (-3.0)), 169.0))
	alarm[int(2.0)] = 1.0
func ev_alarm_1():
	if (((absf(hspeed - 6.0) < 0.00001))):
		hspeed = 3.0
	if (((absf(hspeed - (-6.0)) < 0.00001))):
		hspeed = (-3.0)
func ev_alarm_0():
	v_door = 1.0
func ev_col_243():
	if (((absf(hspeed - 3.0) < 0.00001))):
		hspeed = 6.0
	if (((absf(hspeed - (-3.0)) < 0.00001))):
		hspeed = (-6.0)
	alarm[int(1.0)] = 50.0
func ev_col_233():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
		(self.script_random_die(0.0, 0.0, 0.0, 0.0, 0.0))
		x = (x - 10.0)
		y = y
		(GM.f_instance_create(0.0, 0.0, 130.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
		for _r40 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
		if ((absf(direction - 0.0) < 0.00001)):
			v_image_single = 0.0
		else:
			v_image_single = 1.0
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_202():
	if (((x > (GM.vb(self.other, "x") + 38.0)))):
		if (((x < (GM.vb(self.other, "x") + 42.0)))):
			if ((((GM.f_random(5.0)) < 1.0))):
				(GM.f_instance_create((GM.vb(self.other, "x") + 40.0), (GM.vb(self.other, "y") + 40.0), 232.0))
				(GM.f_instance_create((GM.vb(self.other, "x") + 40.0), y, 230.0))
				(GM.f_instance_destroy(self))
func ev_col_166():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
		(self.script_random_die(0.0, 0.0, 0.0, 0.0, 0.0))
		if (((absf(hspeed - 3.0) < 0.00001))):
			hspeed = 8.0
		if (((absf(hspeed - (-3.0)) < 0.00001))):
			hspeed = (-8.0)
		alarm[int(2.0)] = 1.0
		alarm[int(3.0)] = 50.0
		v_alive = 0.0
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
		(GM.f_instance_create((-39.0), y, 231.0))
		(self.script_random_die(0.0, 0.0, 0.0, 0.0, 0.0))
		x = (x - 10.0)
		y = y
		for _r41 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
		if ((absf(direction - 0.0) < 0.00001)):
			v_image_single = 0.0
		else:
			v_image_single = 1.0
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		v_mypower = v_mypower + (-1.0)
		if (((v_mypower > 0.0))):
			(self.script_random_die(0.0, 0.0, 0.0, 0.0, 0.0))
		if (((absf(v_mypower - 0.0) < 0.00001))):
			(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
			(GM.f_instance_create((-39.0), y, 231.0))
			(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
			x = (x - 10.0)
			y = y
			for _r42 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
			if ((absf(direction - 0.0) < 0.00001)):
				v_image_single = 0.0
			else:
				v_image_single = 1.0
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
		else:
			(GM.f_sound_play(12.0))
			for _r43 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
