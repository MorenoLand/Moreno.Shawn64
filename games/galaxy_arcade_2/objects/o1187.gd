extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_path_start(self, 35.0, 2.5, 0.0, 0.0))
func ev_destroy():
	(GM.f_instance_create((x + (-5.0)), (y + 0.0), 1190.0))
	(GM.f_sound_stop(345.0))
func ev_step():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1188.0))
	if ((((GM.f_distance_to_object(self, 1116.0)) < 500.0))):
		if (not ((((GM.f_sound_isplaying(345.0)))) >= 0.5)):
			(GM.f_sound_loop(345.0))
	else:
		(GM.f_sound_stop(345.0))
func ev_col_1175():
	(GM.f_sound_play(341.0))
	for _r163 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1174():
	(GM.f_sound_play(343.0))
func ev_col_1170():
	(GM.f_sound_play(341.0))
	for _r164 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1138():
	(GM.f_sound_play(341.0))
	for _r165 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1137():
	(GM.f_sound_play(341.0))
	for _r166 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1185.0))
	(GM.f_instance_destroy(self))
