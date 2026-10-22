extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	GM.score = 0.0
	(GM.f_sound_stop(17.0))
	(GM.f_sound_stop(27.0))
	(GM.f_sound_stop(3.0))
	(GM.f_sound_stop(16.0))
	(GM.f_sound_stop(6.0))
	(GM.f_sound_stop(26.0))
	(GM.f_sound_stop(25.0))
	(GM.f_sound_stop(8.0))
	(GM.f_sound_stop(2.0))
	(GM.f_sound_loop(13.0))
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_keypress_27():
	(GM.f_game_restart())
