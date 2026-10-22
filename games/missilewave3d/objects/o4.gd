extends "res://games/missilewave3d/scripts.gd"
var v_blah = 0.0
var v_image_scale = 0.0
func ev_create():
	(GM.f_action_move(self, "000010000", 3.0, 0.0))
	alarm[int(0.0)] = 15.0
	v_blah = 0.001
	v_image_scale = 0.0
func ev_destroy():
	(GM.f_sound_play(13.0))
	for _w12 in GM.with_list((64.0), self):
		if _w12._dead:
			continue
		_w12.other = self
		GM.vset(_w12, "v_mspeed", GM.vget(_w12, "v_mspeed") + (-0.2))
	for _w13 in GM.with_list((34.0), self):
		if _w13._dead:
			continue
		_w13.other = self
		GM.vset(_w13, "v_mspeed", GM.vget(_w13, "v_mspeed") + (-0.05))
func ev_alarm_1():
	sprite_index = 4.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
	(GM.f_action_move(self, "010000000", (v_blah * 7.5), 0.0))
	alarm[int(0.0)] = 15.0
func ev_alarm_0():
	sprite_index = 5.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
	(GM.f_action_move(self, "000000010", (v_blah * 10.0), 0.0))
	alarm[int(1.0)] = 15.0
func ev_step():
	depth = (-v_image_scale)
	v_blah = v_blah + (v_blah * 0.05)
	v_image_scale = v_blah
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r14 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r15 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w16 in GM.with_list((35.0), self):
		if _w16._dead:
			continue
		_w16.other = self
		GM.vset(_w16, "v_points", GM.vget(_w16, "v_points") + (-1.0))
	for _r17 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w18 in GM.with_list((64.0), self):
			if _w18._dead:
				continue
			_w18.other = self
			GM.vset(_w18, "v_jscore", GM.vget(_w18, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w19 in GM.with_list((34.0), self):
		if _w19._dead:
			continue
		_w19.other = self
		GM.vset(_w19, "v_points", GM.vget(_w19, "v_points") + (-1.0))
	for _w20 in GM.with_list((64.0), self):
		if _w20._dead:
			continue
		_w20.other = self
		GM.vset(_w20, "v_jscore", GM.vget(_w20, "v_jscore") + 1.0)
	for _w21 in GM.with_list((34.0), self):
		if _w21._dead:
			continue
		_w21.other = self
		GM.vset(_w21, "v_jscore", GM.vget(_w21, "v_jscore") + 1.0)
	for _r22 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
