extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	if ((GM.G["sheild"] == "Shield Level 1")):
		if ((GM.G["zz"] < 499.0)):
			(GM.f_instance_destroy(self))
	if ((GM.G["sheild"] == "Shield Level 2")):
		if ((GM.G["zz"] < 999.0)):
			(GM.f_instance_destroy(self))
	if ((GM.G["sheild"] == "Shield Level 3")):
		(GM.f_instance_destroy(self))
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	if ((GM.G["sheild"] == "Shield Level 2")):
		if ((GM.G["zz"] > 999.0)):
			GM.G["zz"] = GM.G["zz"] - 1000.0
			GM.G["sheild"] = "Shield Level 3"
			(GM.f_sound_play(310.0))
			(GM.f_instance_destroy(self))
	if ((GM.G["sheild"] == "Shield Level 1")):
		if ((GM.G["zz"] > 499.0)):
			GM.G["zz"] = GM.G["zz"] - 500.0
			GM.G["sheild"] = "Shield Level 2"
			(GM.f_sound_play(310.0))
			if ((GM.G["zz"] < 999.0)):
				(GM.f_instance_destroy(self))
