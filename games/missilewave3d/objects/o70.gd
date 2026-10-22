extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), (2.0 + (GM.f_random(3.0)))))
	v_image_scale = 0.3
func ev_destroy():
	(GM.f_sound_play(11.0))
	for _w103 in GM.with_list((64.0), self):
		if _w103._dead:
			continue
		_w103.other = self
		GM.vset(_w103, "v_mspeed", GM.vget(_w103, "v_mspeed") + (-0.2))
	for _w104 in GM.with_list((34.0), self):
		if _w104._dead:
			continue
		_w104.other = self
		GM.vset(_w104, "v_mspeed", GM.vget(_w104, "v_mspeed") + (-0.05))
func ev_step():
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.05)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r105 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 71.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r106 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w107 in GM.with_list((35.0), self):
		if _w107._dead:
			continue
		_w107.other = self
		GM.vset(_w107, "v_points", GM.vget(_w107, "v_points") + (-1.0))
	for _r108 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w109 in GM.with_list((64.0), self):
			if _w109._dead:
				continue
			_w109.other = self
			GM.vset(_w109, "v_jscore", GM.vget(_w109, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w110 in GM.with_list((34.0), self):
		if _w110._dead:
			continue
		_w110.other = self
		GM.vset(_w110, "v_points", GM.vget(_w110, "v_points") + (-1.0))
	for _w111 in GM.with_list((64.0), self):
		if _w111._dead:
			continue
		_w111.other = self
		GM.vset(_w111, "v_jscore", GM.vget(_w111, "v_jscore") + 1.0)
	for _w112 in GM.with_list((34.0), self):
		if _w112._dead:
			continue
		_w112.other = self
		GM.vset(_w112, "v_jscore", GM.vget(_w112, "v_jscore") + 1.0)
	for _r113 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
