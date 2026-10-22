extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.3
func ev_col_16():
	(GM.f_sound_play(84.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 134.0))
	for _r83 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
