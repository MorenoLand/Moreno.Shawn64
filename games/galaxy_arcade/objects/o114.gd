extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 6.0, 0.0))
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_change(self, 113.0, 0.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_change(self, 112.0, 0.0))
		else:
			(GM.f_instance_change(self, 111.0, 0.0))
