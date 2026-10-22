extends "res://games/bubblegum/scripts.gd"
func ev_create():
	if ((32.0 > 0.0)):
		x = ((GM.f_round((x / 32.0))) * 32.0)
	if ((32.0 > 0.0)):
		y = ((GM.f_round((y / 32.0))) * 32.0)
	(GM.f_action_move(self, "010000000", 2.0, 0.0))
	gravity_direction = 270.0
	gravity = 0.3
func ev_col_13():
	(GM.f_sound_play(4.0))
	for _r60 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_sound_play(4.0))
	for _r61 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
