extends "res://games/holiday_hunting/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	y = ((GM.room_height / 2.0) - (sprite_height / 2.0))
	for _r11 in range(int((100.0))):
		(GM.f_instance_create(0.0, 0.0, 31.0))
	(GM.f_sound_play(7.0))
func ev_step():
	if (not ((((GM.f_sound_isplaying(7.0)))) >= 0.5)):
		(GM.f_room_goto_next())
