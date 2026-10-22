extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = 0.001
func ev_destroy():
	(GM.f_sound_play(14.0))
	for _w23 in GM.with_list((64.0), self):
		if _w23._dead:
			continue
		_w23.other = self
		GM.vset(_w23, "v_mspeed", GM.vget(_w23, "v_mspeed") + (-0.2))
	for _w24 in GM.with_list((34.0), self):
		if _w24._dead:
			continue
		_w24.other = self
		GM.vset(_w24, "v_mspeed", GM.vget(_w24, "v_mspeed") + (-0.05))
func ev_step():
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.04)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r25 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r26 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w27 in GM.with_list((35.0), self):
		if _w27._dead:
			continue
		_w27.other = self
		GM.vset(_w27, "v_points", GM.vget(_w27, "v_points") + (-1.0))
	for _r28 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w29 in GM.with_list((64.0), self):
			if _w29._dead:
				continue
			_w29.other = self
			GM.vset(_w29, "v_jscore", GM.vget(_w29, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w30 in GM.with_list((34.0), self):
		if _w30._dead:
			continue
		_w30.other = self
		GM.vset(_w30, "v_points", GM.vget(_w30, "v_points") + (-1.0))
	for _w31 in GM.with_list((64.0), self):
		if _w31._dead:
			continue
		_w31.other = self
		GM.vset(_w31, "v_jscore", GM.vget(_w31, "v_jscore") + 1.0)
	for _w32 in GM.with_list((34.0), self):
		if _w32._dead:
			continue
		_w32.other = self
		GM.vset(_w32, "v_jscore", GM.vget(_w32, "v_jscore") + 1.0)
	for _r33 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
