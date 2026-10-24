extends "res://games/fwm/scripts.gd"
func ev_mouse_4():
	(GM.f_sound_replace(5.0, (GM.f_get_open_filename("wav files|*.wav", "")), 1.0, 0.0, 1.0))
