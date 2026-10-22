extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = 0.001
func ev_destroy():
	(GM.f_sound_play(5.0))
	for _w36 in GM.with_list((64.0), self):
		if _w36._dead:
			continue
		_w36.other = self
		GM.vset(_w36, "v_mspeed", GM.vget(_w36, "v_mspeed") + (-0.2))
	for _w37 in GM.with_list((34.0), self):
		if _w37._dead:
			continue
		_w37.other = self
		GM.vset(_w37, "v_mspeed", GM.vget(_w37, "v_mspeed") + (-0.05))
func ev_step():
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.05)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r38 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r39 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w40 in GM.with_list((35.0), self):
		if _w40._dead:
			continue
		_w40.other = self
		GM.vset(_w40, "v_points", GM.vget(_w40, "v_points") + (-1.0))
	for _r41 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w42 in GM.with_list((64.0), self):
			if _w42._dead:
				continue
			_w42.other = self
			GM.vset(_w42, "v_jscore", GM.vget(_w42, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w43 in GM.with_list((34.0), self):
		if _w43._dead:
			continue
		_w43.other = self
		GM.vset(_w43, "v_points", GM.vget(_w43, "v_points") + (-1.0))
	for _w44 in GM.with_list((64.0), self):
		if _w44._dead:
			continue
		_w44.other = self
		GM.vset(_w44, "v_jscore", GM.vget(_w44, "v_jscore") + 1.0)
	for _w45 in GM.with_list((34.0), self):
		if _w45._dead:
			continue
		_w45.other = self
		GM.vset(_w45, "v_jscore", GM.vget(_w45, "v_jscore") + 1.0)
	for _r46 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
