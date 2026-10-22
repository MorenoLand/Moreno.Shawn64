extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_sound_play(43.0))
	for _r105 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 31.0))
