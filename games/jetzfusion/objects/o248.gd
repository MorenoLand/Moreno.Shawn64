extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 4.0, 0.0))
func ev_other_7():
	GM.G["jhealth"] = GM.G["jhealth"] - 25.0
	if ((GM.G["jhealth"] < 0.0)):
		GM.G["jhealth"] = 0.0
	(GM.f_instance_destroy(self))
