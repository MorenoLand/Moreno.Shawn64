extends "res://games/bubblegum/scripts.gd"
var v_psound = 0.0
func ev_create():
	v_psound = 1.0
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	(GM.f_sound_stop(24.0))
	(GM.f_sound_play(5.0))
	(GM.f_room_goto_next())
