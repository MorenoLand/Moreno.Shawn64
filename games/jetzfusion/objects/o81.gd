extends "res://games/jetzfusion/scripts.gd"
func ev_other_7():
	(GM.f_sound_play(36.0))
	for _r109 in range(int((40.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	image_single = 6.0
