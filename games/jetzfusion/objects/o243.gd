extends "res://games/jetzfusion/scripts.gd"
var v_spite_height = 0.0
func ev_create():
	(GM.f_sound_play(50.0))
func ev_step():
	if (not ((((GM.f_sound_isplaying(50.0)))) >= 0.5)):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 240.0))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
		for _r315 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 26.0))
		(GM.f_sound_play(23.0))
		(GM.f_instance_destroy(self))
