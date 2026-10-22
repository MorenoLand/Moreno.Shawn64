extends "res://games/marblex/scripts.gd"
func ev_create():
	(GM.f_sound_loop(12.0))
func ev_mouse_4():
	(GM.f_game_end())
func ev_mouse_2():
	(GM.f_room_goto(10.0))
func ev_other_4():
	GM.lives = 5.0
	GM.score = 0.0
