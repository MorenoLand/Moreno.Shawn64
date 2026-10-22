extends "res://games/jetzrampage/objects/o17.gd"
func ev_col_108():
	(GM.f_sound_play(15.0))
	for _r105 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
