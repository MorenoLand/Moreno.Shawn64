extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	(GM.f_sound_loop(9.0))
	(GM.f_sound_stop(7.0))
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
func ev_step():
	x = GM.mouse_x
	y = GM.mouse_y
	if (not ((((GM.f_sound_isplaying(9.0)))) >= 0.5)):
		(GM.f_sound_loop(9.0))
func ev_other_4():
	(GM.f_game_save(("MW3D" + ".sav")))
