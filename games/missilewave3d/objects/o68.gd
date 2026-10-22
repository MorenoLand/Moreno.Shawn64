extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	(GM.f_action_move(self, "000001000", 8.0, 0.0))
	v_image_scale = 0.001
func ev_destroy():
	(GM.f_sound_play(5.0))
	for _w81 in GM.with_list((64.0), self):
		if _w81._dead:
			continue
		_w81.other = self
		GM.vset(_w81, "v_mspeed", GM.vget(_w81, "v_mspeed") + (-0.2))
	for _w82 in GM.with_list((34.0), self):
		if _w82._dead:
			continue
		_w82.other = self
		GM.vset(_w82, "v_mspeed", GM.vget(_w82, "v_mspeed") + (-0.05))
func ev_step():
	speed = (v_image_scale * 15.0)
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.05)
	if (((v_image_scale > 3.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r83 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r84 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	for _w85 in GM.with_list((35.0), self):
		if _w85._dead:
			continue
		_w85.other = self
		GM.vset(_w85, "v_points", GM.vget(_w85, "v_points") + (-1.0))
	for _r86 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w87 in GM.with_list((64.0), self):
			if _w87._dead:
				continue
			_w87.other = self
			GM.vset(_w87, "v_jscore", GM.vget(_w87, "v_jscore") + 1.0)
func ev_mouse_4():
	for _w88 in GM.with_list((34.0), self):
		if _w88._dead:
			continue
		_w88.other = self
		GM.vset(_w88, "v_points", GM.vget(_w88, "v_points") + (-1.0))
	for _w89 in GM.with_list((64.0), self):
		if _w89._dead:
			continue
		_w89.other = self
		GM.vset(_w89, "v_jscore", GM.vget(_w89, "v_jscore") + 1.0)
	for _w90 in GM.with_list((34.0), self):
		if _w90._dead:
			continue
		_w90.other = self
		GM.vset(_w90, "v_jscore", GM.vget(_w90, "v_jscore") + 1.0)
	for _r91 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 14.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
