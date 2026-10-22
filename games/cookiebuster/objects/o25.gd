extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	if (not ((((GM.f_sound_isplaying(8.0)))) >= 0.5)):
		(GM.f_sound_loop(8.0))
func ev_keypress_51():
	(GM.f_game_end())
func ev_keypress_50():
	(GM.f_sound_stop(8.0))
	(GM.f_room_goto(3.0))
func ev_keypress_49():
	GM.G["levely"] = 1.0
	GM.lives = 5.0
	(GM.f_sound_stop(8.0))
	(GM.f_room_goto(0.0))
