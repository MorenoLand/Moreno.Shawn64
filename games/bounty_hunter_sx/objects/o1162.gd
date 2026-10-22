extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	if ((absf(GM.G["myweapon"] - 1.0) < 0.00001)):
		if ((GM.G["zz"] < 499.0)):
			(GM.f_instance_destroy(self))
	if ((absf(GM.G["myweapon"] - 2.0) < 0.00001)):
		if ((GM.G["zz"] < 999.0)):
			(GM.f_instance_destroy(self))
	if ((absf(GM.G["myweapon"] - 3.0) < 0.00001)):
		if ((GM.G["zz"] < 1499.0)):
			(GM.f_instance_destroy(self))
	if ((absf(GM.G["myweapon"] - 4.0) < 0.00001)):
		(GM.f_instance_destroy(self))
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	if ((absf(GM.G["myweapon"] - 3.0) < 0.00001)):
		if ((GM.G["zz"] > 1499.0)):
			GM.G["zz"] = GM.G["zz"] - 1500.0
			GM.G["myweapon"] = 4.0
			(GM.f_sound_play(310.0))
			(GM.f_instance_destroy(self))
	if ((absf(GM.G["myweapon"] - 2.0) < 0.00001)):
		if ((GM.G["zz"] > 999.0)):
			GM.G["zz"] = GM.G["zz"] - 1000.0
			GM.G["myweapon"] = 3.0
			(GM.f_sound_play(310.0))
			if ((GM.G["zz"] < 1499.0)):
				(GM.f_instance_destroy(self))
	if ((absf(GM.G["myweapon"] - 1.0) < 0.00001)):
		if ((GM.G["zz"] > 499.0)):
			GM.G["zz"] = GM.G["zz"] - 500.0
			GM.G["myweapon"] = 2.0
			(GM.f_sound_play(310.0))
			if ((GM.G["zz"] < 999.0)):
				(GM.f_instance_destroy(self))
