extends "res://games/galaxy_arcade_2/scripts.gd"
var v_invis = 0.0
var v_woopdy = 0.0
var v_woopy = 0.0
var v_wow = 0.0
func ev_create():
	v_invis = 0.0
	v_woopdy = 0.0
	alarm[int(1.0)] = 4.0
	gravity_direction = 0.0
	gravity = 2.0
func ev_alarm_2():
	v_woopdy = 0.0
	alarm[int(1.0)] = 4.0
func ev_alarm_1():
	v_woopdy = 1.0
	alarm[int(2.0)] = 4.0
func ev_alarm_0():
	v_invis = 0.0
func ev_step():
	if (((y > 515.0))):
		y = 514.0
	if (((y < 0.0))):
		y = 1.0
	if (((x > GM.room_width))):
		x = xstart
		y = ystart
	for _r190 in range(int((10.0))):
		(GM.f_instance_create((x + 30.0), (y + 35.0), 1240.0))
	if (((speed > 20.0))):
		speed = 19.9
	if (not ((((GM.f_keyboard_check(37.0)))) >= 0.5)):
		if (not ((((GM.f_keyboard_check(39.0)))) >= 0.5)):
			for _w191 in GM.with_list((1229.0), self):
				if _w191._dead:
					continue
				_w191.other = self
				(GM.f_instance_destroy(_w191))
	v_woopy = direction
	if ((((GM.f_random(50.0)) < 1.0))):
		(GM.f_instance_create((800.0 + GM.view_xview[int(0.0)]), (GM.f_random(477.0)), 1235.0))
	if ((((GM.f_random(12.0)) < 1.0))):
		(GM.f_instance_create((900.0 + GM.view_xview[int(0.0)]), (GM.f_random(518.0)), 1237.0))
	if ((((GM.f_random(10.0)) < 1.0))):
		(GM.f_instance_create((900.0 + GM.view_xview[int(0.0)]), (GM.f_random(518.0)), 1238.0))
func ev_col_1237():
	if (((absf(v_invis - 0.0) < 0.00001))):
		for _w192 in GM.with_list((1241.0), self):
			if _w192._dead:
				continue
			_w192.other = self
			GM.health = GM.health + (-20.0)
		(GM.f_sound_play(360.0))
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_motion_add(self, 90.0, (speed / 2.0)))
		else:
			(GM.f_motion_add(self, 270.0, (speed / 2.0)))
		v_invis = 1.0
		alarm[int(0.0)] = 20.0
func ev_col_1235():
	v_invis = 0.0
	(GM.f_motion_add(self, 90.0, 3.5))
func ev_col_1232():
	for _w193 in GM.with_list((1229.0), self):
		if _w193._dead:
			continue
		_w193.other = self
		(GM.f_instance_destroy(_w193))
	(GM.f_instance_create((x + 0.0), (y + 59.0), 1230.0))
	v_woopy = direction
	v_wow = 0.0
	gravity_direction = 270.0
	gravity = 0.5
	alarm[int(0.0)] = 20.0
	GM.view_object[int(0.0)] = 1231.0
	(GM.f_instance_create(0.0, 0.0, 1234.0))
	(GM.f_instance_change(self, 1231.0, 0.0))
func ev_key_39():
	if (direction > 0.0):
		direction = direction - ((360.0 / image_number) / 2.0)
	else:
		direction = (360.0 - (360.0 / image_number))
	for _r194 in range(int((5.0))):
		(GM.f_instance_create((x + 30.0), (y + 30.0), 1228.0))
	if (((absf((GM.f_instance_number(1229.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 1229.0))
func ev_key_37():
	if (((absf((GM.f_instance_number(1229.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 1229.0))
	for _r195 in range(int((5.0))):
		(GM.f_instance_create((x + 30.0), (y + 30.0), 1227.0))
	direction = direction + ((360.0 / image_number) / 2.0)
func ev_draw():
	if (((absf(v_invis - 0.0) < 0.00001))):
		(GM.f_draw_sprite(1198.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	else:
		if (((absf(v_woopdy - 1.0) < 0.00001))):
			(GM.f_draw_sprite(1198.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
