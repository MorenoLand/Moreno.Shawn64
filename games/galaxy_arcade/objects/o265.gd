extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	x = (GM.mouse_x - 16.0)
	y = (GM.mouse_y - 16.0)
func ev_mouse_0():
	(GM.f_sound_play(0.0))
