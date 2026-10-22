extends "res://games/jetzfusion/scripts.gd"
func ev_col_53():
	for _r508 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	(GM.f_sound_play(42.0))
	(GM.f_instance_destroy(self))
