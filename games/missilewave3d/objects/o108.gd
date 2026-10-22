extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	(GM.f_sound_play(19.0))
	v_image_scale = 0.1
func ev_destroy():
	(GM.f_sound_play(11.0))
	for _w134 in GM.with_list((64.0), self):
		if _w134._dead:
			continue
		_w134.other = self
		GM.vset(_w134, "v_mspeed", GM.vget(_w134, "v_mspeed") + (-0.2))
	for _w135 in GM.with_list((34.0), self):
		if _w135._dead:
			continue
		_w135.other = self
		GM.vset(_w135, "v_mspeed", GM.vget(_w135, "v_mspeed") + (-0.05))
func ev_step():
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		for _r136 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 57.0))
		(GM.f_instance_destroy(self))
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.04)
	for _r137 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w138 in GM.with_list((35.0), self):
		if _w138._dead:
			continue
		_w138.other = self
		GM.vset(_w138, "v_points", GM.vget(_w138, "v_points") + (-1.0))
	for _r139 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w140 in GM.with_list((64.0), self):
			if _w140._dead:
				continue
			_w140.other = self
			GM.vset(_w140, "v_jscore", GM.vget(_w140, "v_jscore") + 1.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
