extends "res://games/jetzrampage2/scripts.gd"
func ev_col_0():
	(GM.f_sound_play(68.0))
	GM.G["bombs"] = GM.G["bombs"] + 5.0
	(GM.f_instance_destroy(self))
