extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = 0.001
	direction = 270.0
func ev_destroy():
	(GM.f_sound_play(14.0))
	for _w121 in GM.with_list((64.0), self):
		if _w121._dead:
			continue
		_w121.other = self
		GM.vset(_w121, "v_mspeed", GM.vget(_w121, "v_mspeed") + (-0.2))
	for _w122 in GM.with_list((34.0), self):
		if _w122._dead:
			continue
		_w122.other = self
		GM.vset(_w122, "v_mspeed", GM.vget(_w122, "v_mspeed") + (-0.05))
func ev_step():
	for _r123 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 100.0))
	speed = (v_image_scale * 4.0)
	depth = (-v_image_scale)
	v_image_scale = v_image_scale + (v_image_scale * 0.06)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r124 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
func ev_col_17():
	for _w125 in GM.with_list((35.0), self):
		if _w125._dead:
			continue
		_w125.other = self
		GM.vset(_w125, "v_points", GM.vget(_w125, "v_points") + (-1.0))
	for _r126 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w127 in GM.with_list((64.0), self):
			if _w127._dead:
				continue
			_w127.other = self
			GM.vset(_w127, "v_jscore", GM.vget(_w127, "v_jscore") + 1.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
