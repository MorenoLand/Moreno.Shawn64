extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	y = ((GM.room_height / 2.0) - (sprite_height / 2.0))
func ev_col_482():
	if (((absf((GM.f_instance_number(1113.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 1113.0))
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		(GM.f_sound_play(298.0))
