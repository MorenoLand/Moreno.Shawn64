extends "res://games/bubblegum/scripts.gd"
var v_background = 0.0
var v_boom = 0.0
var v_mypower = 0.0
var v_poop = 0.0
func ev_create():
	(GM.f_sound_play(31.0))
	(GM.f_action_move(self, "000001000", 2.0, 0.0))
	for _w51 in GM.with_list((0.0), self):
		if _w51._dead:
			continue
		_w51.other = self
		_w51.x = 32.0
		_w51.y = 416.0
	v_poop = 1.0
	v_mypower = 20.0
func ev_alarm_1():
	sprite_index = 51.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_step():
	if (((v_mypower < 1.0))):
		GM.aset(v_background, 1.0, 6.0)
		GM.aset(v_background, 2.0, 8.0)
		for _r52 in range(int((300.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
		(GM.f_sound_play(31.0))
		(GM.f_sound_play(4.0))
		(GM.f_instance_create(0.0, 0.0, 95.0))
		(GM.f_instance_destroy(self))
	if (((absf((GM.f_instance_number(69.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(70.0)) - 0.0) < 0.00001))):
			if (((absf(v_poop - 1.0) < 0.00001))):
				v_boom = 1.0
				(GM.f_sound_play(31.0))
				(GM.f_instance_change(self, 73.0, 0.0))
			if ((((GM.f_random(25.0)) < 1.0))):
				if (((vspeed < 1.0))):
					(GM.f_motion_add(self, 270.0, 7.0))
			if ((((GM.f_random(50.0)) < 1.0))):
				(GM.f_instance_create((x + 60.0), (y + 80.0), 74.0))
	if not (((absf(y - ystart) < 0.00001))):
		(GM.f_motion_add(self, 90.0, 0.3))
func ev_col_52():
	(GM.f_sound_play(22.0))
	v_mypower = v_mypower + (-1.0)
	sprite_index = 55.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
	alarm[int(1.0)] = 4.0
func ev_col_2():
	hspeed = (-hspeed)
func ev_col_1():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
