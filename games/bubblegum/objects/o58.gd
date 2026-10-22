extends "res://games/bubblegum/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
func ev_col_0():
	(GM.f_sound_play(30.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 59.0))
	(GM.f_instance_destroy(self))
