extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	x = (-sprite_width)
	(GM.f_action_move(self, "000001000", 5.0, 0.0))
func ev_alarm_0():
	(GM.f_action_move(self, "000100000", 5.0, 0.0))
func ev_step():
	if (((x > GM.room_width))):
		(GM.f_instance_destroy(self))
