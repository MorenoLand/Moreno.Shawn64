extends "res://games/galaxy_arcade_2/scripts.gd"
var v_psound = 0.0
func ev_create():
	v_psound = 1.0
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	(GM.f_sound_stop(142.0))
	(GM.f_sound_stop(293.0))
	(GM.f_sound_stop(294.0))
	(GM.f_sound_stop(295.0))
	(GM.f_sound_stop(296.0))
	(GM.f_sound_loop(294.0))
