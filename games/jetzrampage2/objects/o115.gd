extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
var v_left1 = 0.0
var v_mypower = 0.0
var v_right1 = 0.0
var v_shotready = 0.0
func ev_create():
	v_mypower = 2.0
	v_alive = 1.0
	v_left1 = 0.0
	v_right1 = 0.0
	(GM.f_instance_create((x + 15.0), (y + 15.0), 128.0))
	v_shotready = 1.0
	if (((absf((GM.f_instance_number(131.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 131.0))
func ev_destroy():
	for _w66 in GM.with_list((128.0), self):
		if _w66._dead:
			continue
		_w66.other = self
		(GM.f_instance_destroy(_w66))
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	if (not (((x < (GM.vb(0.0, "x") + 300.0))))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 242.0))
		for _w67 in GM.with_list((128.0), self):
			if _w67._dead:
				continue
			_w67.other = self
			(GM.f_instance_destroy(_w67))
		(GM.f_instance_destroy(self))
	if (not (((x > (GM.vb(0.0, "x") - 300.0))))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 242.0))
		for _w68 in GM.with_list((128.0), self):
			if _w68._dead:
				continue
			_w68.other = self
			(GM.f_instance_destroy(_w68))
		(GM.f_instance_destroy(self))
	if ((((GM.f_instance_number(115.0)) > 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 242.0))
		for _w69 in GM.with_list((128.0), self):
			if _w69._dead:
				continue
			_w69.other = self
			(GM.f_instance_destroy(_w69))
		(GM.f_instance_destroy(self))
	if (not ((((GM.f_distance_to_object(self, 0.0)) < 600.0)))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 242.0))
		for _w70 in GM.with_list((128.0), self):
			if _w70._dead:
				continue
			_w70.other = self
			(GM.f_instance_destroy(_w70))
		(GM.f_instance_destroy(self))
	if ((((GM.f_random(10.0)) < 1.0))):
		if (((absf(v_shotready - 1.0) < 0.00001))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 126.0))
			v_shotready = 0.0
			alarm[int(0.0)] = 5.0
func ev_col_103():
	(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
	for _r71 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 134.0))
	for _w72 in GM.with_list((128.0), self):
		if _w72._dead:
			continue
		_w72.other = self
		(GM.f_instance_destroy(_w72))
	(GM.f_instance_destroy(self))
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 105.0))
		for _r73 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 134.0))
		for _w74 in GM.with_list((128.0), self):
			if _w74._dead:
				continue
			_w74.other = self
			(GM.f_instance_destroy(_w74))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(12.0))
		for _r75 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_draw():
	if (((GM.vb(0.0, "x") > x))):
		(GM.f_draw_sprite(128.0, 0.0, (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(127.0, 2.0, (x + 0.0), (y + 0.0)))
