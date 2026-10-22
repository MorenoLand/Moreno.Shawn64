extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	(GM.f_sound_play(2.0))
	for _r35 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 28.0))
func ev_other_7():
	(GM.f_instance_destroy(self))
