extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = 0.001
func ev_destroy():
	(GM.f_sound_play(12.0))
	for _w92 in GM.with_list((64.0), self):
		if _w92._dead:
			continue
		_w92.other = self
		GM.vset(_w92, "v_mspeed", GM.vget(_w92, "v_mspeed") + (-0.2))
	for _w93 in GM.with_list((34.0), self):
		if _w93._dead:
			continue
		_w93.other = self
		GM.vset(_w93, "v_mspeed", GM.vget(_w93, "v_mspeed") + (-0.05))
func ev_step():
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.025)
	if (((v_image_scale > 0.3))):
		(GM.f_sound_play(0.0))
		for _r94 in range(int((3.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 70.0))
		(GM.f_instance_destroy(self))
	for _r95 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w96 in GM.with_list((35.0), self):
		if _w96._dead:
			continue
		_w96.other = self
		GM.vset(_w96, "v_points", GM.vget(_w96, "v_points") + (-1.0))
	for _r97 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w98 in GM.with_list((64.0), self):
			if _w98._dead:
				continue
			_w98.other = self
			GM.vset(_w98, "v_jscore", GM.vget(_w98, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w99 in GM.with_list((34.0), self):
		if _w99._dead:
			continue
		_w99.other = self
		GM.vset(_w99, "v_points", GM.vget(_w99, "v_points") + (-1.0))
	for _w100 in GM.with_list((64.0), self):
		if _w100._dead:
			continue
		_w100.other = self
		GM.vset(_w100, "v_jscore", GM.vget(_w100, "v_jscore") + 1.0)
	for _w101 in GM.with_list((34.0), self):
		if _w101._dead:
			continue
		_w101.other = self
		GM.vset(_w101, "v_jscore", GM.vget(_w101, "v_jscore") + 1.0)
	for _r102 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
