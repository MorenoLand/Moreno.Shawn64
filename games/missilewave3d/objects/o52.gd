extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = 0.001
func ev_destroy():
	(GM.f_sound_play(14.0))
	for _w70 in GM.with_list((64.0), self):
		if _w70._dead:
			continue
		_w70.other = self
		GM.vset(_w70, "v_mspeed", GM.vget(_w70, "v_mspeed") + (-0.2))
	for _w71 in GM.with_list((34.0), self):
		if _w71._dead:
			continue
		_w71.other = self
		GM.vset(_w71, "v_mspeed", GM.vget(_w71, "v_mspeed") + (-0.05))
func ev_step():
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.06)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r72 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 57.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r73 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w74 in GM.with_list((35.0), self):
		if _w74._dead:
			continue
		_w74.other = self
		GM.vset(_w74, "v_points", GM.vget(_w74, "v_points") + (-1.0))
	for _r75 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 57.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w76 in GM.with_list((64.0), self):
			if _w76._dead:
				continue
			_w76.other = self
			GM.vset(_w76, "v_jscore", GM.vget(_w76, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w77 in GM.with_list((34.0), self):
		if _w77._dead:
			continue
		_w77.other = self
		GM.vset(_w77, "v_points", GM.vget(_w77, "v_points") + (-1.0))
	for _w78 in GM.with_list((64.0), self):
		if _w78._dead:
			continue
		_w78.other = self
		GM.vset(_w78, "v_jscore", GM.vget(_w78, "v_jscore") + 1.0)
	for _w79 in GM.with_list((34.0), self):
		if _w79._dead:
			continue
		_w79.other = self
		GM.vset(_w79, "v_jscore", GM.vget(_w79, "v_jscore") + 1.0)
	for _r80 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 57.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
