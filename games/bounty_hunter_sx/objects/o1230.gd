extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	if ((GM.G["zz"] < 5000.0)):
		(GM.f_instance_destroy(self))
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	if ((GM.G["zz"] > 4999.0)):
		GM.G["maphave"] = 1.0
		(GM.f_sound_play(310.0))
		GM.G["zz"] = GM.G["zz"] - 5000.0
		(GM.f_instance_destroy(self))
