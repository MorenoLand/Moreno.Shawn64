extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
var v_image_single = 0.0
func ev_create():
	v_image_scale = 0.001
	speed = 8.0
func ev_destroy():
	(GM.f_sound_play(13.0))
	for _w1 in GM.with_list((64.0), self):
		if _w1._dead:
			continue
		_w1.other = self
		GM.vset(_w1, "v_mspeed", GM.vget(_w1, "v_mspeed") + (-0.2))
	for _w2 in GM.with_list((34.0), self):
		if _w2._dead:
			continue
		_w2.other = self
		GM.vset(_w2, "v_mspeed", GM.vget(_w2, "v_mspeed") + (-0.05))
func ev_step():
	for _r3 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 3.0))
	v_image_scale = v_image_scale + (v_image_scale * 0.05)
	depth = (-v_image_scale)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r4 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 14.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	direction = direction + (v_image_single * 10.0)
func ev_col_17():
	for _w5 in GM.with_list((35.0), self):
		if _w5._dead:
			continue
		_w5.other = self
		GM.vset(_w5, "v_points", GM.vget(_w5, "v_points") + (-1.0))
	for _r6 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 14.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w7 in GM.with_list((64.0), self):
			if _w7._dead:
				continue
			_w7.other = self
			GM.vset(_w7, "v_jscore", GM.vget(_w7, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w8 in GM.with_list((34.0), self):
		if _w8._dead:
			continue
		_w8.other = self
		GM.vset(_w8, "v_points", GM.vget(_w8, "v_points") + (-1.0))
	for _w9 in GM.with_list((64.0), self):
		if _w9._dead:
			continue
		_w9.other = self
		GM.vset(_w9, "v_jscore", GM.vget(_w9, "v_jscore") + 1.0)
	for _w10 in GM.with_list((34.0), self):
		if _w10._dead:
			continue
		_w10.other = self
		GM.vset(_w10, "v_jscore", GM.vget(_w10, "v_jscore") + 1.0)
	for _r11 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 14.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
