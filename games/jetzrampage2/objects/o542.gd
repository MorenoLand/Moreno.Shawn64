extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 5.0, 0.0))
	gravity_direction = 270.0
	gravity = 0.4
func ev_step():
	if ((((GM.f_random(25.0)) < 1.0))):
		if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 16.0))))) >= 0.5:
			vspeed = (-(GM.f_random(10.0)))
	hspeed = 5.0
func ev_col_16():
	if (((vspeed > 1.0))):
		vspeed = ((-vspeed) / 2.0)
	else:
		vspeed = 0.0
func ev_other_0():
	y = y + (-10.0)
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
