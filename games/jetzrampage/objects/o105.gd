extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	GM.score = GM.score + 3.0
	GM.G["lives"] = GM.G["lives"] + 1.0
	if ((80.0 > 0.0)):
		x = ((GM.f_round((x / 80.0))) * 80.0)
	if ((80.0 > 0.0)):
		y = ((GM.f_round((y / 80.0))) * 80.0)
	(GM.f_action_move(self, "000000010", 4.0, 0.0))
func ev_other_7():
	(GM.f_instance_destroy(self))
