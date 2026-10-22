extends "res://games/jetzrampage2/objects/o219.gd"
func ev_col_16():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1887.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 233.0))
	(GM.f_sound_play(15.0))
	for _r379 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
