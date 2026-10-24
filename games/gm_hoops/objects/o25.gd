extends "res://games/gm_hoops/scripts.gd"
func ev_col_11():
	if (not ((((GM.f_sound_isplaying(2.0)))) >= 0.5)):
		(GM.f_sound_play(2.0))
		GM.score = GM.score + 1.0
func ev_col_8():
	if (not ((((GM.f_sound_isplaying(2.0)))) >= 0.5)):
		(GM.f_sound_play(2.0))
		GM.score = GM.score + 1.0
func ev_col_0():
	if (not ((((GM.f_sound_isplaying(2.0)))) >= 0.5)):
		(GM.f_sound_play(2.0))
		GM.score = GM.score + 1.0
