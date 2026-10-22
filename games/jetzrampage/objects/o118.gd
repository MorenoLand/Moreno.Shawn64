extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_sound_stop(39.0))
	(GM.f_sound_stop(74.0))
	(GM.f_sound_stop(75.0))
	(GM.f_sound_stop(76.0))
	if (not ((((GM.f_sound_isplaying(35.0)))) >= 0.5)):
		(GM.f_sound_loop(35.0))
func ev_other_4():
	(GM.f_game_save(("jetz" + ".sav")))
func ev_keypress_83():
	(GM.f_room_goto(14.0))
func ev_keypress_80():
	(GM.f_room_goto(16.0))
func ev_keypress_73():
	(GM.f_room_goto(12.0))
func ev_keypress_67():
	(GM.f_room_goto(13.0))
func ev_keypress_27():
	(GM.f_game_end())
