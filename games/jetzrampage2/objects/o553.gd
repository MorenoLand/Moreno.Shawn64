extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
var v_door = 0.0
var v_mypower = 0.0
func ev_create():
	vspeed = (-(GM.f_random(10.0)))
	v_mypower = 5.0
	v_alive = 1.0
	hspeed = 10.0
	v_door = 0.0
	alarm[int(0.0)] = 25.0
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_1():
	if (((absf(hspeed - 6.0) < 0.00001))):
		hspeed = 3.0
	if (((absf(hspeed - (-6.0)) < 0.00001))):
		hspeed = (-3.0)
func ev_step():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if ((((GM.f_random(50.0)) < 1.0))):
			if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 16.0))))) >= 0.5:
				vspeed = (-10.0)
		if ((((GM.f_random(25.0)) < 1.0))):
			if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 16.0))))) >= 0.5:
				hspeed = (-hspeed)
		if (((hspeed > 0.0))):
			sprite_index = 261.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			sprite_index = 262.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
func ev_col_16():
	vspeed = 0.0
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		v_mypower = v_mypower + (-1.0)
		if (((v_mypower > 0.0))):
			(GM.f_sound_play(86.0))
		if (((absf(v_mypower - 0.0) < 0.00001))):
			for _r250 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
			(GM.f_instance_destroy(self))
		else:
			(GM.f_sound_play(12.0))
			for _r251 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_other_0():
	y = y + (-10.0)
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
