extends "res://games/galaxy_arcade_2/objects/o1175.gd"
func ev_destroy():
	(GM.f_sound_play(342.0))
func ev_col_1174():
	for _r220 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
