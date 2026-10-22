extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_mypower = 0.0
var v_peter = 0.0
var v_wee = 0.0
func ev_create():
	v_peter = y
	v_mypower = 4.0
func ev_col_656():
	if ((absf(gravity - 0.0) < 0.00001)):
		(GM.f_sound_play(178.0))
		for _r388 in range(int((15.0))):
			(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
		gravity_direction = 270.0
		(GM.f_sound_play(122.0))
		gravity = 0.5
		for _r389 in range(int((20.0))):
			v_peter = v_peter + 40.0
			(GM.f_instance_create(x, v_peter, 635.0))
	(GM.f_sound_play(127.0))
	for _w390 in GM.with_list((self.other), self):
		if _w390._dead:
			continue
		_w390.other = self
		(GM.f_instance_destroy(_w390))
func ev_col_635():
	if ((absf(gravity - 0.0) < 0.00001)):
		(GM.f_sound_play(178.0))
		for _r391 in range(int((15.0))):
			(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
		gravity_direction = 270.0
		(GM.f_sound_play(122.0))
		gravity = 0.5
		for _r392 in range(int((20.0))):
			v_peter = v_peter + 40.0
			(GM.f_instance_create(x, v_peter, 635.0))
	(GM.f_sound_play(127.0))
func ev_col_604():
	(GM.f_sound_play(190.0))
	(GM.f_sound_stop(178.0))
	for _r393 in range(int((100.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
		GM.vsetb(v_wee, "direction", (10.0 + (GM.f_random(160.0))))
		GM.vsetb(v_wee, "speed", (GM.f_random(15.0)))
		GM.vset(v_wee, "v_yyy", GM.room_height)
	(GM.f_sound_play(130.0))
	for _r394 in range(int((20.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r395 in range(int((50.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random(15.0))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r396 in range(int((5.0))):
			(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		if ((absf(gravity - 0.0) < 0.00001)):
			(GM.f_sound_play(178.0))
			for _r397 in range(int((15.0))):
				(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
			gravity_direction = 270.0
			(GM.f_sound_play(122.0))
			gravity = 0.5
			for _r398 in range(int((20.0))):
				v_peter = v_peter + 40.0
				(GM.f_instance_create(x, v_peter, 635.0))
	(GM.f_sound_play(127.0))
	for _w399 in GM.with_list((self.other), self):
		if _w399._dead:
			continue
		_w399.other = self
		(GM.f_instance_destroy(_w399))
func ev_other_10():
	(GM.f_sound_play(130.0))
	for _r400 in range(int((20.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r401 in range(int((10.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random(15.0))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
