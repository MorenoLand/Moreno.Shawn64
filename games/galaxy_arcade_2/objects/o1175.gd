extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_destroy():
	(GM.f_instance_create((x + (-5.0)), (y + 0.0), 1191.0))
	(GM.f_sound_play(341.0))
func ev_step():
	if ((((GM.f_place_empty(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", 4.0, 0.0))
	else:
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_1195():
	for _r153 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1170():
	for _r154 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1138():
	for _r155 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
