extends "res://games/galaxy_arcade/scripts.gd"
func ev_mouse_0():
	(GM.f_sound_play(6.0))
	await GM.f_show_message("out of order.. come back later")
