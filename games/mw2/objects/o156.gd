extends "res://games/mw2/scripts.gd"
func ev_mouse_0():
	(GM.f_mplay_session_end())
	(GM.f_sound_stop(1.0))
	(GM.f_sound_stop(16.0))
	(GM.f_game_restart())
