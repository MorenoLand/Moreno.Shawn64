extends "res://games/bubblegum/scripts.gd"
func ev_col_52():
	(GM.f_sound_play(4.0))
	for _r50 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	(GM.f_instance_destroy(self))
