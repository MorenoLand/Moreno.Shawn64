extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 2.0, 0.0))
	gravity_direction = 270.0
	gravity = 0.4
func ev_col_87():
	(GM.f_sound_play(4.0))
	for _r55 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
func ev_col_24():
	(GM.f_sound_play(4.0))
	for _r56 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
func ev_col_13():
	(GM.f_sound_play(4.0))
	for _r57 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_sound_play(4.0))
	for _r58 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	(GM.f_sound_play(4.0))
	for _r59 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
