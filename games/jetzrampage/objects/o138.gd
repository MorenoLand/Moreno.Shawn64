extends "res://games/jetzrampage/scripts.gd"
func ev_col_16():
	(GM.f_sound_play(17.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 135.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
	for _r90 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
