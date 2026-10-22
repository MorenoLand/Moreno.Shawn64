extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_sound_play(163.0))
	(GM.f_motion_add(self, 0.0, 10.0))
	gravity_direction = 270.0
	gravity = 0.3
func ev_destroy():
	(GM.f_instance_create(0.0, 0.0, 129.0))
func ev_col_16():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + (-32.0)), (y + (-32.0)), 233.0))
	for _r81 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + (-32.0)), (y + (-32.0)), 103.0))
	for _r82 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	if (((absf(sprite_index - 121.0) < 0.00001))):
		(GM.f_draw_sprite(121.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(137.0, (-1.0), (x + 0.0), (y + 0.0)))
