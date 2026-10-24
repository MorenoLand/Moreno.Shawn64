extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_col_1250():
	(GM.f_sound_play(143.0))
	GM.G["pacpoints"] = GM.G["pacpoints"] + 1.0
	(GM.f_instance_destroy(self))
func ev_col_504():
	(GM.f_sound_play(143.0))
	GM.G["pacpoints"] = GM.G["pacpoints"] + 1.0
	(GM.f_instance_destroy(self))
