extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	(GM.f_sound_play(298.0))
	GM.view_hborder[int(0.0)] = ((1024.0 / 2.0) - (sprite_width / 2.0))
	GM.view_vborder[int(0.0)] = ((768.0 / 2.0) - (sprite_height / 2.0))
	GM.view_object[int(0.0)] = 1056.0
func ev_other_7():
	GM.view_object[int(0.0)] = 482.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 482.0))
	(GM.f_instance_destroy(self))
