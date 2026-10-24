extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010101010", 4.0, 0.0))
func ev_step():
	if (((((absf(fmod(x, 64.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 96.0) - 0.0) < 0.00001))))):
		(self.script_baddies_direction(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_col_171():
	vspeed = (-vspeed)
	hspeed = (-hspeed)
	(self.script_baddies_direction(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_col_167():
	vspeed = (-vspeed)
	hspeed = (-hspeed)
	(self.script_baddies_direction(0.0, 0.0, 0.0, 0.0, 0.0))
