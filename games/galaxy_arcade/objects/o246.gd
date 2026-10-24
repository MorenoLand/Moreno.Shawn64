extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_move_random(self, 0.0, 0.0))
	if ((32.0 > 0.0)):
		x = ((GM.f_round((x / 32.0))) * 32.0)
	if ((32.0 > 0.0)):
		y = ((GM.f_round((y / 32.0))) * 32.0)
	alarm[int(0.0)] = 110.0
func ev_alarm_0():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_change(self, 242.0, 0.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_change(self, 244.0, 0.0))
		else:
			(GM.f_instance_change(self, 243.0, 0.0))
func ev_step():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-4.0))))))) >= 0.5:
		(GM.f_action_move(self, "000000010", 4.0, 0.0))
	else:
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_246():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_change(self, 242.0, 0.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_change(self, 244.0, 0.0))
		else:
			(GM.f_instance_change(self, 243.0, 0.0))
func ev_col_245():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_change(self, 242.0, 0.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_change(self, 244.0, 0.0))
		else:
			(GM.f_instance_change(self, 243.0, 0.0))
func ev_col_180():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_instance_change(self, 242.0, 0.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_instance_change(self, 244.0, 0.0))
		else:
			(GM.f_instance_change(self, 243.0, 0.0))
