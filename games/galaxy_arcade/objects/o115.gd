extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(105.0)) - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000000010", 15.0, 0.0))
	if (((absf((GM.f_instance_number(109.0)) - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000000010", 10.0, 0.0))
func ev_col_116():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
