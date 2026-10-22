extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = 0.001
func ev_destroy():
	(GM.f_sound_play(15.0))
	for _w49 in GM.with_list((64.0), self):
		if _w49._dead:
			continue
		_w49.other = self
		GM.vset(_w49, "v_mspeed", GM.vget(_w49, "v_mspeed") + (-0.2))
	for _w50 in GM.with_list((34.0), self):
		if _w50._dead:
			continue
		_w50.other = self
		GM.vset(_w50, "v_mspeed", GM.vget(_w50, "v_mspeed") + (-0.05))
func ev_step():
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.05)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r51 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r52 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w53 in GM.with_list((35.0), self):
		if _w53._dead:
			continue
		_w53.other = self
		GM.vset(_w53, "v_points", GM.vget(_w53, "v_points") + (-1.0))
	for _r54 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w55 in GM.with_list((64.0), self):
			if _w55._dead:
				continue
			_w55.other = self
			GM.vset(_w55, "v_jscore", GM.vget(_w55, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w56 in GM.with_list((34.0), self):
		if _w56._dead:
			continue
		_w56.other = self
		GM.vset(_w56, "v_points", GM.vget(_w56, "v_points") + (-1.0))
	for _w57 in GM.with_list((64.0), self):
		if _w57._dead:
			continue
		_w57.other = self
		GM.vset(_w57, "v_jscore", GM.vget(_w57, "v_jscore") + 1.0)
	for _w58 in GM.with_list((34.0), self):
		if _w58._dead:
			continue
		_w58.other = self
		GM.vset(_w58, "v_jscore", GM.vget(_w58, "v_jscore") + 1.0)
	for _r59 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
