extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_destroy():
	if ((((GM.f_random(15.0)) < 1.0))):
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_create((x + 23.0), (y + 0.0), 61.0))
		else:
			(GM.f_instance_create((x + 23.0), (y + 0.0), 63.0))
	GM.score = GM.score + 100.0
func ev_col_40():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1065.0))
	(GM.f_sound_play(21.0))
	(GM.f_instance_destroy(self))
