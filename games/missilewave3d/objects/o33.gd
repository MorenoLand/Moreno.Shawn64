extends "res://games/missilewave3d/scripts.gd"
var v_blah = 0.0
var v_image_scale = 0.0
var v_left1 = 0.0
var v_right1 = 0.0
func ev_create():
	v_blah = 0.001
	v_image_scale = 0.0
func ev_destroy():
	(GM.f_sound_play(15.0))
	for _w60 in GM.with_list((64.0), self):
		if _w60._dead:
			continue
		_w60.other = self
		GM.vset(_w60, "v_mspeed", GM.vget(_w60, "v_mspeed") + (-0.2))
	for _w61 in GM.with_list((34.0), self):
		if _w61._dead:
			continue
		_w61.other = self
		GM.vset(_w61, "v_mspeed", GM.vget(_w61, "v_mspeed") + (-0.05))
func ev_step():
	if (((hspeed > (v_image_scale * 25.0)))):
		sprite_index = 32.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		v_right1 = 0.0
		v_left1 = 1.0
	if (((hspeed < ((-v_image_scale) * 25.0)))):
		sprite_index = 31.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		v_right1 = 1.0
		v_left1 = 0.0
	if (((absf(v_right1 - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 0.0, (v_image_scale * 3.0)))
	else:
		(GM.f_motion_add(self, 180.0, (v_image_scale * 3.0)))
	depth = (-v_image_scale)
	v_blah = v_blah + (v_blah * 0.05)
	v_image_scale = v_blah
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r62 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 45.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r63 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _r64 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 45.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w65 in GM.with_list((64.0), self):
			if _w65._dead:
				continue
			_w65.other = self
			GM.vset(_w65, "v_jscore", GM.vget(_w65, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w66 in GM.with_list((34.0), self):
		if _w66._dead:
			continue
		_w66.other = self
		GM.vset(_w66, "v_points", GM.vget(_w66, "v_points") + (-1.0))
	for _w67 in GM.with_list((64.0), self):
		if _w67._dead:
			continue
		_w67.other = self
		GM.vset(_w67, "v_jscore", GM.vget(_w67, "v_jscore") + 1.0)
	for _w68 in GM.with_list((34.0), self):
		if _w68._dead:
			continue
		_w68.other = self
		GM.vset(_w68, "v_jscore", GM.vget(_w68, "v_jscore") + 1.0)
	for _r69 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 45.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
