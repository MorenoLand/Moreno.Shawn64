extends "res://games/jetzrampage/scripts.gd"
func ev_col_0():
	(GM.f_sound_play(14.0))
	GM.G["bombs"] = GM.G["bombs"] + 3.0
	(GM.f_instance_destroy(self))
