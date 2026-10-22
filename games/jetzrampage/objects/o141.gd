extends "res://games/jetzrampage/scripts.gd"
func ev_step():
	if (not ((((GM.f_sound_isplaying(56.0)))) >= 0.5)):
		(GM.f_room_goto_next())
func ev_other_2():
	GM.G["poop"] = 5.0
	GM.G["lick1"] = 0.0
	GM.G["lick2"] = 0.0
	GM.G["hslevel2"] = 100.0
	GM.G["hslevel1"] = 100.0
	if ((((GM.f_file_exists(("jetz" + ".sav")))))) >= 0.5:
		(GM.f_sound_loop(35.0))
		(GM.f_game_load(("jetz" + ".sav")))
	(GM.f_sound_play(56.0))
