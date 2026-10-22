extends "res://games/missilewave3d/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = 0.001
func ev_destroy():
	(GM.f_sound_play(14.0))
func ev_step():
	depth = (-v_image_scale)
	v_image_scale = (v_image_scale * 1.04)
	if (((v_image_scale > 4.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 56.0))
		for _r115 in range(int((100.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
		(GM.f_instance_create(0.0, 0.0, 26.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 9.0))
		(GM.f_sound_play(6.0))
		(GM.f_instance_destroy(self))
	for _r116 in range(int(((v_image_scale * 3.0)))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 5.0))
func ev_col_17():
	(GM.f_instance_create((GM.mouse_x - 43.5), (GM.mouse_y - 43.5), 85.0))
	for _r117 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
	if (((absf(GM.room - 4.0) < 0.00001))):
		for _w118 in GM.with_list((64.0), self):
			if _w118._dead:
				continue
			_w118.other = self
			GM.vset(_w118, "v_jscore", GM.vget(_w118, "v_jscore") + 1.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
