extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	if ((absf(GM.G["effects"] - 0.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	(self.script_sound_loops(4.0))
