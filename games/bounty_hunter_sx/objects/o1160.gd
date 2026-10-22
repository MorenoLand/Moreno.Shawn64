extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_0():
	if ((GM.G["fuel"] < 100.0)):
		if ((GM.G["zz"] > 0.0)):
			(GM.f_sound_play(308.0))
			GM.G["fuel"] = GM.G["fuel"] + 1.0
			GM.G["zz"] = GM.G["zz"] - 1.0
			if ((GM.G["fuel"] > 25.0)):
				GM.G["sound1"] = 1.0
	else:
		(GM.f_instance_destroy(self))
