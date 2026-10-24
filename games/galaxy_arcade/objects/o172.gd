extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010101010", 4.0, 0.0))
func ev_alarm_0():
	(GM.f_instance_change(self, 170.0, 0.0))
func ev_col_171():
	vspeed = (-vspeed)
	hspeed = (-hspeed)
	(self.script_baddies_direction(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_col_167():
	vspeed = (-vspeed)
	hspeed = (-hspeed)
	(self.script_baddies_direction(0.0, 0.0, 0.0, 0.0, 0.0))
