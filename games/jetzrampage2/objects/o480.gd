extends "res://games/jetzrampage2/scripts.gd"
func ev_col_0():
	(GM.f_sound_play(68.0))
	if (((GM.G["poo"] > 10.0))):
		GM.G["poo"] = GM.G["poo"] + (-10.0)
	else:
		GM.G["poo"] = 0.0
	(GM.f_instance_destroy(self))
