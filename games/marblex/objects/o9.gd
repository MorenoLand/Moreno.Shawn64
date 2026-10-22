extends "res://games/marblex/scripts.gd"
func ev_alarm_0():
	x = GM.vb(78.0, "x")
	y = GM.vb(78.0, "y")
	(GM.f_action_move(self, "000010000", 8.0, 0.0))
	(GM.f_instance_change(self, 4.0, 0.0))
